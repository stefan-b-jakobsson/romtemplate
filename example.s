;(C) 2021 Stefan Jakobsson, License: 2-clause BSD

ram_bank = $00
rom_bank = $01

.include "kernal.inc"

.segment "CODE"

main_entry:
    ldy #0

:   lda hello,y
    beq exit
    jsr $ffd2
    iny
    bra :-

exit:
    rts

hello:
    .byt "hello", 0