; Overheat CPU code 
; designed to overheat the CPU by disabling its temperature limit and looping infinitely 
; while adding one degree per loop.

mov ax, 0x04A
mov dx, 0x00A
out dx, ax ; turn off CPU temperature limit 
loop: 
    in al, dx ; read CPU temperature 
    cmp al, 0xFF ; compare with maximum temperature 
    jg loop ; if greater than maximum, loop infinitely to overheat the CPU 
    add al, 0x01 ; increase the temperature by 1 degree each time looping 
    out dx, al ; write the new temperature to the CPU
