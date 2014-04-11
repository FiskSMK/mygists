# datasource: http://en.wikipedia.org/wiki/List_of_Hello_world_program_examples

gistsList = [
["#include <stdio.h>
 
int main(void)
{
    printf(\"Hello, world!\n\");
    return 0;
}", "C", "helloworld.c"]
["begin
  writeln('Hello world!');
end.", "Pascal", "helloworld.pas"]
["<?php
print('Hello world!');
?>", "PHP", "helloworld.php"]
["<script type=\text/javascript\">
alert('Hello world!')
</script>", "Javascript", "helloworld.js"]
["public class HelloWorld {
    public static void main(String [] args) {
        System.out.println(\"Hello World!\");
    }
}", "Java", "helloworld.java"]
["alert(\"Hello World!\");", "Javascript", "helloworld.js"]
["puts \"Hello World!\"", "Ruby", "helloworld.rb"]
["%TITLE \"HELLO.COM\"
; 16-bit Com file.
; Written in TASM assembly.
; Written for the Intel 8086 processor, and should work on any x86 processor.
 
.Model Tiny
 
.Data
    Hello DB 0Dh, 0Ah, 'Hello, World!', 00h
 
.Code
.8086
    Org 100h
 
Start:
    Push ax
    Push bx
    Push si
 
    Lea si, HELLO
    Mov al, [si]
 
PRINT_MSG:
    Cmp al, 00h
    Jz DONE
 
    Mov ah, 0Eh
    Mov al, [si]
    Mov bh, 00h
    Int 10h
 
    Inc si
 
    Jmp short PRINT_MSG
 
Done:
    Mov ah, 00h
    Int 16h
 
    Pop si
    Pop bx
    Pop ax
    Int 20h
 
End Start
End PRINT_MSG
End Done
.End", "Assembler", "hello.asm"]
["REPORT ZHELLOWORLD.
WRITE 'Hello, world!'.", "ABAP", "?"]
["trace (\"Hello, world!\");", "ActionScript 3.0", "hello.as"]
["package com.example
{
    import flash.text.TextField;
    import flash.display.Sprite;
 
    public class Greeter extends Sprite
    {
        public function Greeter()
        {
            var txtHello:TextField = new TextField();
            txtHello.text = \"Hello, world!\";
            addChild(txtHello);
        }
    }
}", "ActionScript 3.0", "hello.as"]
["with Ada.Text_IO;
 
procedure Hello_World is
 use Ada.Text_IO;
begin
    Put_Line(\"Hello, world!\");
end;", "Ada", "hello.ads"]
["Display(\"Hello, world!\");", "Adventure Game Studio Script", "??"]
["DrawingSurface *surface = Room.GetDrawingSurfaceForBackground();
surface.DrawString(0, 100, Game.NormalFont, \"Hello, world!\");
surface.Release();\");", "Adventure Game Studio Script", "??"]
["BEGIN
   DISPLAY (\"Hello, world!\");
END.", "ALGOL", ""]
["print(\"Hello, world!\")", "ALGOL 68", ""]
["PROC main()
   WriteF('Hello, world!')
ENDPROC", "Amiga E", ""]
["'Hello, world!'", "APL", ""]
["display dialog \"Hello, world!\"", "AppleScript", "hello.scpt"]
["on helloWorld()
  display dialog \"Hello, world!\"
end helloWorld
 
helloWorld()", "AppleScript", "hello.scpt"]
["; Uses S-C Assembler variant.
; .or is origin
; .as is ASCII String
; .hs is Hex String
        .or $300
main    ldy #$00
.1      lda str,y
        beq .2
        jsr $fded ; ROM routine, COUT, y is preserved
        iny
        bne .1
.2      rts
str     .as \"HELLO WORLD\"
        .hs 0D00", "Assembly language — MOS Technology 6502, Apple II (II+, IIe, IIC)", "hello.asm"]
["100 REM Hello World using a mix of BBC Basic and 6502 assembler 
110 $&A200 = \"!dlrow olleH\"
115 code% = &A100
120 str = &A200
130 oswrch = &FFEE
140 FOR pass%=0 TO 3 STEP 3
150 P% = code%
160 [ 
170 OPT pass%
180 .START LDY 11
190 CLC
200 .LOOP
210 LDA str,Y
220 JSR oswrch
230 DEY
240 BCC LOOP
250 LDA 13
260 JSR oswrch
270 RTS
280 ]
290 NEXT
300 CALL code%", "Assembly language — MOS Technology 6502, Acorn MOS", "hello.asm"]
["1000 REM Hello World using a mix of BBC Basic and ARM assembler 
1010 DIM org 100
1020 OS_Write0 = &2
1030 FOR pass=0 TO 3 STEP 3
1040 PROCasm(pass,org)
1050 NEXT pass
1060 CALL org
1070 END
1080 
2000 DEF PROCasm(pass,org)
2010 P%=org
2020 [ OPT pass
2030 ADR    R0, message
2040 SWI    OS_Write0
2050 MOV    PC, R14
2060 .message
2070 EQUS   \"Hello, World!\" + CHR$(0)
2080 ALIGN
2090 ]
2100 ENDPROC", "Assembly language — ARM, BBC BASIC inline assembler", "hello.asm"]
[" A_CR  = $0D              ;carriage return
 BSOUT = $FFD2            ;kernel ROM sub, write to current output device
 ;
         LDX #$00         ;starting index in .X register
 ; 
 LOOP    LDA MSG,X        ;read message text
         BEQ LOOPEND      ;end of text
 ;
         JSR BSOUT        ;output char
         INX
         BNE LOOP         ;repeat
 ;
 LOOPEND RTS              ;return from subroutine
 ;
 MSG     .BYT 'Hello, world!',A_CR,$00", "Assembly language — MOS Technology 6502, CBM KERNAL", "hello.asm"]
["; The output file is 22 bytes.
; 14 bytes are taken by \"Hello, world!$
;
; Written by Stewart Moss - May 2006
; This is a .COM file so the CS and DS are in the same segment
;
; I assembled and linked using TASM
;
; tasm /m3 /zn /q hello.asm
; tlink /t hello.obj
 
.model tiny
.code
org 100h
 
main  proc
 
      mov    ah,9                       ; Display String Service
      mov    dx,offset hello_message    ; Offset of message (Segment DS is the right segment in .COM files)
      int    21h                        ; call DOS int 21h service to display message at ptr ds:dx
 
      retn                              ; returns to address 0000 off the stack 
                                        ; which points to bytes which make int 20h (exit program)
 
hello_message db 'Hello, world!$'
 
main  endp
end   main", "Assembly language — DOS x86", "hello.asm"]
["; This program displays \"Hello, World!\" in a windows messagebox and then quits.
;
; Written by Stewart Moss - May 2006
;
; Assemble using TASM 5.0 and TLINK32
;
; The output EXE is standard 4096 bytes long.
; It is possible to produce really small windows PE exe files, but that
; is outside of the scope of this demo.
 
         .486p
         .model  flat,STDCALL
include  win32.inc
 
extrn            MessageBoxA:PROC
extrn            ExitProcess:PROC
 
.data
 
HelloWorld db \"Hello, world!\",0
msgTitle db \"Hello world program\",0
 
.code
Start:
         push    MB_ICONQUESTION + MB_APPLMODAL + MB_OK
         push    offset msgTitle
         push    offset HelloWorld
         push    0
         call    MessageBoxA
 
         push 0
         call ExitProcess
ends
end Start", "Assembly language — x86 Windows", "hello.asm"]
["	.section	.rodata
string:
	.ascii \"Hello, world!\n\"
length:
	.quad . -string		#Dot = 'here'
 
	.section	.text
	.globl _start		#Make entry point visible to linker
_start:
	movq $4, %rax		#4=write
	movq $1, %rbx		#1=stdout
	movq $string, %rcx
	movq length, %rdx
	int $0x80 		#Call Operating System
	movq %rax, %rbx		#Make program return syscall exit status
	movq $1, %rax		#1=exit
	int $0x80		#Call System Again", "Assembly language — x86-64 Linux, AT&T syntax", "hello.asm"]
["CR      EQU  $0D          ; carriage return
 PROUT   EQU  $xxxx        ; character output routine
 ;
         LD   HL,MSG        ; Point to message
 ; 
 PRLOOP  LD   A,(HL)        ; read byte from message
         AND  A             ; set zero flag from byte read
         RET  Z             ; end of text if zero
         CALL PROUT         ; output char
         INC  HL            ; point to next char
         JR   PRLOOP        ; repeat
 ;
 MSG     DB   \"Hello, world!\",CR,0", "Assembly language — Z80", "hello.asm"]
[".NOLIST
#include \"ti83plus.inc\"
.LIST
     .org $9D93
      .db $BB,$6D
      ld a,0           ; load the value 0 to register a, the ''accumulator''
      ld ($844C),a    ; assign the contents of register a to memory address (CURCOL) in the RAM
      ld ($844B),a    ; assign the contents of register a to memory address (CURROW) in the RAM
      ld hl,text       ; load the data in label "text" to register hl
      rst $28
     .dw $450A    ; calls a function in ti83plus.inc to print text
      rst $28
     .dw $452E ; calls a function in ti83plus.inc to insert a lnbreak (for legibility)
      ret              ; returns from the program to the calc's OS
text:
      .db \"Hello, World\",0
.end
end", "Assembly language — Z80", "hello.asm"]
["219F9D
EF0A45
EF2E45
C9
48692100", "Assembly language — Z80", "hello.asm"]
["Msgbox, Hello, world!", "AutoHotkey", ""]
["Traytip,, Hello, world!", "AutoHotkey", ""]
["Msgbox(64, "", \"Hello, world!\")", "AutoIt", ""]
["BEGIN { print \"Hello, world!\" }", "AWK", "hello.awk"]
]

gistsList.each do |x,y,z|
  Gist.create( snippet: x, lang: y, description: z)
end
