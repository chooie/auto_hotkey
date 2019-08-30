; NOTE: It's best to use SharpKeys to rebind CapsLock to Control:
; https://github.com/randyrants/sharpkeys/releases

; Emacs Key bindings across the OS
Ctrl & p::Send {Up}
Ctrl & n::Send {Down}
Ctrl & b::Send {Left}
Ctrl & f::Send {Right}
Ctrl & a::Send {Home}
Ctrl & e::Send {End}
Ctrl & d::Send {Delete}
Ctrl & h::Send {Backspace}
Ctrl & k::
  Send {Shift Down}{End}{Delete}{Shift Up}
Return

; Use the Alt key for things like saving and copying
Alt & s::
  Send {Ctrl Down}s{Ctrl Up}
Return

Alt & c::
  Send {Ctrl Down}c{Ctrl Up}
Return

Alt & v::
  Send {Ctrl Down}v{Ctrl Up}
Return

Alt & z::
  Send {Ctrl Down}z{Ctrl Up}
Return

Alt & f::
  Send {Ctrl Down}f{Ctrl Up}
Return

; The Control Key Acts both as a modifier and an escape key (if it's tapped 
; quickly)
~Ctrl::
  cDown := A_TickCount
Return

~Ctrl Up::
  if ((A_TickCount - cDown) < 80) {
    Send {Blind}{Ctrl Up}{Esc}
  }
Return
