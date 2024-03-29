﻿;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [ 간단 autoHokey 문법 정리 ]
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 
; 키 지정 방법: https://autohotkey.com/docs/Hotkeys.htm
; 전체 키 목록: https://autohotkey.com/docs/KeyList.htm
 
; #: Win
; !: Alt
; ^: Ctrl
; +: Shift
; &: 두개의 키 조합
 
; send는 한문자 일일이 타이핑하게 되고 (속도가 느리고)
; sendinput은 복사하여 붙여넣는 스피드로 (속도가 빠르다)
 
; { } 안에는 특정 키를 누르게 되며, { } 없는 것은 문자열로 인식하게 되어 타이핑 쳐지게 된다.

; 윈도우 시작 시 실행 : shell:startup 에 넣기.

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - AutoHotKey Reload : Window + y
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
#y::Reload

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - PrintSreen Off
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PrintScreen::Return

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - Shift + Esc : ~
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
+Esc::Send ~

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - 기본 capslock기능을 꺼둠
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SetCapsLockState, AlwaysOff
*CapsLock::Return
~*CapsLock up::SetCapsLockState, Off

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - capslock + f 키로 기본 capslock를 키고 끔
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;Capslock & f::Capslock
; CapsLock::Send, {LWin Down}{Space}{LWin Up}

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - 한영키를 누르고 있을경우
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
*vk15::Return
RAlt::Return
#If GetKeyState("vk15","P") || GetKeyState("RAlt","P")

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - 방향키
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
i::Send {Up}
j::Send {Left}
k::Send {Down}
l::Send {Right}

^i:: Send ^{Up}
^j::Send ^{Left}
^k::Send ^{Down}
^l::Send ^{Right}

+i:: Send +{Up}
+j::Send +{Left}
+k::Send +{Down}
+l::Send +{Right}

+^i:: Send +^{Up}
+^j::Send +^{Left}
+^k::Send +^{Down}
+^l::Send +^{Right}
; ;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ; - 커맨드
; ;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
u::Home
o::End

#If

Capslock::Send, {vk15sc138}

<!BS:: Send {Del}



