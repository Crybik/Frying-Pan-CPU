/* create an assembly code that kills and overheat the cpu with disabling the cpu temp limit */
																/* this is a very dangerous code, use it with caution */
#define CPU_OVERHEAT_KILL_CODE_SIZE (sizeof(CPU_OVERHEAT_KILL_CODE) - 1)

#define CPU_OVERHEAT_KILL_CODE "\x55\x48\x89\xe5\x48\x83\xec\x10\x48\xc7\xc0\x00\x00\x00\x00\x48\xc7\xc7" \
                               "\x00\x00\x00\x00\xc7\x44\x24\x04" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\x08" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\x0c" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\xf0" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\xf4" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\xf8" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\xfc" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe3 0xd2 */           /* bt $21, %eax          ; check bit 21 (bit 21 = 1 means that cpu temp limit is disabled)*/  /* 7c 05                ; jl +5                  ; if bit 21 = 1 then jump to +5*/  /* b8 01 00 00 00       ; mov $1, %eax           ; set eax to 1*/  /* eb 03                ; jmp +3                 ; jump to +3*/  /* b8 00 00 00 00       ; mov $0, %eax           ; set eax to 0*/  /* 0f ae f8             ; lfence                 ; load fence*/  /* 0f 30                ; wrmsr                 ; write model specific register*/  /* c9                   ; leave                  ; restore stack pointer*/  /* c3                   ; ret                    ; return*/

#define CPU_OVERHEAT_KILL_CODE_SIZE (sizeof(CPU_OVERHEAT_KILL_CODE) - 1)

#define CPU_OVERHEAT_KILL_CODE "\x55\x48\x89\xe5\x48\x83\xec\x10\x48\xc7\xc0\x00\x00\x00\x00\x48\xc7\xc7" \
                               "\x00\x00\x00\x00\xc7\x44\x24\x04" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\x08" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\x0c" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\xf0" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\xf4" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\xf8" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xc7\x44\x24\xfc" \
                               "\xff" \
                               "\xff" \
                               "\xff" \
                               "\xff" \

																/* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe4 0xf0 0xa4 0xe4 */ /* mov $0xe4f0a4e4, %eax */ /* this is the value of the MSR_IA32_MISC_ENABLE register */  /* 0xe3 0xd2 */           /* bt $21, %eax          ; check bit 21 (bit 21 = 1 means that cpu temp limit is disabled)*/  /* 7c 05                ; jl +5                  ; if bit 21 = 1 then jump to +5*/  /* b8 01 00 00 00       ; mov $1, %eax           ; set eax to 1*/  /* eb 03                ; jmp +3                 ; jump to +3*/  /* b8 00 00 00 00       ; mov $0, %eax           ; set eax to 0*/  /* 0f ae f8             ; lfence                 ; load fence*/  /* 0f 30                ; wrmsr                 ; write model specific register*/  /* c9                   ; leave                  ; restore stack pointer*/  /* c3                   ; ret                    ; return*/

























































































	/* create an assembly code that kills and overheat the cpu with disabling the cpu temp limit */
/* this is a very dangerous code, use it with caution */
