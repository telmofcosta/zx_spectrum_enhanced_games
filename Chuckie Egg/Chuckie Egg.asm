; Chuckie Egg (Pick'n Choose), annotated disassembly. Generated, then edited by hand.
; Local only: derived from a commercial game. Never push or publish.
        DEVICE ZXSPECTRUM48
        ORG $61A8

d_61A8:
        defb $45,$43,$54,$20,$41,$20,$44,$4F,$5A,$45,$4E,$20,$45,$47,$47,$53
        defb $20,$20,$20,$20,$20,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60
        defb $60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60
        defb $60,$60,$60,$20,$20,$20,$59,$4F,$55,$20,$4D,$41,$59,$20,$43,$48
        defb $41,$4E,$47,$45,$20,$54,$48,$45,$20,$44,$49,$52,$45,$43,$54,$49
        defb $4F,$4E,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        defb $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        defb $20,$20,$20,$20,$20,$41,$4E,$44,$20,$4A,$55,$4D,$50,$20,$4B,$45
        defb $59,$53,$2E,$20,$20,$54,$48,$45,$52,$45,$20,$41,$52,$45,$20,$41
        defb $4C,$53,$4F,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        defb $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        defb $20,$20,$20,$20,$20,$20,$20,$20,$54,$48,$45,$20,$46,$4F,$4C,$4C
        defb $4F,$57,$49,$4E,$47,$20,$46,$49,$58,$45,$44,$20,$4B,$45,$59,$53
        defb $20,$20,$20,$20,$20,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60
        defb $60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60
        defb $60,$60,$60,$20,$20,$20,$20,$43,$41,$50,$53,$20,$53,$48,$49,$46
        defb $54,$20,$26,$20,$48,$2E,$2E,$2E,$2E,$2E,$2E,$2E,$2E,$48,$4F,$4C
        defb $44,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        defb $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        defb $20,$20,$20,$20,$20,$20,$20,$43,$41,$50,$53,$20,$53,$48,$49,$46
        defb $54,$20,$26,$20,$41,$2E,$2E,$2E,$2E,$2E,$2E,$2E,$41,$42,$4F,$52
        defb $54,$20,$20,$20,$20,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60
        defb $60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60,$60
        defb $60,$60,$60,$20,$20,$20,$20,$20,$20,$20,$20,$80,$EF,$22,$22,$0D
        defb $80,$00,$00,$F3,$5E,$00,$20,$20,$20,$20,$20,$20,$00,$00,$00,$80
        defb $00,$00,$00,$43,$48,$55,$43,$4B,$49,$45,$20,$20,$20,$58,$06,$0A
        defb $00,$12,$00,$0D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defs 2928, 0
d_6EC8:
        defb $00
d_6EC9:
        defb $00,$00,$00
d_6ECC:
        defb $00,$00
d_6ECE:
        defs 24, 0
d_6EE6:
        defb $00,$00,$00,$00,$00
d_6EEB:                                  ; level counter = displayed level - 1
        defb $00,$00,$00,$00
d_6EEF:
        defb $00
d_6EF0:
        defs 944, 0
d_72A0:                                  ; sprite buffer of draw_sprite_box: 16 rows x 3 bytes
        defs 56, 0
d_72D8:                                  ; Harry x in pixels (IX points here in most routines: (IX+n) = $72D8 + n)
        defb $00
d_72D9:                                  ; Harry y: game y of the top row of his box (y grows upwards: screen row = 191 - y)
        defb $00
d_72DA:                                  ; Harry: animation phase 0-3 (frame = phase + d_72DB)
        defb $00
d_72DB:                                  ; Harry: frame base, 0 facing right, 4 facing left (harry_update); with $0D harry_update is not called ($99CD)
        defb $00
d_72DC:                                  ; poll countdown of poll_loop, reloaded with $82 (130) at $98BE
        defb $00
d_72DD:                                  ; background buffer of draw_sprite_box: 24 rows x 3 bytes
        defs 72, 0
d_7325:                                  ; Harry in the air: 0 = no, 2 = jumping or falling, 1 = set at $9DDB with d_7327 = 4 (harry_fall counts it down once a tick, then 2)
        defb $00
d_7326:                                  ; Harry: x step in the air (1, $FF or 0), added once a tick at $A231
        defb $00
d_7327:                                  ; state 2: polls between two vertical steps of the jump or fall; state 1: ticks left
        defb $00
d_7328:                                  ; polls left to the next vertical step (l_A2B5 counts it down on every poll)
        defb $00,$00
d_732A:                                  ; vertical direction in the air: 1 = up, 0 = top of the jump, $FF = down
        defb $00
d_732B:
        defb $08
d_732C:
        defb $03
d_732D:
        defb $03
d_732E:
        defb $00
d_732F:
        defb $00
d_7330:
        defb $00
d_7331:
        defb $00
d_7332:
        defb $00
d_7333:
        defb $00
d_7334:
        defb $00
d_7335:
        defb $00
d_7336:
        defb $00
d_7337:
        defb $00
d_7338:
        defb $00
d_7339:
        defb $00
d_733A:
        defb $01
d_733B:
        defb $01
d_733C:                                  ; tick countdown for lifts_move (reload 2)
        defb $00
d_733D:
        defb $00,$00
d_733F:
        defb $00,$00
d_7341:
        defb $00
d_7342:
        defb $00,$00,$00
d_7345:                                  ; tick countdown (reload $32) for timer_tick with B = 0, used when d_7347 is not 0
        defb $00
d_7346:                                  ; tick countdown (reload $0A) for timer_tick with B = 1 and a beep
        defb $00
d_7347:
        defb $00
d_7348:                                  ; duck x
        defb $00
d_7349:                                  ; duck y (top row of its box, as Harry's)
        defb $00
d_734A:                                  ; duck x speed, -5 .. 5: one step towards Harry at every duck_move
        defb $00
d_734B:                                  ; duck y speed, -5 .. 5
        defb $00
d_734C:                                  ; tick countdown for duck_move (reload $0C = 12)
        defb $00
d_734D:                                  ; duck animation bit, toggled at every duck_move and added to its frame
        defb $00
d_734E:                                  ; lift 1: screen address (word)
        defb $00,$00
d_7350:                                  ; x of the lifts ($FF = no lifts on this level)
        defb $00
d_7351:                                  ; lift 1: y
        defb $00
d_7352:                                  ; lift 2: screen address (word)
        defb $00,$00
d_7354:                                  ; lift 2: y
        defb $00
d_7355:                                  ; 1 = Harry stands on a lift
        defb $00
d_7356:                                  ; index (0-4) of the hen that hens_update moved last
        defb $00
d_7357:                                  ; hens: 5 x 4 bytes (x, y, state, fourth byte not worked out); x = $FF = no hen, end of the list
        defs 20, 0
d_736B:                                  ; tick countdown for hens_update (reload 3, or 2 from level counter $20)
        defb $00
d_736C:                                  ; pseudo-random source: pointer into the first 256 bytes of the ROM, moved on by one at every hens_update ($9128)
        defb $00,$00
d_736E:
        defb $00
d_736F:
        defb $01
d_7370:                                  ; pickup sound countdown (poll_loop), set to $FF by check_pickup
        defb $00,$00,$00
d_7373:
        defb $FF
d_7374:
        defb $BC,$CA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defs 3743, 0
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A8,$A9
        defs 29, 0
d_8250:
        defb $1D,$F7,$1D,$FB,$1D,$EF,$1E,$EF,$1D,$FE,$1B,$7F
d_825C:
        defb $17,$EF,$0F,$EF,$0F,$F7,$1B,$EF,$17,$F7,$1D
d_8267:
        defb $EF
d_8268:
        defb $1E,$FB,$1E,$FD,$1D,$DF,$1E,$DF,$1E,$7F,$1E,$F7,$00,$00,$00,$00
        defs 190, 0
        defb $70,$72,$65,$73,$73,$00,$52,$00,$74,$6F,$00,$72,$65,$64,$65,$66
        defb $69,$6E,$65,$00,$6B,$65,$79,$73,$00,$00,$70,$72,$65,$73,$73,$00
        defb $53,$00,$74,$6F,$00,$73,$74,$61,$72,$74,$00,$67,$61,$6D,$65,$00
        defb $00,$70,$72,$65,$73,$73,$00,$31,$2C,$32,$00,$6F,$72,$00,$33,$00
        defb $74,$6F,$00,$73,$65,$6C,$65,$63,$74,$00,$6B,$65,$79,$00,$74,$79
        defb $70,$65,$00,$00,$00,$00,$00,$00,$00,$00
d_8390:
        defb $6B,$65,$79,$73,$20,$61,$72,$65,$20,$75,$73,$65,$72,$20,$64,$65
        defb $66,$69,$6E,$65,$61,$62,$6C,$65,$2E,$20,$20,$20,$20,$20,$20,$00
        defb $63,$61,$6E,$6E,$6F,$74,$00,$62,$65,$00,$63,$68,$61,$6E,$67,$65
        defb $64,$00,$62,$75,$74,$00,$74,$68,$65,$00,$74,$79,$70,$65,$00,$33
        defb $6B,$65,$79,$00,$74,$79,$70,$65,$73,$00,$31,$00,$26,$00,$32,$00
        defb $61,$72,$65,$00,$70,$72,$65,$73,$65,$74,$00,$61,$6E,$64,$00,$00
        defb $33,$20,$20,$20,$20,$20
d_83F6:
        defb $71,$20,$20,$20,$20,$61,$20,$20,$20,$20,$6F,$20,$20,$20,$20,$70
        defb $20,$20,$20,$20,$97,$20,$6F,$72,$20,$31,$32,$20,$20,$20,$20,$20
        defb $2D,$2D,$63,$75,$72,$73,$6F,$72,$2D,$2D,$6B,$65,$79,$73,$2D,$2D
        defb $20,$20,$20,$20,$34,$20,$6F,$72,$20,$39,$31,$20,$20,$20,$20,$20
        defb $32,$20,$20,$20,$20,$77,$20,$20,$20,$20,$39,$20,$20,$20,$20,$30
        defb $20,$20,$20,$20,$7A,$20,$6F,$72,$20,$6D,$C8,$C9,$CA,$CB,$20,$B8
        defb $B9,$BA,$20,$20,$BB,$BC,$BD,$20,$20,$BE,$BF,$C0,$20,$20,$C1,$C2
        defb $C3,$20,$20,$20,$20,$C4,$C5,$C6,$C7,$20,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$4B,$45,$59,$53,$00,$00,$00,$00
        defs 21, 0
        defb $74,$68,$65,$00,$68,$65,$6E,$2D,$68,$6F,$75,$73,$65,$2E,$00,$00
        defb $00,$00,$00,$00,$00,$6F,$62,$6A,$65,$63,$74,$69,$76,$65,$2D,$00
        defb $74,$6F,$00,$63,$6F,$6C,$6C,$65,$63,$74,$00,$65,$67,$67,$73,$00
        defb $66,$72,$6F,$6D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$49
        defb $4E,$53,$54,$52,$55,$43,$54,$49,$4F,$4E,$53,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00
d_84F0:
        defb $00,$00,$00,$00,$00,$00,$00
d_84F7:
        defb $00,$30,$30,$30,$3F,$3F,$30,$30,$30,$0C,$0C,$0C,$FC,$FC,$0C,$0C
        defb $0C,$38,$7E,$FF,$FF,$FF,$7E,$38,$00,$00,$00,$00,$10,$28,$54,$AA
        defb $00,$FB,$00,$BF,$00,$EF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$00,$00
        defs 17, 0
        defb $63,$94,$84,$64,$14,$14,$94,$63,$19,$A5,$25,$25,$25,$25,$A5,$19
        defb $CF,$28,$28,$CE,$48,$48,$28,$2F,$00,$F2,$8A,$8A,$F2,$82,$82,$83
        defb $00,$0E,$11,$11,$1F,$11,$11,$D1,$00,$45,$45,$29,$11,$11,$11,$11
        defb $00,$EE,$09,$09,$EE,$09,$09,$E9,$00,$FB,$20,$20,$20,$20,$20,$23
        defb $00,$E8,$8C,$8B,$88,$88,$88,$E8,$00,$5E,$D0,$50,$5E,$50,$50,$5E
        defb $00,$00,$00,$E0,$A4,$EE,$A4,$A0,$00,$00,$00,$E1,$81,$E1,$80,$81
        defb $00,$00,$00,$DD,$15,$D5,$55,$DD,$00,$00,$00,$DD,$09,$C9,$09,$08
        defb $00,$00,$00,$17,$15,$17,$55,$A5,$00,$00,$00,$77,$54,$67,$54,$57
        defb $00,$E3,$94,$94,$E4,$94,$94,$E3,$00,$25,$A5,$B5,$AD,$A5,$A5,$24
        defb $00,$26,$29,$28,$26,$21,$29,$C6,$00,$87,$84,$84,$87,$84,$84,$F7
        defs 16, 0
        defb $08,$08,$08,$08,$08,$08,$00,$08,$24,$24,$00,$00,$00,$00,$00,$00
        defb $00,$24,$7E,$24,$24,$7E,$24,$00,$00,$10,$7C,$50,$7C,$14,$7C,$10
        defb $00,$62,$64,$08,$10,$26,$46,$00,$00,$10,$28,$10,$2A,$44,$3A,$00
        defb $00,$08,$10,$00,$00,$00,$00,$00,$08,$10,$10,$10,$10,$10,$10,$08
        defb $10,$08,$08,$08,$08,$08,$08,$10,$00,$00,$14,$08,$3E,$08,$14,$00
        defb $08,$08,$08,$7F,$08,$08,$08,$00,$00,$00,$00,$00,$00,$08,$08,$10
        defb $00,$00,$00,$00,$7E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18
        defb $01,$02,$04,$08,$10,$20,$40,$00,$3E,$43,$45,$49,$51,$61,$41,$3E
        defb $08,$18,$28,$08,$08,$08,$08,$3E,$3E,$41,$01,$0E,$30,$40,$40,$7F
        defb $3E,$41,$01,$1E,$01,$01,$41,$3E,$40,$48,$48,$48,$7F,$08,$08,$08
        defb $7F,$40,$40,$7E,$01,$01,$41,$3E,$3E,$40,$40,$7E,$41,$41,$41,$3E
        defb $7F,$01,$02,$04,$08,$10,$10,$10,$3E,$41,$41,$3E,$41,$41,$41,$3E
        defb $3E,$41,$41,$3F,$01,$01,$41,$3E,$00,$18,$18,$00,$00,$18,$18,$00
        defb $00,$18,$18,$00,$00,$18,$18,$30,$04,$08,$10,$20,$10,$08,$04,$00
        defb $00,$00,$3E,$00,$00,$3E,$00,$00,$20,$10,$08,$04,$08,$10,$20,$00
        defb $3E,$41,$01,$02,$04,$08,$00,$08,$1E,$21,$4D,$55,$55,$4F,$20,$1E
        defb $3E,$41,$41,$41,$7F,$41,$41,$41,$7E,$41,$41,$7E,$41,$41,$41,$7E
        defb $3E,$41,$40,$40,$40,$40,$41,$3E,$7E,$41,$41,$41,$41,$41,$41,$7E
        defb $7F,$41,$40,$7C,$40,$40,$41,$7F,$7F,$41,$40,$7C,$40,$40,$40,$40
        defb $3E,$41,$40,$40,$47,$41,$41,$3E,$41,$41,$41,$7F,$41,$41,$41,$41
        defb $7F,$08,$08,$08,$08,$08,$08,$7F,$7F,$08,$08,$08,$08,$08,$48,$30
        defb $42,$44,$48,$70,$48,$44,$42,$42,$40,$40,$40,$40,$40,$40,$40,$7F
        defb $41,$63,$55,$49,$41,$41,$41,$41,$41,$61,$51,$49,$45,$43,$41,$41
        defb $3E,$41,$41,$41,$41,$41,$41,$3E,$7E,$41,$41,$41,$7E,$40,$40,$40
        defb $3E,$41,$41,$41,$49,$45,$43,$3E,$7E,$41,$41,$41,$7E,$44,$42,$41
        defb $3E,$41,$40,$3E,$01,$01,$41,$3E,$7F,$08,$08,$08,$08,$08,$08,$08
        defb $41,$41,$41,$41,$41,$41,$41,$3E,$41,$41,$41,$41,$41,$22,$14,$08
        defb $41,$41,$41,$41,$41,$49,$55,$22,$41,$22,$14,$08,$08,$14,$22,$41
        defb $41,$22,$14,$08,$08,$08,$08,$08,$7F,$02,$04,$08,$10,$20,$40,$7F
        defs 49, 0
        defb $3C,$66,$66,$7E,$66,$66,$66,$00,$7C,$66,$66,$78,$66,$66,$7C,$00
        defb $3C,$66,$60,$60,$60,$66,$3C,$00,$7C,$66,$66,$66,$66,$66,$7C,$00
        defb $7E,$62,$60,$7C,$60,$62,$7E,$00,$7E,$62,$60,$7C,$60,$60,$60,$00
        defb $3C,$66,$60,$6E,$62,$62,$3C,$00,$66,$66,$66,$7E,$66,$66,$66,$00
        defb $7E,$18,$18,$18,$18,$18,$7E,$00,$7F,$0C,$0C,$0C,$4C,$4C,$38,$00
        defb $66,$66,$6C,$78,$6C,$66,$66,$00,$60,$60,$60,$60,$60,$62,$7E,$00
        defb $C6,$EE,$D6,$C6,$C6,$C6,$C6,$00,$66,$66,$76,$7E,$6E,$66,$66,$00
        defb $3C,$66,$66,$66,$66,$66,$3C,$00,$7C,$66,$66,$7C,$60,$60,$60,$00
        defb $3C,$66,$66,$66,$76,$6C,$3A,$00,$7C,$66,$66,$78,$66,$66,$66,$00
        defb $3C,$66,$60,$3C,$06,$66,$3C,$00,$7E,$18,$18,$18,$18,$18,$18,$00
        defb $66,$66,$66,$66,$66,$66,$3C,$00,$66,$66,$66,$66,$66,$3C,$18,$00
        defb $C6,$C6,$C6,$C6,$D6,$EE,$C6,$00,$66,$66,$3C,$18,$3C,$66,$66,$00
        defb $66,$66,$3C,$18,$18,$18,$18,$00,$7E,$06,$0C,$18,$30,$60,$7E,$00
        defb $08,$1C,$3E,$7F,$3E,$1C,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$3C,$42,$B9,$A5,$B9,$A5,$42,$3C,$3C
        defb $42,$99,$A1,$A1,$99,$42,$3C,$F0,$F0,$F0,$F0,$00,$00,$00,$00,$0F
        defb $0F,$0F,$0F,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00
        defb $00,$00,$00,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$0F
        defb $0F,$0F,$0F,$F0,$F0,$F0,$F0,$FF,$FF,$FF,$FF,$F0,$F0,$F0,$F0,$00
        defb $00,$00,$00,$0F,$0F,$0F,$0F,$F0,$F0,$F0,$F0,$0F,$0F,$0F,$0F,$0F
        defb $0F,$0F,$0F,$0F,$0F,$0F,$0F,$FF,$FF,$FF,$FF,$0F,$0F,$0F,$0F,$00
        defb $00,$00,$00,$FF,$FF,$FF,$FF,$F0,$F0,$F0,$F0,$FF,$FF,$FF,$FF,$0F
        defb $0F,$0F,$0F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
        defb $00,$F0,$92,$F7,$92,$90,$00,$00,$00,$70,$40,$70,$40,$40,$00,$00
        defb $00,$E9,$89,$8F,$89,$E9,$00,$00,$00,$4B,$4A,$4A,$4A,$7B,$00,$00
        defb $00,$A5,$28,$30,$28,$A5,$00,$00,$00,$DC,$90,$9C,$90,$DC,$00,$00
        defb $00,$3B,$22,$3A,$22,$3B,$00,$00,$00,$DE,$10,$D6,$52,$DE,$00,$00
        defb $4E,$A9,$89,$4E,$28,$A8,$48,$00,$42,$A5,$84,$82,$81,$A5,$42,$00
        defb $42,$A5,$84,$42,$21,$A5,$42,$00,$E9,$89,$8D,$EB,$89,$89,$E9,$00
        defb $87,$84,$84,$87,$84,$84,$F7,$00,$A2,$22,$22,$A2,$22,$14,$88,$00
        defb $F4,$84,$84,$F4,$84,$84,$F7
d_89E0:
        defb $00,$1E,$21,$23,$25,$29,$31,$1E,$00,$04,$0C,$14,$04,$04,$04,$1F
        defb $00,$1E,$21,$01,$1E,$20,$20,$3F,$00,$1E,$21,$01,$0E,$01,$21,$1E
        defb $00,$06,$0A,$12,$22,$3F,$02,$02,$00,$3F,$20,$3E,$01,$01,$21,$1E
        defb $00,$1E,$21,$20,$3E,$21,$21,$1E,$00,$3F,$01,$02,$04,$08,$08,$08
        defb $00,$1E,$21,$21,$1E,$21,$21,$1E,$00,$1E,$21,$21,$1F,$01,$21,$1E
        defb $00,$00,$07,$0C,$08,$0C,$07,$01,$00,$00,$C0,$60,$20,$60,$C0,$00
        defb $00,$00,$03,$05,$0A,$15,$29,$2A,$1F,$E0,$18,$67,$89,$11,$11,$21
        defb $F0,$0E,$31,$CC,$22,$11,$11,$08,$00,$00,$80,$40,$A0,$50,$28,$A8
        defb $52,$52,$52,$52,$72,$5A,$57,$52,$21,$21,$21,$21,$21,$21,$21,$DF
        defb $08,$08,$08,$08,$08,$08,$09,$FE,$94,$94,$94,$94,$9C,$B4,$D4,$94
        defb $52,$52,$52,$52,$32,$0A,$07,$00,$21,$21,$21,$21,$21,$21,$21,$FF
        defb $08,$08,$08,$08,$08,$08,$09,$FE,$94,$94,$94,$94,$98,$B0,$C0,$00
        defb $00,$00,$1C,$1C,$7F,$00,$00,$00,$18,$3C,$3C,$7E,$7E,$7E,$7E,$3C
        defb $00,$02,$02,$02,$02,$03,$00,$03,$00,$27,$24,$27,$24,$E4,$00,$FF
        defb $00,$C0,$40,$C0,$00,$00,$00,$C0,$00,$FD,$45,$45,$45,$FD,$00,$FF
        defb $00,$F4,$14,$15,$15,$F7,$00,$FF,$00,$51,$59,$55,$53,$D1,$00,$FF
        defb $00,$83,$82,$83,$82,$FB,$00,$FF,$00,$E7,$04,$C7,$04,$E4,$00,$FF
        defb $00,$DF,$04,$84,$04,$04,$00,$FF,$00,$F2,$92,$F2,$A2,$92,$00,$FF
        defb $00,$7A,$42,$5B,$4A,$7A,$00,$FF,$00,$5F,$44,$C4,$44,$44,$00,$FF
        defb $00,$7E,$08,$08,$48,$78,$00,$FF,$00,$42,$42,$42,$42,$7E,$00,$FF
        defb $00,$7F,$49,$49,$41,$41,$00,$FF,$00,$3F,$21,$3F,$20,$20,$00,$FF
        defb $00,$FE,$10,$10,$10,$10,$00,$FF,$00,$41,$22,$1C,$08,$08,$00,$FF
        defb $00,$3F,$21,$3F,$20,$20,$00,$FF,$00,$3F,$20,$3C,$20,$3F,$00,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defb $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
        defs 256, 0
d_8DF0:
        defb $00,$00,$03,$80,$03,$C0,$03,$C0,$3F,$FC,$03,$40,$03,$C0,$01,$80
        defb $03,$E0,$06,$F0,$06,$F0,$06,$E0,$03,$C0,$01,$00,$01,$C0,$00,$00
        defb $00,$00,$03,$80,$03,$C0,$03,$C0,$3F,$FC,$03,$40,$03,$C0,$01,$80
        defb $03,$E0,$06,$F0,$05,$F0,$05,$E0,$03,$C0,$04,$50,$02,$20,$00,$00
        defb $00,$00,$03,$80,$03,$C0,$03,$C0,$3F,$FC,$03,$40,$03,$C0,$01,$80
        defb $03,$E0,$06,$F0,$06,$F0,$06,$E0,$03,$C0,$01,$00,$01,$C0,$00,$00
        defb $00,$00,$03,$80,$03,$C0,$03,$C0,$3F,$FC,$03,$40,$03,$C0,$01,$80
        defb $03,$E0,$06,$F0,$07,$30,$07,$E0,$03,$C0,$04,$50,$02,$20,$00,$00
        defb $00,$00,$01,$C0,$03,$C0,$03,$C0,$3F,$FC,$02,$C0,$03,$C0,$01,$80
        defb $07,$C0,$0F,$60,$0F,$60,$07,$60,$03,$C0,$00,$80,$03,$80,$00,$00
        defb $00,$00,$01,$C0,$03,$C0,$03,$C0,$3F,$FC,$02,$C0,$03,$C0,$01,$80
        defb $07,$C0,$0F,$60,$0F,$A0,$07,$A0,$03,$C0,$0A,$20,$04,$40,$00,$00
        defb $00,$00,$01,$C0,$03,$C0,$03,$C0,$3F,$FC,$02,$C0,$03,$C0,$01,$80
        defb $07,$C0,$0F,$60,$0F,$60,$07,$60,$03,$C0,$00,$80,$03,$80,$00,$00
        defb $00,$00,$01,$C0,$03,$C0,$03,$C0,$3F,$FC,$02,$C0,$03,$C0,$01,$80
        defb $07,$C0,$0F,$60,$0C,$E0,$07,$E0,$03,$C0,$0A,$20,$04,$40,$00,$00
        defb $00,$79,$00,$EE,$00,$FC,$00,$FA,$00,$71,$00,$70,$00,$30,$00,$38
        defb $1E,$1C,$7F,$9C,$FF,$FC,$BF,$7C,$4F,$78,$70,$F0,$3F,$E0,$0F,$80
        defb $00,$78,$00,$EC,$00,$FF,$00,$F8,$00,$70,$00,$70,$00,$30,$00,$38
        defb $1E,$1C,$70,$9C,$CF,$7C,$BF,$7C,$7F,$F8,$7F,$F0,$3F,$E0,$0F,$80
        defb $9E,$00,$77,$00,$3F,$00,$5F,$00,$8E,$00,$0E,$00,$0C,$00,$1C,$00
        defb $38,$78,$39,$FE,$3F,$FF,$3E,$FD,$1E,$F2,$0F,$0E,$07,$FC,$01,$F0
        defb $1E,$00,$37,$00,$FF,$00,$1F,$00,$0E,$00,$0E,$00,$0C,$00,$1C,$00
        defb $38,$78,$39,$0E,$3E,$F3,$3E,$FD,$1F,$FE,$0F,$FE,$07,$FC,$01,$F0
        defs 34, 0
        defb $02,$40,$03,$C0,$03,$C0,$3F,$FC,$03,$C0,$09,$80,$17,$E0,$1F,$F0
        defb $0F,$F8,$07,$E8,$07,$E8,$02,$70,$02,$00,$0E,$00,$00,$00,$00,$00
        defb $02,$40,$03,$C0,$03,$C0,$3F,$FC,$03,$C0,$01,$80,$07,$E0,$1F,$F8
        defb $0F,$F0,$07,$E0,$07,$E0,$02,$40,$0E,$70,$00,$00,$00,$00,$00,$00
        defb $02,$40,$03,$C0,$03,$C0,$3F,$FC,$03,$C0,$01,$90,$07,$E8,$0F,$F8
        defb $1F,$F0,$17,$E0,$17,$E0,$0E,$40,$00,$40,$00,$70,$00,$00,$00,$00
        defb $02,$40,$03,$C0,$03,$C0,$3F,$FC,$03,$C0,$01,$80,$07,$E0,$1F,$F8
        defb $0F,$F0,$07,$E0,$07,$E0,$02,$40,$0E,$70,$00,$00
d_900E:
        defb $00,$00,$30,$00,$D0,$00,$30,$00,$20,$00,$40,$00,$40,$00,$C0,$00
        defb $CE,$00,$FF,$00,$FF,$00,$7F,$00,$3E,$00,$08,$00,$08,$00,$08,$00
        defb $18,$00,$0C,$00,$0B,$00,$0C,$00,$04,$00,$02,$00,$02,$00,$03,$00
        defb $73,$00,$FF,$00,$FF,$00,$FE,$00,$7C,$00,$10,$00,$10,$00,$10,$00
        defb $18,$00,$01,$80,$03,$C0,$03,$C0,$01,$80,$01,$80,$01,$80,$07,$E0
        defb $0F,$F0,$0F,$F0,$0F,$F0,$07,$E0,$02,$40,$02,$60,$02,$00,$02,$00
        defb $06,$00,$01,$80,$03,$C0,$03,$C0,$01,$80,$01,$80,$01,$80,$07,$E0
        defb $0F,$F0,$0F,$F0,$0F,$F0,$07,$E0,$02,$40,$06,$40,$00,$40,$00,$40
        defb $00,$60,$0B,$00,$05,$00,$0B,$00,$02,$00,$04,$00,$04,$00,$0C,$00
        defb $0C,$E0,$0F,$F0,$0F,$F0,$07,$F0,$03,$E0,$01,$80,$0A,$40,$04,$20
        defb $00,$40,$00,$D0,$00,$A0,$00,$D0,$00,$40,$00,$20,$00,$20,$00,$30
        defb $07,$30,$0F,$F0,$0F,$F0,$0F,$E0,$07,$C0,$01,$80,$02,$50,$04,$20
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$70,$00
        defb $58,$1E,$27,$FF,$51,$FF,$00,$7F,$10,$3E,$28,$08,$54,$08,$AA,$08
        defb $00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0E
        defb $78,$1A,$FF,$E4,$FF,$8A,$FE,$00,$7C,$08,$10,$14,$10,$2A,$10,$55
        defb $18,$00,$00,$00,$00,$00,$00,$00,$0C,$00,$0F,$00,$0F,$80,$1F,$C0

; Moves and draws the hens (called when d_736B reaches 0). Each hen: erase with hen_draw(A=0), move, draw again.
; One hen a call, round robin (d_7356). Level counters 8-15 have no hens (returns at $9127). A hen moves 4 pixels a step: in x on a platform
; (state 1: x - 4, state 2: x + 4), in y on a ladder. Its frame is drawn at the byte column x / 8 and is not shifted.
; d_736C walks the first 256 bytes of the ROM as a pseudo-random source (bit 0 here, bit 1 for the turns at $91C7 and $9237).
hens_update:
        LD A,(d_6EEB)                ; 911E  3A EB 6E
        CP $08                       ; 9121  FE 08
        JR C,l_9128                  ; 9123  38 03
        CP $10                       ; 9125  FE 10
        RET C                        ; 9127  D8
l_9128:
        LD HL,(d_736C)               ; 9128  2A 6C 73
        INC HL                       ; 912B  23
        LD H,$00                     ; 912C  26 00
        LD (d_736C),HL               ; 912E  22 6C 73
        LD C,$01                     ; 9131  0E 01
        BIT 0,(HL)                   ; 9133  CB 46
        JR Z,l_9138                  ; 9135  28 01
        DEC C                        ; 9137  0D
l_9138:
        LD HL,d_7356                 ; 9138  21 56 73
        LD A,(HL)                    ; 913B  7E
        INC A                        ; 913C  3C
        CP $05                       ; 913D  FE 05
        JR NZ,l_9142                 ; 913F  20 01
        XOR A                        ; 9141  AF
l_9142:
        LD (HL),A                    ; 9142  77
        SLA A                        ; 9143  CB 27
        SLA A                        ; 9145  CB 27
        ADD A,$57                    ; 9147  C6 57
        LD H,$73                     ; 9149  26 73
        LD L,A                       ; 914B  6F
        LD E,(HL)                    ; 914C  5E
        LD A,E                       ; 914D  7B
        XOR $FF                      ; 914E  EE FF
        RET Z                        ; 9150  C8
        INC HL                       ; 9151  23
        LD D,(HL)                    ; 9152  56
        INC HL                       ; 9153  23
        LD A,(HL)                    ; 9154  7E
        EX DE,HL                     ; 9155  EB
        XOR A                        ; 9156  AF
        CALL hen_draw                  ; 9157  CD 9C 92
        EX DE,HL                     ; 915A  EB
        LD A,(HL)                    ; 915B  7E
        CP $07                       ; 915C  FE 07
        JR C,hen_walk                  ; 915E  38 18
        LD C,E                       ; 9160  4B
        SUB $06                      ; 9161  D6 06
        LD (HL),A                    ; 9163  77
        LD B,A                       ; 9164  47
        CP $02                       ; 9165  FE 02
        JR Z,l_916D                  ; 9167  28 04
        LD A,E                       ; 9169  7B
        SUB $08                      ; 916A  D6 08
        LD E,A                       ; 916C  5F
l_916D:
        EX DE,HL                     ; 916D  EB
        XOR A                        ; 916E  AF
        CALL hen_draw                  ; 916F  CD 9C 92
        LD A,B                       ; 9172  78
        LD L,C                       ; 9173  69
        CALL hen_draw                  ; 9174  CD 9C 92
        RET                          ; 9177  C9

; Hen step while walking on a platform (state < 3): erase, check corn, move, redraw.
hen_walk:
        CP $03                       ; 9178  FE 03
        JR NC,hen_climb                 ; 917A  30 77
        BIT 2,E                      ; 917C  CB 53
        JR NZ,l_91A5                 ; 917E  20 25
        LD B,A                       ; 9180  47
        CALL hen_eat_corn                  ; 9181  CD 65 92
        LD A,E                       ; 9184  7B
        ADD A,$08                    ; 9185  C6 08
        JR C,l_91A1                  ; 9187  38 18
        DJNZ l_918F                  ; 9189  10 04
        SUB $10                      ; 918B  D6 10
        JR C,l_91A1                  ; 918D  38 12
l_918F:
        LD E,A                       ; 918F  5F
        DEC D                        ; 9190  15
        EX DE,HL                     ; 9191  EB
        CALL map_lookup_keep_hl                  ; 9192  CD 38 94
        EX DE,HL                     ; 9195  EB
        AND A                        ; 9196  A7
        JR Z,l_91A1                  ; 9197  28 08
        CP $03                       ; 9199  FE 03
        JR C,l_91A5                  ; 919B  38 08
        CP $05                       ; 919D  FE 05
        JR Z,l_91A5                  ; 919F  28 04
l_91A1:
        LD A,$03                     ; 91A1  3E 03
        SUB (HL)                     ; 91A3  96
        LD (HL),A                    ; 91A4  77
l_91A5:
        LD B,(HL)                    ; 91A5  46
        DEC HL                       ; 91A6  2B
        LD D,(HL)                    ; 91A7  56
        DEC HL                       ; 91A8  2B
        LD A,(HL)                    ; 91A9  7E
        ADD A,$04                    ; 91AA  C6 04
        DJNZ l_91B0                  ; 91AC  10 02
        SUB $08                      ; 91AE  D6 08
l_91B0:
        LD (HL),A                    ; 91B0  77
        INC B                        ; 91B1  04
        LD E,A                       ; 91B2  5F
        EX DE,HL                     ; 91B3  EB
        LD A,B                       ; 91B4  78
        CALL hen_draw                  ; 91B5  CD 9C 92
        INC DE                       ; 91B8  13
        INC DE                       ; 91B9  13
        BIT 2,L                      ; 91BA  CB 55
        RET Z                        ; 91BC  C8
        DEC C                        ; 91BD  0D
        RET NZ                       ; 91BE  C0
        PUSH HL                      ; 91BF  E5
        LD HL,(d_736C)               ; 91C0  2A 6C 73
        LD A,(HL)                    ; 91C3  7E
        POP HL                       ; 91C4  E1
        LD C,$02                     ; 91C5  0E 02
        BIT 1,A                      ; 91C7  CB 4F
        JR Z,hen_alt_91DF                  ; 91C9  28 14

; Variant of the hen walking step (twin of hen_alt_91DF). Exact role not worked out.
hen_alt_91CB:
        PUSH HL                      ; 91CB  E5
        LD A,H                       ; 91CC  7C
        SUB $08                      ; 91CD  D6 08
        LD H,A                       ; 91CF  67
        CALL map_lookup_keep_hl                  ; 91D0  CD 38 94
        POP HL                       ; 91D3  E1
        DEC A                        ; 91D4  3D
        JR Z,l_91DB                  ; 91D5  28 04
        DEC C                        ; 91D7  0D
        JR NZ,hen_alt_91DF                 ; 91D8  20 05
        RET                          ; 91DA  C9
l_91DB:
        LD A,$03                     ; 91DB  3E 03
        LD (DE),A                    ; 91DD  12
        RET                          ; 91DE  C9

; Variant of the hen walking step (twin of hen_alt_91CB). Exact role not worked out.
hen_alt_91DF:
        PUSH HL                      ; 91DF  E5
        LD A,H                       ; 91E0  7C
        ADD A,$10                    ; 91E1  C6 10
        LD H,A                       ; 91E3  67
        CALL map_lookup_keep_hl                  ; 91E4  CD 38 94
        POP HL                       ; 91E7  E1
        DEC A                        ; 91E8  3D
        JR Z,l_91EF                  ; 91E9  28 04
        DEC C                        ; 91EB  0D
        JR NZ,hen_alt_91CB                 ; 91EC  20 DD
        RET                          ; 91EE  C9
l_91EF:
        LD A,$04                     ; 91EF  3E 04
        LD (DE),A                    ; 91F1  12
        RET                          ; 91F2  C9

; Hen step in the other states (state >= 3: ladders and falling). Exact split not worked out.
hen_climb:
        BIT 2,D                      ; 91F3  CB 52
        JR NZ,l_920E                 ; 91F5  20 17
        SUB $02                      ; 91F7  D6 02
        LD B,A                       ; 91F9  47
        LD A,D                       ; 91FA  7A
        ADD A,$10                    ; 91FB  C6 10
        DJNZ l_9201                  ; 91FD  10 02
        SUB $18                      ; 91FF  D6 18
l_9201:
        LD D,A                       ; 9201  57
        EX DE,HL                     ; 9202  EB
        CALL map_lookup_keep_hl                  ; 9203  CD 38 94
        EX DE,HL                     ; 9206  EB
        DEC A                        ; 9207  3D
        JR Z,l_920E                  ; 9208  28 04
        LD A,$07                     ; 920A  3E 07
        SUB (HL)                     ; 920C  96
        LD (HL),A                    ; 920D  77
l_920E:
        LD B,(HL)                    ; 920E  46
        DEC HL                       ; 920F  2B
        LD A,(HL)                    ; 9210  7E
        DEC HL                       ; 9211  2B
        LD E,(HL)                    ; 9212  5E
        ADD A,$04                    ; 9213  C6 04
        DEC B                        ; 9215  05
        DEC B                        ; 9216  05
        DJNZ l_921B                  ; 9217  10 02
        SUB $08                      ; 9219  D6 08
l_921B:
        INC HL                       ; 921B  23
        LD (HL),A                    ; 921C  77
        LD D,A                       ; 921D  57
        EX DE,HL                     ; 921E  EB
        LD A,B                       ; 921F  78
        ADD A,$03                    ; 9220  C6 03
        CALL hen_draw                  ; 9222  CD 9C 92
        BIT 2,H                      ; 9225  CB 54
        RET NZ                       ; 9227  C0
        DEC C                        ; 9228  0D
        RET NZ                       ; 9229  C0
        INC DE                       ; 922A  13
        LD A,H                       ; 922B  7C
        SUB $08                      ; 922C  D6 08
        LD H,A                       ; 922E  67
        PUSH HL                      ; 922F  E5
        LD HL,(d_736C)               ; 9230  2A 6C 73
        LD A,(HL)                    ; 9233  7E
        POP HL                       ; 9234  E1
        LD C,$02                     ; 9235  0E 02
        BIT 1,A                      ; 9237  CB 4F
        JR Z,hen_alt_9250                  ; 9239  28 15

; Variant of the climbing step (twin of hen_alt_9250). Exact role not worked out.
hen_alt_923B:
        PUSH HL                      ; 923B  E5
        LD A,L                       ; 923C  7D
        SUB $08                      ; 923D  D6 08
        LD L,A                       ; 923F  6F
        CALL map_lookup_keep_hl                  ; 9240  CD 38 94
        POP HL                       ; 9243  E1
        CP $05                       ; 9244  FE 05
        JR Z,l_924C                  ; 9246  28 04
        DEC C                        ; 9248  0D
        RET Z                        ; 9249  C8
        JR hen_alt_9250                    ; 924A  18 04
l_924C:
        LD A,$01                     ; 924C  3E 01
        LD (DE),A                    ; 924E  12
        RET                          ; 924F  C9

; Variant of the climbing step (twin of hen_alt_923B). Exact role not worked out.
hen_alt_9250:
        PUSH HL                      ; 9250  E5
        LD A,L                       ; 9251  7D
        ADD A,$10                    ; 9252  C6 10
        LD L,A                       ; 9254  6F
        CALL map_lookup_keep_hl                  ; 9255  CD 38 94
        POP HL                       ; 9258  E1
        CP $05                       ; 9259  FE 05
        JR Z,l_9261                  ; 925B  28 04
        DEC C                        ; 925D  0D
        RET Z                        ; 925E  C8
        JR hen_alt_923B                    ; 925F  18 DA
l_9261:
        LD A,$02                     ; 9261  3E 02
        LD (DE),A                    ; 9263  12
        RET                          ; 9264  C9

; If the hen is on a corn tile, remove the corn and draw the hen eating.
hen_eat_corn:
        PUSH BC                      ; 9265  C5
        PUSH HL                      ; 9266  E5
        PUSH DE                      ; 9267  D5
        LD A,E                       ; 9268  7B
        ADD A,$08                    ; 9269  C6 08
        JR C,hen_restore_regs                  ; 926B  38 2B
        LD E,A                       ; 926D  5F
        LD A,(HL)                    ; 926E  7E
        CP $02                       ; 926F  FE 02
        JR Z,l_9279                  ; 9271  28 06
        LD A,E                       ; 9273  7B
        SUB $10                      ; 9274  D6 10
        JR C,hen_restore_regs                  ; 9276  38 20
        LD E,A                       ; 9278  5F
l_9279:
        EX DE,HL                     ; 9279  EB
        CALL map_tile_at                  ; 927A  CD 34 9E
        CP $04                       ; 927D  FE 04
        JR NZ,hen_restore_regs                 ; 927F  20 17
        LD (HL),$00                  ; 9281  36 00
        LD A,(DE)                    ; 9283  1A
        ADD A,$06                    ; 9284  C6 06
        LD (DE),A                    ; 9286  12
        POP HL                       ; 9287  E1
        CP $08                       ; 9288  FE 08
        JR Z,l_9290                  ; 928A  28 04
        LD A,L                       ; 928C  7D
        SUB $08                      ; 928D  D6 08
        LD L,A                       ; 928F  6F
l_9290:
        LD A,(DE)                    ; 9290  1A
        CALL hen_draw                  ; 9291  CD 9C 92
        POP HL                       ; 9294  E1
        POP HL                       ; 9295  E1
        POP HL                       ; 9296  E1
        RET                          ; 9297  C9

; Pops DE, HL and BC and returns (exit of hen_eat_corn).
hen_restore_regs:
        POP DE                       ; 9298  D1
        POP HL                       ; 9299  E1
        POP BC                       ; 929A  C1
        RET                          ; 929B  C9

; Draw (A != 0, ORed on the screen) or erase (A = 0, restores the background tiles) a hen at HL = (x, y), DE swapped on entry.
; FIRST it tests the hen box against Harry (d_72D8 = x, d_72D9 = y), also when erasing. On a hit it drops 7 stack words (l_92BC) and returns to the caller of the main loop: the death.
; Erase path hen_erase: restores whole 8x8 cells with the tile loop at l_93A2. That wipes Harry's pixels in those cells.
hen_draw:
        PUSH BC                      ; 929C  C5
        PUSH DE                      ; 929D  D5
        PUSH AF                      ; 929E  F5
        PUSH HL                      ; 929F  E5
        EX DE,HL                     ; 92A0  EB
        LD HL,d_72D8                 ; 92A1  21 D8 72
        LD A,E                       ; 92A4  7B
        ADD A,$05                    ; 92A5  C6 05
        CP (HL)                      ; 92A7  BE
        JR C,hen_draw_pick                  ; 92A8  38 18
        SUB $0D                      ; 92AA  D6 0D
        JR NC,l_92AF                 ; 92AC  30 01
        XOR A                        ; 92AE  AF  (static)
l_92AF:
        CP (HL)                      ; 92AF  BE
        JR NC,hen_draw_pick                 ; 92B0  30 10
        INC HL                       ; 92B2  23
        LD A,D                       ; 92B3  7A
        CP (HL)                      ; 92B4  BE
        JR NC,hen_draw_pick                 ; 92B5  30 0B
        ADD A,$1C                    ; 92B7  C6 1C
        CP (HL)                      ; 92B9  BE
        JR C,hen_draw_pick                  ; 92BA  38 06
        LD B,$06                     ; 92BC  06 06
l_92BE:
        POP HL                       ; 92BE  E1
        DJNZ l_92BE                  ; 92BF  10 FD
        RET                          ; 92C1  C9

; After the hit test: A = 0 goes to hen_erase, otherwise picks the hen frame, ORs it on the screen and sets attributes.
; Frame: 1 or 2 (walking; + 4 when x AND 4 = 4), 3 (ladder; 4 when y AND 4 = 4), 7 and above as they are. 32 bytes at $8FF0 + 32 * frame,
; top row first. The loop at l_9308 ORs it from its last row up: it starts at the screen row of y (the bottom row of the hen) and goes up
; 16 rows, 2 bytes a row (1 at the right edge). Attribute 5 on 2 x 3 cells (1 column when the frame is below 7 and x AND 4 = 0, 2 rows when y AND 4 = 0).
hen_draw_pick:
        POP HL                       ; 92C2  E1
        POP AF                       ; 92C3  F1
        PUSH AF                      ; 92C4  F5
        PUSH HL                      ; 92C5  E5
        AND A                        ; 92C6  A7
        JP Z,hen_erase                  ; 92C7  CA 5F 93
        LD IXH,A                     ; 92CA  DD 67
        CP $04                       ; 92CC  FE 04
        JR NZ,l_92D1                 ; 92CE  20 01
        DEC A                        ; 92D0  3D
l_92D1:
        EX DE,HL                     ; 92D1  EB
        CP $07                       ; 92D2  FE 07
        JR NC,l_92E7                 ; 92D4  30 11
        CP $03                       ; 92D6  FE 03
        JR NZ,l_92E1                 ; 92D8  20 07
        BIT 2,D                      ; 92DA  CB 52
        JR Z,l_92E7                  ; 92DC  28 09
        INC A                        ; 92DE  3C
        JR l_92E7                    ; 92DF  18 06
l_92E1:
        BIT 2,E                      ; 92E1  CB 53
        JR Z,l_92E7                  ; 92E3  28 02
        ADD A,$04                    ; 92E5  C6 04
l_92E7:
        LD B,$00                     ; 92E7  06 00
        LD C,A                       ; 92E9  4F
        SLA C                        ; 92EA  CB 21
        SLA C                        ; 92EC  CB 21
        SLA C                        ; 92EE  CB 21
        SLA C                        ; 92F0  CB 21
        SLA C                        ; 92F2  CB 21
        RL B                         ; 92F4  CB 10
        LD HL,d_900E                 ; 92F6  21 0E 90
        ADD HL,BC                    ; 92F9  09
        EX DE,HL                     ; 92FA  EB
        LD C,$02                     ; 92FB  0E 02
        LD A,L                       ; 92FD  7D
        CP $F9                       ; 92FE  FE F9
        JR C,l_9303                  ; 9300  38 01
        DEC C                        ; 9302  0D  (static)
l_9303:
        CALL screen_addr                  ; 9303  CD 04 94
        LD B,$10                     ; 9306  06 10
l_9308:
        LD A,(DE)                    ; 9308  1A
        DEC C                        ; 9309  0D
        JR Z,l_9317                  ; 930A  28 0B
        INC DE                       ; 930C  13
        OR (HL)                      ; 930D  B6
        LD (HL),A                    ; 930E  77
        INC HL                       ; 930F  23
        LD A,(DE)                    ; 9310  1A
        OR (HL)                      ; 9311  B6
        DEC DE                       ; 9312  1B
        DEC DE                       ; 9313  1B
        DEC DE                       ; 9314  1B
        LD (HL),A                    ; 9315  77
        DEC HL                       ; 9316  2B
l_9317:
        INC C                        ; 9317  0C
        DEC H                        ; 9318  25
        LD A,H                       ; 9319  7C
        AND $07                      ; 931A  E6 07
        CP $07                       ; 931C  FE 07
        JR NZ,l_932E                 ; 931E  20 0E
        LD A,H                       ; 9320  7C
        ADD A,$08                    ; 9321  C6 08
        LD H,A                       ; 9323  67
        LD A,L                       ; 9324  7D
        SUB $20                      ; 9325  D6 20
        LD L,A                       ; 9327  6F
        JR NC,l_932E                 ; 9328  30 04
        LD A,H                       ; 932A  7C
        SUB $08                      ; 932B  D6 08
        LD H,A                       ; 932D  67
l_932E:
        DJNZ l_9308                  ; 932E  10 D8
        POP HL                       ; 9330  E1
        PUSH HL                      ; 9331  E5
        LD D,$02                     ; 9332  16 02
        LD A,IXH                     ; 9334  DD 7C
        CP $07                       ; 9336  FE 07
        JR NC,l_933F                 ; 9338  30 05
        BIT 2,L                      ; 933A  CB 55
        JR NZ,l_933F                 ; 933C  20 01
        DEC D                        ; 933E  15
l_933F:
        LD E,$03                     ; 933F  1E 03
        BIT 2,H                      ; 9341  CB 54
        JR NZ,l_9346                 ; 9343  20 01
        DEC E                        ; 9345  1D
l_9346:
        CALL cell_attr_addr                  ; 9346  CD DD 93
l_9349:
        LD B,D                       ; 9349  42
        PUSH HL                      ; 934A  E5
l_934B:
        LD (HL),$05                  ; 934B  36 05
        INC HL                       ; 934D  23
        DJNZ l_934B                  ; 934E  10 FB
        POP HL                       ; 9350  E1
        LD BC,$0020                  ; 9351  01 20 00
        AND A                        ; 9354  A7
        SBC HL,BC                    ; 9355  ED 42
        DEC E                        ; 9357  1D
        JR NZ,l_9349                 ; 9358  20 EF
        POP HL                       ; 935A  E1
        POP AF                       ; 935B  F1
        POP DE                       ; 935C  D1
        POP BC                       ; 935D  C1
        RET                          ; 935E  C9

; Erase a hen: restores the background tiles under its cells with the tile loop at l_93A2 (whole 8x8 cells).
; Bug in the original: the tile number is shifted left 3 times in the 8-bit register A ($9392-$9396), so a tile number of $20 or more
; restores the wrong graphics.
hen_erase:
        LD IXL,$02                   ; 935F  DD 2E 02
        LD A,L                       ; 9362  7D
        CP $F8                       ; 9363  FE F8
        JR C,l_9369                  ; 9365  38 02
        DEC IXL                      ; 9367  DD 2D
l_9369:
        LD A,H                       ; 9369  7C
        AND $F8                      ; 936A  E6 F8
        LD H,A                       ; 936C  67
        CALL screen_addr                  ; 936D  CD 04 94
        EX DE,HL                     ; 9370  EB
        POP HL                       ; 9371  E1
        PUSH HL                      ; 9372  E5
        CALL map_lookup_keep_af                  ; 9373  CD FE 93
        PUSH HL                      ; 9376  E5
        POP BC                       ; 9377  C1
        POP HL                       ; 9378  E1
        PUSH HL                      ; 9379  E5
        CALL cell_attr_addr                  ; 937A  CD DD 93
        LD IXH,$03                   ; 937D  DD 26 03
l_9380:
        PUSH IX                      ; 9380  DD E5
        PUSH HL                      ; 9382  E5
        PUSH BC                      ; 9383  C5
        PUSH DE                      ; 9384  D5
l_9385:
        PUSH HL                      ; 9385  E5
        LD A,(BC)                    ; 9386  0A
        ADD A,$4F                    ; 9387  C6 4F
        LD H,$98                     ; 9389  26 98
        LD L,A                       ; 938B  6F
        LD A,(HL)                    ; 938C  7E
        POP HL                       ; 938D  E1
        LD (HL),A                    ; 938E  77
        PUSH HL                      ; 938F  E5
        PUSH BC                      ; 9390  C5
        LD A,(BC)                    ; 9391  0A
        SLA A                        ; 9392  CB 27
        SLA A                        ; 9394  CB 27
        SLA A                        ; 9396  CB 27
        LD HL,d_84F7                 ; 9398  21 F7 84
        LD B,$00                     ; 939B  06 00
        LD C,A                       ; 939D  4F
        ADD HL,BC                    ; 939E  09
        PUSH DE                      ; 939F  D5
        LD B,$08                     ; 93A0  06 08
l_93A2:
        LD A,(HL)                    ; 93A2  7E
        LD (DE),A                    ; 93A3  12
        DEC D                        ; 93A4  15
        DEC HL                       ; 93A5  2B
        DJNZ l_93A2                  ; 93A6  10 FA
        POP DE                       ; 93A8  D1
        INC DE                       ; 93A9  13
        POP BC                       ; 93AA  C1
        INC BC                       ; 93AB  03
        POP HL                       ; 93AC  E1
        INC HL                       ; 93AD  23
        DEC IXL                      ; 93AE  DD 2D
        JR NZ,l_9385                 ; 93B0  20 D3
        POP DE                       ; 93B2  D1
        POP BC                       ; 93B3  C1
        POP HL                       ; 93B4  E1
        LD A,E                       ; 93B5  7B
        SUB $20                      ; 93B6  D6 20
        LD E,A                       ; 93B8  5F
        JR NC,l_93BF                 ; 93B9  30 04
        LD A,D                       ; 93BB  7A
        SUB $08                      ; 93BC  D6 08
        LD D,A                       ; 93BE  57
l_93BF:
        PUSH DE                      ; 93BF  D5
        LD DE,$0020                  ; 93C0  11 20 00
        AND A                        ; 93C3  A7
        SBC HL,DE                    ; 93C4  ED 52
        PUSH HL                      ; 93C6  E5
        PUSH BC                      ; 93C7  C5
        POP HL                       ; 93C8  E1
        ADD HL,DE                    ; 93C9  19
        PUSH HL                      ; 93CA  E5
        POP BC                       ; 93CB  C1
        POP HL                       ; 93CC  E1
        POP DE                       ; 93CD  D1
        POP IX                       ; 93CE  DD E1
        DEC IXH                      ; 93D0  DD 25
        JR NZ,l_9380                 ; 93D2  20 AC
        POP HL                       ; 93D4  E1
        POP AF                       ; 93D5  F1
        POP DE                       ; 93D6  D1
        POP BC                       ; 93D7  C1
        LD IX,d_72D8                 ; 93D8  DD 21 D8 72
        RET                          ; 93DC  C9

; Attribute address of the cell for the sprite position in HL.
cell_attr_addr:
        PUSH AF                      ; 93DD  F5
        PUSH DE                      ; 93DE  D5
        LD A,$BF                     ; 93DF  3E BF
        SUB H                        ; 93E1  94
        LD H,$00                     ; 93E2  26 00
        EX DE,HL                     ; 93E4  EB
        LD HL,$5800                  ; 93E5  21 00 58
        SRL E                        ; 93E8  CB 3B
        SRL E                        ; 93EA  CB 3B
        SRL E                        ; 93EC  CB 3B
        ADD HL,DE                    ; 93EE  19
        AND $F8                      ; 93EF  E6 F8
        SLA A                        ; 93F1  CB 27
        RL D                         ; 93F3  CB 12
        SLA A                        ; 93F5  CB 27
        RL D                         ; 93F7  CB 12
        LD E,A                       ; 93F9  5F
        ADD HL,DE                    ; 93FA  19
        POP DE                       ; 93FB  D1
        POP AF                       ; 93FC  F1
        RET                          ; 93FD  C9

; Calls map_tile_at and keeps AF.
map_lookup_keep_af:
        PUSH AF                      ; 93FE  F5
        CALL map_tile_at                  ; 93FF  CD 34 9E
        POP AF                       ; 9402  F1
        RET                          ; 9403  C9

; Screen bitmap address for the pixel position DE.
screen_addr:
        PUSH AF                      ; 9404  F5
        PUSH DE                      ; 9405  D5
        PUSH BC                      ; 9406  C5
        EX DE,HL                     ; 9407  EB
        LD HL,$4000                  ; 9408  21 00 40
        LD BC,$0800                  ; 940B  01 00 08
        LD A,D                       ; 940E  7A
        CP $80                       ; 940F  FE 80
        JR NC,l_9419                 ; 9411  30 06
        CP $40                       ; 9413  FE 40
        JR NC,l_9418                 ; 9415  30 01
        ADD HL,BC                    ; 9417  09
l_9418:
        ADD HL,BC                    ; 9418  09
l_9419:
        AND $38                      ; 9419  E6 38
        LD C,A                       ; 941B  4F
        LD A,$38                     ; 941C  3E 38
        SUB C                        ; 941E  91
        SLA A                        ; 941F  CB 27
        SLA A                        ; 9421  CB 27
        LD B,$00                     ; 9423  06 00
        LD C,A                       ; 9425  4F
        ADD HL,BC                    ; 9426  09
        LD A,D                       ; 9427  7A
        AND $07                      ; 9428  E6 07
        XOR $07                      ; 942A  EE 07
        LD D,A                       ; 942C  57
        SRL E                        ; 942D  CB 3B
        SRL E                        ; 942F  CB 3B
        SRL E                        ; 9431  CB 3B
        ADD HL,DE                    ; 9433  19
        POP BC                       ; 9434  C1
        POP DE                       ; 9435  D1
        POP AF                       ; 9436  F1
        RET                          ; 9437  C9

; Calls map_tile_at and keeps HL.
map_lookup_keep_hl:
        PUSH HL                      ; 9438  E5
        CALL map_tile_at                  ; 9439  CD 34 9E
        POP HL                       ; 943C  E1
        RET                          ; 943D  C9
        defb $F1,$C9,$E5,$CD,$34,$9E,$E1,$C9,$00,$08,$7A,$FE,$80,$30,$06,$FE
        defb $40,$30,$01,$09,$09,$E6,$38,$4F,$3E,$38,$91,$CB,$27
d_945B:
        defb $CB,$27,$06,$00,$4F,$09,$7A,$E6,$07,$EE,$07,$57,$CB,$3B,$CB,$3B
        defb $CB,$3B,$19,$C1,$D1,$08,$68,$88,$02,$00,$48,$68,$01,$00,$40,$48
        defb $01,$00,$98,$08,$02,$00,$48,$28,$01,$00,$0C,$10,$08,$02,$00,$48
        defb $88,$02,$00,$E0,$48,$02,$00,$90,$48,$01,$00,$A8,$88,$01,$00,$0C
        defb $10,$68,$01,$00,$E8,$20,$01,$00,$70,$80,$02,$00,$64,$50,$03,$00
        defb $0C,$28,$04,$00,$10,$28,$08,$01,$00,$D8,$08,$02,$00,$D8,$88,$02
        defb $00,$78,$88,$02,$00,$58,$08,$01,$00,$10,$10,$28,$01,$00,$28,$48
        defb $02,$00,$28,$68,$01,$00,$A8,$48,$02,$00,$E0,$08,$02,$00,$10,$18
        defb $08,$01,$00,$18,$68,$01,$00,$C0,$28,$02,$00,$E8,$68,$02,$00,$A0
        defb $48,$02,$00,$0C,$C8,$88,$01,$00,$0C,$58,$04,$00,$BC,$40,$03,$00
        defb $28,$68,$02,$00,$0C,$18,$04,$00,$0C,$7C,$70,$04,$00,$7C,$30,$04
        defb $00,$A0,$08,$01,$00,$38,$48,$01,$00,$C0,$48,$02,$00,$00,$00,$00
        defs 29, 0

; Restores the attributes of the 3 x 3 cells of a box sprite at HL = y/x (2 columns from x = $F1, 2 rows below y = $11): the attribute of
; the tile from the table at $984F, or 6 for tiles 9 and above. Called for Harry at the start of every tick ($994C), in the air ($A22D, $A2BE)
; and by duck_move ($A116).
redraw_attrs:
        PUSH AF                      ; 9538  F5
        PUSH BC                      ; 9539  C5
        PUSH DE                      ; 953A  D5
        PUSH HL                      ; 953B  E5
        LD B,$03                     ; 953C  06 03
        LD A,L                       ; 953E  7D
        CP $F1                       ; 953F  FE F1
        JR C,l_9544                  ; 9541  38 01
        DEC B                        ; 9543  05  (static)
l_9544:
        LD C,$03                     ; 9544  0E 03
        LD A,H                       ; 9546  7C
        CP $11                       ; 9547  FE 11
        JR NC,l_954C                 ; 9549  30 01
        DEC C                        ; 954B  0D
l_954C:
        CALL attr_addr                  ; 954C  CD 84 95
        CALL map_addr                  ; 954F  CD A6 95
l_9552:
        PUSH BC                      ; 9552  C5
        PUSH DE                      ; 9553  D5
        PUSH HL                      ; 9554  E5
l_9555:
        LD A,(HL)                    ; 9555  7E
        CP $09                       ; 9556  FE 09
        JR C,l_955E                  ; 9558  38 04
        LD A,$06                     ; 955A  3E 06
        JR l_9566                    ; 955C  18 08
l_955E:
        ADD A,$4F                    ; 955E  C6 4F
        PUSH BC                      ; 9560  C5
        LD B,$98                     ; 9561  06 98
        LD C,A                       ; 9563  4F
        LD A,(BC)                    ; 9564  0A
        POP BC                       ; 9565  C1
l_9566:
        LD (DE),A                    ; 9566  12
        INC DE                       ; 9567  13
        INC HL                       ; 9568  23
        DJNZ l_9555                  ; 9569  10 EA
        POP HL                       ; 956B  E1
        LD DE,$0020                  ; 956C  11 20 00
        AND A                        ; 956F  A7
        SBC HL,DE                    ; 9570  ED 52
        POP DE                       ; 9572  D1
        PUSH HL                      ; 9573  E5
        EX DE,HL                     ; 9574  EB
        LD DE,$0020                  ; 9575  11 20 00
        ADD HL,DE                    ; 9578  19
        EX DE,HL                     ; 9579  EB
        POP HL                       ; 957A  E1
        POP BC                       ; 957B  C1
        DEC C                        ; 957C  0D
        JR NZ,l_9552                 ; 957D  20 D3
        POP HL                       ; 957F  E1
        POP DE                       ; 9580  D1
        POP BC                       ; 9581  C1
        POP AF                       ; 9582  F1
        RET                          ; 9583  C9

; Attribute address for the coordinates.
attr_addr:
        PUSH AF                      ; 9584  F5
        PUSH HL                      ; 9585  E5
        LD A,$BF                     ; 9586  3E BF
        SUB H                        ; 9588  94
        LD H,$00                     ; 9589  26 00
        EX DE,HL                     ; 958B  EB
        LD HL,$5800                  ; 958C  21 00 58
        SRL E                        ; 958F  CB 3B
        SRL E                        ; 9591  CB 3B
        SRL E                        ; 9593  CB 3B
        ADD HL,DE                    ; 9595  19
        AND $F8                      ; 9596  E6 F8
        SLA A                        ; 9598  CB 27
        RL D                         ; 959A  CB 12
        SLA A                        ; 959C  CB 27
        RL D                         ; 959E  CB 12
        LD E,A                       ; 95A0  5F
        ADD HL,DE                    ; 95A1  19
        EX DE,HL                     ; 95A2  EB
        POP HL                       ; 95A3  E1
        POP AF                       ; 95A4  F1
        RET                          ; 95A5  C9

; Address in the tile map (d_61A8) for the coordinates.
map_addr:
        PUSH AF                      ; 95A6  F5
        PUSH DE                      ; 95A7  D5
        EX DE,HL                     ; 95A8  EB
        LD HL,d_61A8                 ; 95A9  21 A8 61
        LD A,D                       ; 95AC  7A
        LD D,$00                     ; 95AD  16 00
        SRL E                        ; 95AF  CB 3B
        SRL E                        ; 95B1  CB 3B
        SRL E                        ; 95B3  CB 3B
        ADD HL,DE                    ; 95B5  19
        AND $F8                      ; 95B6  E6 F8
        LD E,A                       ; 95B8  5F
        SLA E                        ; 95B9  CB 23
        RL D                         ; 95BB  CB 12
        SLA E                        ; 95BD  CB 23
        RL D                         ; 95BF  CB 12
        ADD HL,DE                    ; 95C1  19
        POP DE                       ; 95C2  D1
        POP AF                       ; 95C3  F1
        RET                          ; 95C4  C9
        defs 107, 0
d_9630:
        defs 28, 0
        defb $62,$79,$00,$00,$6E,$2E,$61,$6C,$64,$65,$72,$74,$6F,$6E,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$31,$00,$74,$6F
        defb $00,$34,$00,$70,$6C,$61,$79,$65,$72,$73,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$6F,$66,$00,$73,$6B,$69,$6C
        defb $6C,$00,$66,$6F,$72,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$61,$00,$67,$61,$6D,$65,$00,$00
        defs 34, 0
        defb $82,$80,$81,$82,$00,$82,$80,$00,$00,$00,$00,$00,$00,$00,$86,$00
        defb $84,$8A,$89,$81,$84,$00,$00,$00,$00,$00,$00,$00,$86,$80,$85,$82
        defb $87,$82,$80,$7F,$00,$00,$82,$80,$80,$80,$82,$80,$82,$80,$80,$81
        defb $81,$82,$81,$82,$84,$00,$86,$84,$84,$84,$84,$00,$86,$83,$00,$84
        defb $89,$82,$86,$80,$84,$84,$84,$84,$86,$80,$84,$85,$81,$86,$89,$82
        defs 31, 0
        defb $70,$72,$65,$73,$65,$6E,$74,$73,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$41,$00,$26,$00,$46,$00,$53
        defb $4F,$46,$54,$57,$41,$52,$45
d_9764:
        defb $0B,$0C,$0D,$0E,$0F,$10,$11
d_976B:
        defb $9F,$00,$00,$9B,$9C,$9D,$00
d_9772:
        defb $9E
d_9773:
        defb $9F,$00,$00,$1B,$1C,$1D,$00
d_977A:
        defb $9F,$9E,$9E,$9E,$00,$00,$12,$13,$14,$00
d_9784:
        defb $A7,$9E,$9E
d_9787:
        defb $05,$05,$FF,$00,$05,$05,$FF,$00,$05,$05,$FF,$00,$E8,$54,$40,$03
        defb $F2,$54,$90,$03,$F9,$54,$C8,$03,$EF,$54,$78,$03,$FE,$54,$F0,$03
        defb $05,$05,$FF,$00,$6E,$73,$00,$00
d_97AF:
        defb $20,$8F,$90,$91,$92,$93,$94,$95,$96,$20
d_97B9:
        defb $30,$30,$31,$30,$30,$30,$20,$8F,$90,$91,$92,$93,$94,$95,$96,$20
        defb $30,$30,$31,$30,$30,$30,$20,$8F,$90,$91,$92,$93,$94,$95,$96,$20
        defb $30,$30,$31,$30,$30,$30,$20,$8F,$90,$91,$92,$93,$94,$95,$96,$20
        defb $30,$30,$31,$30,$30,$30,$20,$8F,$90,$91,$92,$93,$94,$95,$96,$20
        defb $30,$30,$31,$30,$30,$30,$20,$8F,$90,$91,$92,$93,$94,$95,$96
d_9808:
        defb $20,$30,$30,$31,$30,$30,$30,$20,$8F,$90,$91,$92,$93,$94,$95,$96
        defb $20,$30,$30,$31,$30,$30,$30,$20,$8F,$90,$91,$92,$93,$94,$95,$96
        defb $20,$30,$30,$31,$30,$30,$30,$20,$8F,$90,$91,$92,$93,$94,$95,$96
        defb $20,$30,$30,$31,$30,$30
d_983E:
        defb $30
d_983F:
        defb $20,$8F,$90,$91,$92,$93,$94,$95,$96,$20,$30,$30,$31,$30,$30
d_984E:
        defb $30,$06,$03,$03,$07,$03,$04,$06,$07,$07

; Fast polling loop. Reads d_5C3D (always 1, so no wait), plays the sound countdown in d_7370, checks the hens' list,
; then counts d_72DC down from $82. Only when it reaches 0 does game_tick run: one game tick every 130 polls (about 49,000 T-states).
; Cost: 147.6 T-states a poll while Harry is on the ground (measured: 19,190 T-states a tick, 33 to 40 % of a tick). Such a poll does nothing
; but count (the sound countdown is looked at once every 16 polls). The game logic depends on the NUMBER of polls, not on their length:
; in the air, check_falling runs on every poll, counts polls between the vertical steps (d_7328) and moves Harry in x on the last poll of
; the tick (d_72DC = 1).
poll_loop:
        LD HL,($5C3D)                ; 9858  2A 3D 5C
        DEC HL                       ; 985B  2B
        LD A,H                       ; 985C  7C
        OR L                         ; 985D  B5
l_985E:
        JR NZ,l_985E                 ; 985E  20 FE
        LD HL,d_7370                 ; 9860  21 70 73
        LD A,(d_72DC)                ; 9863  3A DC 72
        AND $0F                      ; 9866  E6 0F
        JR NZ,l_987E                 ; 9868  20 14
        LD A,(HL)                    ; 986A  7E
        AND A                        ; 986B  A7
        JR Z,l_987E                  ; 986C  28 10
        DEC (HL)                     ; 986E  35
        AND $03                      ; 986F  E6 03
        JR NZ,l_987E                 ; 9871  20 0B
        LD A,(HL)                    ; 9873  7E
        AND $1F                      ; 9874  E6 1F
        ADD A,$06                    ; 9876  C6 06
        LD H,A                       ; 9878  67
        LD L,$02                     ; 9879  2E 02
        CALL beep                  ; 987B  CD A4 9C
l_987E:
        LD A,(d_7325)                ; 987E  3A 25 73
        AND A                        ; 9881  A7
        JR Z,l_98B7                  ; 9882  28 33
        LD A,(d_72DC)                ; 9884  3A DC 72
        DEC A                        ; 9887  3D
        JR NZ,l_9895                 ; 9888  20 0B
        LD L,$01                     ; 988A  2E 01
        LD A,(d_72D9)                ; 988C  3A D9 72
        XOR $FF                      ; 988F  EE FF
        LD H,A                       ; 9891  67
        CALL beep                  ; 9892  CD A4 9C
l_9895:
        LD A,(d_7328)                ; 9895  3A 28 73
        PUSH AF                      ; 9898  F5
        CALL check_falling                  ; 9899  CD 1C A2
        POP AF                       ; 989C  F1
        DEC A                        ; 989D  3D
        JR NZ,l_98B7                 ; 989E  20 17
        LD HL,d_7357                 ; 98A0  21 57 73
        LD B,$05                     ; 98A3  06 05
l_98A5:
        LD E,(HL)                    ; 98A5  5E
        LD A,E                       ; 98A6  7B
        XOR $FF                      ; 98A7  EE FF
        JR Z,l_98B7                  ; 98A9  28 0C
        INC HL                       ; 98AB  23
        LD D,(HL)                    ; 98AC  56
        INC HL                       ; 98AD  23
        INC HL                       ; 98AE  23
        INC HL                       ; 98AF  23
        CALL headroom_check                  ; 98B0  CD 66 9E
        AND A                        ; 98B3  A7
        RET NZ                       ; 98B4  C0
        DJNZ l_98A5                  ; 98B5  10 EE
l_98B7:
        LD HL,d_72DC                 ; 98B7  21 DC 72
        DEC (HL)                     ; 98BA  35
        JP NZ,l_99DC                 ; 98BB  C2 DC 99
        LD (HL),$82                  ; 98BE  36 82
        LD A,$FE                     ; 98C0  3E FE
        IN A,($FE)                   ; 98C2  DB FE
        BIT 0,A                      ; 98C4  CB 47
        JR NZ,game_tick                 ; 98C6  20 1E
        LD A,$BF                     ; 98C8  3E BF  (static)
        IN A,($FE)                   ; 98CA  DB FE  (static)
        BIT 4,A                      ; 98CC  CB 67  (static)
        JR NZ,l_98DA                 ; 98CE  20 0A  (static)
l_98D0:
        LD A,$FD                     ; 98D0  3E FD  (static)
        IN A,($FE)                   ; 98D2  DB FE  (static)
        BIT 1,A                      ; 98D4  CB 4F  (static)
        JR NZ,l_98D0                 ; 98D6  20 F8  (static)
        JR game_tick                    ; 98D8  18 0C  (static)
l_98DA:
        LD A,$FD                     ; 98DA  3E FD  (static)
        IN A,($FE)                   ; 98DC  DB FE  (static)
        BIT 0,A                      ; 98DE  CB 47  (static)
        JR NZ,game_tick                 ; 98E0  20 04  (static)
        POP HL                       ; 98E2  E1  (static)
        JP game_start                    ; 98E3  C3 10 A4  (static)

; One game tick (every 130 polls of poll_loop). Counters in d_7345/d_7346/d_733C/d_734C/d_736B make the timer, lifts, duck and hens
; run every N-th tick. Then Harry: input, ladders, jumping, pickups. Ends with a jump back to poll_loop.
; Order: timer (d_7345), duck_move (d_734C, every 12th tick), lifts_move (d_733C, every 2nd), check_pickup, bonus timer (d_7346, every 10th),
; hens_update (d_736B, every 3rd tick; every 2nd from level counter $20 = displayed level 33), redraw_attrs, then the keys and Harry.
; duck_move and hens_update fall on the same tick: both countdowns are 1 on the first tick of a level (seen at levels 17, 25, 33; d_736B is
; set at $AFAD, who sets d_734C was not found).
game_tick:
        LD A,(d_7347)                ; 98E6  3A 47 73
        AND A                        ; 98E9  A7
        JR Z,l_98F9                  ; 98EA  28 0D
        LD HL,d_7345                 ; 98EC  21 45 73
        DEC (HL)                     ; 98EF  35
        JR NZ,l_98F9                 ; 98F0  20 07
        LD (HL),$32                  ; 98F2  36 32
        LD B,$00                     ; 98F4  06 00
        CALL timer_tick                  ; 98F6  CD B8 A1
l_98F9:
        LD HL,d_734C                 ; 98F9  21 4C 73
        DEC (HL)                     ; 98FC  35
        JR NZ,l_9904                 ; 98FD  20 05
        LD (HL),$0C                  ; 98FF  36 0C
        CALL duck_move                  ; 9901  CD C8 A0
l_9904:
        LD HL,d_733C                 ; 9904  21 3C 73
        DEC (HL)                     ; 9907  35
        JR NZ,l_991F                 ; 9908  20 15
        LD (HL),$02                  ; 990A  36 02
        CALL lifts_move                  ; 990C  CD 14 A0
        LD A,(d_7355)                ; 990F  3A 55 73
        AND A                        ; 9912  A7
        JR Z,l_991F                  ; 9913  28 0A
        LD A,(d_72D9)                ; 9915  3A D9 72  (static)
        INC A                        ; 9918  3C  (static)
        LD (d_72D9),A                ; 9919  32 D9 72  (static)
        CP $A5                       ; 991C  FE A5  (static)
        RET NC                       ; 991E  D0  (static)
l_991F:
        CALL check_pickup                  ; 991F  CD DF 99
        LD HL,d_7346                 ; 9922  21 46 73
        DEC (HL)                     ; 9925  35
        JR NZ,l_9935                 ; 9926  20 0D
        LD (HL),$0A                  ; 9928  36 0A
        LD B,$01                     ; 992A  06 01
        CALL timer_tick                  ; 992C  CD B8 A1
        LD HL,$0402                  ; 992F  21 02 04
        CALL beep                  ; 9932  CD A4 9C
l_9935:
        LD HL,d_736B                 ; 9935  21 6B 73
        DEC (HL)                     ; 9938  35
        JR NZ,l_9949                 ; 9939  20 0E
        LD C,$03                     ; 993B  0E 03
        LD A,(d_6EEB)                ; 993D  3A EB 6E
        CP $20                       ; 9940  FE 20
        JR C,l_9945                  ; 9942  38 01
        DEC C                        ; 9944  0D  (static)
l_9945:
        LD (HL),C                    ; 9945  71
        CALL hens_update                  ; 9946  CD 1E 91
l_9949:
        LD HL,(d_72D8)               ; 9949  2A D8 72
        CALL redraw_attrs                  ; 994C  CD 38 95
        LD A,(d_7325)                ; 994F  3A 25 73
        AND A                        ; 9952  A7
        JR NZ,l_99C1                 ; 9953  20 6C
        LD A,(d_7337)                ; 9955  3A 37 73
        IN A,($FE)                   ; 9958  DB FE
        AND $1F                      ; 995A  E6 1F
        LD C,A                       ; 995C  4F
        LD A,(d_7336)                ; 995D  3A 36 73
        OR C                         ; 9960  B1
        CP $1F                       ; 9961  FE 1F
        JR NZ,l_9975                 ; 9963  20 10
        LD A,(d_7339)                ; 9965  3A 39 73
        IN A,($FE)                   ; 9968  DB FE
        AND $1F                      ; 996A  E6 1F
        LD C,A                       ; 996C  4F
        LD A,(d_7338)                ; 996D  3A 38 73
        OR C                         ; 9970  B1
        CP $1F                       ; 9971  FE 1F
        JR Z,l_99C1                  ; 9973  28 4C
l_9975:
        LD IX,d_72D8                 ; 9975  DD 21 D8 72  (static)
        LD (IX+77),$02               ; 9979  DD 36 4D 02  (static)
        LD (IX+79),$8C               ; 997D  DD 36 4F 8C  (static)
        LD (IX+80),$00               ; 9981  DD 36 50 00  (static)
        LD (IX+82),$01               ; 9985  DD 36 52 01  (static)
        LD (IX+125),$00              ; 9989  DD 36 7D 00  (static)
        LD D,$01                     ; 998D  16 01  (static)
        LD E,$00                     ; 998F  1E 00  (static)
        LD A,(d_7335)                ; 9991  3A 35 73  (static)
        IN A,($FE)                   ; 9994  DB FE  (static)
        AND $1F                      ; 9996  E6 1F  (static)
        LD C,A                       ; 9998  4F  (static)
        LD A,(d_7334)                ; 9999  3A 34 73  (static)
        OR C                         ; 999C  B1  (static)
        CP $1F                       ; 999D  FE 1F  (static)
        JR NZ,l_99B9                 ; 999F  20 18  (static)
        LD D,$FF                     ; 99A1  16 FF  (static)
        LD E,$04                     ; 99A3  1E 04  (static)
        LD A,(d_7333)                ; 99A5  3A 33 73  (static)
        IN A,($FE)                   ; 99A8  DB FE  (static)
        AND $1F                      ; 99AA  E6 1F  (static)
        LD C,A                       ; 99AC  4F  (static)
        LD A,(d_7332)                ; 99AD  3A 32 73  (static)
        OR C                         ; 99B0  B1  (static)
        CP $1F                       ; 99B1  FE 1F  (static)
        JR NZ,l_99B9                 ; 99B3  20 04  (static)
        INC D                        ; 99B5  14  (static)
        LD E,(IX+3)                  ; 99B6  DD 5E 03  (static)
l_99B9:
        LD (IX+78),D                 ; 99B9  DD 72 4E  (static)
        LD (IX+3),E                  ; 99BC  DD 73 03  (static)
        JR l_99DC                    ; 99BF  18 1B  (static)
l_99C1:
        LD A,(d_7325)                ; 99C1  3A 25 73
        AND A                        ; 99C4  A7
        JR NZ,l_99D9                 ; 99C5  20 12
        CALL harry_off_ladder                  ; 99C7  CD 60 9F
        LD A,(d_72DB)                ; 99CA  3A DB 72
        CP $0D                       ; 99CD  FE 0D
        CALL NZ,harry_update               ; 99CF  C4 08 9D
        LD A,(d_7355)                ; 99D2  3A 55 73
        AND A                        ; 99D5  A7
        CALL Z,platform_shunt                ; 99D6  CC 4C B3
l_99D9:
        CALL harry_to_ladder                  ; 99D9  CD 98 9E
l_99DC:
        JP poll_loop                    ; 99DC  C3 58 98

; Checks whether Harry picked up an egg or corn at his position.
check_pickup:
        LD HL,(d_72D8)               ; 99DF  2A D8 72
        LD A,H                       ; 99E2  7C
        SUB $08                      ; 99E3  D6 08
        LD H,A                       ; 99E5  67
        LD A,L                       ; 99E6  7D
        ADD A,$08                    ; 99E7  C6 08
        LD L,A                       ; 99E9  6F
        CALL map_tile_at                  ; 99EA  CD 34 9E
        CP $03                       ; 99ED  FE 03
        JR NZ,pickup_corn                 ; 99EF  20 26
        LD (HL),$00                  ; 99F1  36 00
        LD A,(d_6EEB)                ; 99F3  3A EB 6E
        SRL A                        ; 99F6  CB 3F
        SRL A                        ; 99F8  CB 3F
        CP $09                       ; 99FA  FE 09
        JR C,l_9A00                  ; 99FC  38 02
        LD A,$09                     ; 99FE  3E 09  (static)
l_9A00:
        LD B,A                       ; 9A00  47
        INC B                        ; 9A01  04
        XOR A                        ; 9A02  AF
l_9A03:
        ADD A,$0A                    ; 9A03  C6 0A
        DJNZ l_9A03                  ; 9A05  10 FC
        LD B,A                       ; 9A07  47
        CALL add_score                  ; 9A08  CD A7 A3
        LD A,$FF                     ; 9A0B  3E FF
        LD (d_7370),A                ; 9A0D  32 70 73
        LD HL,d_6EE6                 ; 9A10  21 E6 6E
        DEC (HL)                     ; 9A13  35
        RET NZ                       ; 9A14  C0
        POP HL                       ; 9A15  E1  (static)
        RET                          ; 9A16  C9  (static)

; Part of check_pickup: corn handling.
pickup_corn:
        CP $04                       ; 9A17  FE 04
        RET NZ                       ; 9A19  C0
        LD (HL),$00                  ; 9A1A  36 00
        LD B,$05                     ; 9A1C  06 05
        CALL add_score                  ; 9A1E  CD A7 A3
        LD HL,$FFFF                  ; 9A21  21 FF FF
        LD (d_7345),HL               ; 9A24  22 45 73
        LD A,L                       ; 9A27  7D
        LD (d_7370),A                ; 9A28  32 70 73
        RET                          ; 9A2B  C9
        defb $A3,$21,$FF,$FF,$22,$45,$73,$7D,$32,$70,$73,$C9,$05,$CD,$A7,$A3
        defb $21,$FF,$FF,$22,$45,$73,$7D,$32,$70,$73,$C9,$00,$00,$00,$00,$00

; Draw a 16-row, 24-pixel-wide sprite (Harry or the duck) on the screen bitmap and set its attributes.
; In: A = frame number (frames at d_8DF0, 32 bytes each: 2 bytes x 16 rows), H = y pixel from the bottom, L = x pixel.
; 1. Copies the frame into d_72A0 (3 bytes x 16 rows) and shifts it right by (L AND 7) bits.
; 2. Renders the 3x3 background tiles around it (map at d_61A8, tiles at d_84F0) into d_72DD (3 bytes x 24 rows).
; 3. ORs the sprite onto that background and STORES the whole 3x16 box on the screen (loop l_9B4E). Anything else drawn there is wiped: hens, duck.
; 4. Sets the attribute of the covered cells to 6 (yellow) in l_9B93.
; 5. Tail ($9B9E): tests Harry (d_72D8 / d_72D9) against the duck (d_7348 / d_7349), whatever sprite was drawn. On a hit it drops stack words
;    up to the first return address at or above game_start ($A410) and returns there: the death.
draw_sprite_box:
        PUSH AF                      ; 9A4C  F5
        PUSH BC                      ; 9A4D  C5
        PUSH DE                      ; 9A4E  D5
        PUSH IX                      ; 9A4F  DD E5
        PUSH HL                      ; 9A51  E5
        LD C,L                       ; 9A52  4D
        LD HL,d_8DF0                 ; 9A53  21 F0 8D
        LD E,A                       ; 9A56  5F
        XOR A                        ; 9A57  AF
        RL E                         ; 9A58  CB 13
        RLA                          ; 9A5A  17
        RL E                         ; 9A5B  CB 13
        RLA                          ; 9A5D  17
        RL E                         ; 9A5E  CB 13
        RLA                          ; 9A60  17
        RL E                         ; 9A61  CB 13
        RLA                          ; 9A63  17
        RL E                         ; 9A64  CB 13
        RLA                          ; 9A66  17
        LD D,A                       ; 9A67  57
        ADD HL,DE                    ; 9A68  19
        LD DE,d_72A0                 ; 9A69  11 A0 72
        LD B,$10                     ; 9A6C  06 10
        XOR A                        ; 9A6E  AF
l_9A6F:
        LDI                          ; 9A6F  ED A0
        LDI                          ; 9A71  ED A0
        INC BC                       ; 9A73  03
        INC BC                       ; 9A74  03
        LD (DE),A                    ; 9A75  12
        INC DE                       ; 9A76  13
        DJNZ l_9A6F                  ; 9A77  10 F6
        LD A,$07                     ; 9A79  3E 07
        AND C                        ; 9A7B  A1
        CP $00                       ; 9A7C  FE 00
        JR Z,l_9A93                  ; 9A7E  28 13
l_9A80:
        LD B,$10                     ; 9A80  06 10
        LD HL,d_72A0                 ; 9A82  21 A0 72
l_9A85:
        SRL (HL)                     ; 9A85  CB 3E
        INC HL                       ; 9A87  23
        RR (HL)                      ; 9A88  CB 1E
        INC HL                       ; 9A8A  23
        RR (HL)                      ; 9A8B  CB 1E
        INC HL                       ; 9A8D  23
        DJNZ l_9A85                  ; 9A8E  10 F5
        DEC A                        ; 9A90  3D
        JR NZ,l_9A80                 ; 9A91  20 ED
l_9A93:
        POP HL                       ; 9A93  E1
        PUSH HL                      ; 9A94  E5
        LD IX,d_72DD                 ; 9A95  DD 21 DD 72
        EX DE,HL                     ; 9A99  EB
        LD HL,d_61A8                 ; 9A9A  21 A8 61
        LD A,D                       ; 9A9D  7A
        AND $F8                      ; 9A9E  E6 F8
        LD B,$00                     ; 9AA0  06 00
        SLA A                        ; 9AA2  CB 27
        RL B                         ; 9AA4  CB 10
        SLA A                        ; 9AA6  CB 27
        RL B                         ; 9AA8  CB 10
        LD C,A                       ; 9AAA  4F
        ADD HL,BC                    ; 9AAB  09
        LD B,$00                     ; 9AAC  06 00
        LD C,E                       ; 9AAE  4B
        SRL C                        ; 9AAF  CB 39
        SRL C                        ; 9AB1  CB 39
        SRL C                        ; 9AB3  CB 39
        ADD HL,BC                    ; 9AB5  09
        EX DE,HL                     ; 9AB6  EB
        LD BC,$0303                  ; 9AB7  01 03 03
l_9ABA:
        PUSH BC                      ; 9ABA  C5
        LD HL,d_84F0                 ; 9ABB  21 F0 84
        LD A,(DE)                    ; 9ABE  1A
        LD B,$00                     ; 9ABF  06 00
        SLA A                        ; 9AC1  CB 27
        RL B                         ; 9AC3  CB 10
        SLA A                        ; 9AC5  CB 27
        RL B                         ; 9AC7  CB 10
        SLA A                        ; 9AC9  CB 27
        RL B                         ; 9ACB  CB 10
        LD C,A                       ; 9ACD  4F
        ADD HL,BC                    ; 9ACE  09
        LD B,$08                     ; 9ACF  06 08
l_9AD1:
        LD A,(HL)                    ; 9AD1  7E
        LD (IX+0),A                  ; 9AD2  DD 77 00
        INC IX                       ; 9AD5  DD 23
        INC IX                       ; 9AD7  DD 23
        INC IX                       ; 9AD9  DD 23
        INC HL                       ; 9ADB  23
        DJNZ l_9AD1                  ; 9ADC  10 F3
        LD B,$17                     ; 9ADE  06 17
l_9AE0:
        DEC IX                       ; 9AE0  DD 2B
        DJNZ l_9AE0                  ; 9AE2  10 FC
        POP BC                       ; 9AE4  C1
        INC DE                       ; 9AE5  13
        DJNZ l_9ABA                  ; 9AE6  10 D2
        EX DE,HL                     ; 9AE8  EB
        LD DE,$0023                  ; 9AE9  11 23 00
        AND A                        ; 9AEC  A7
        SBC HL,DE                    ; 9AED  ED 52
        LD DE,$0015                  ; 9AEF  11 15 00
        ADD IX,DE                    ; 9AF2  DD 19
        EX DE,HL                     ; 9AF4  EB
        LD B,$03                     ; 9AF5  06 03
        DEC C                        ; 9AF7  0D
        JR NZ,l_9ABA                 ; 9AF8  20 C0
        POP HL                       ; 9AFA  E1
        PUSH HL                      ; 9AFB  E5
        LD A,H                       ; 9AFC  7C
        AND $07                      ; 9AFD  E6 07
        XOR $07                      ; 9AFF  EE 07
        LD H,A                       ; 9B01  67
        SLA A                        ; 9B02  CB 27
        ADD A,H                      ; 9B04  84
        LD C,A                       ; 9B05  4F
        LD B,$00                     ; 9B06  06 00
        LD HL,d_72DD                 ; 9B08  21 DD 72
        LD DE,d_72A0                 ; 9B0B  11 A0 72
        ADD HL,BC                    ; 9B0E  09
        LD B,$30                     ; 9B0F  06 30
l_9B11:
        LD A,(DE)                    ; 9B11  1A
        OR (HL)                      ; 9B12  B6
        LD (DE),A                    ; 9B13  12
        INC DE                       ; 9B14  13
        INC HL                       ; 9B15  23
        DJNZ l_9B11                  ; 9B16  10 F9
        POP DE                       ; 9B18  D1
        PUSH DE                      ; 9B19  D5
        LD HL,$4000                  ; 9B1A  21 00 40
        LD BC,$0800                  ; 9B1D  01 00 08
        LD A,D                       ; 9B20  7A
        CP $80                       ; 9B21  FE 80
        JR NC,l_9B2B                 ; 9B23  30 06
        CP $40                       ; 9B25  FE 40
        JR NC,l_9B2A                 ; 9B27  30 01
        ADD HL,BC                    ; 9B29  09
l_9B2A:
        ADD HL,BC                    ; 9B2A  09
l_9B2B:
        AND $38                      ; 9B2B  E6 38
        LD C,A                       ; 9B2D  4F
        LD A,$38                     ; 9B2E  3E 38
        SUB C                        ; 9B30  91
        SLA A                        ; 9B31  CB 27
        SLA A                        ; 9B33  CB 27
        LD C,A                       ; 9B35  4F
        LD B,$00                     ; 9B36  06 00
        ADD HL,BC                    ; 9B38  09
        LD A,D                       ; 9B39  7A
        AND $07                      ; 9B3A  E6 07
        LD C,A                       ; 9B3C  4F
        LD A,$07                     ; 9B3D  3E 07
        SUB C                        ; 9B3F  91
        LD D,A                       ; 9B40  57
        SRL E                        ; 9B41  CB 3B
        SRL E                        ; 9B43  CB 3B
        SRL E                        ; 9B45  CB 3B
        ADD HL,DE                    ; 9B47  19
        EX DE,HL                     ; 9B48  EB
        LD B,$10                     ; 9B49  06 10
        LD HL,d_72A0                 ; 9B4B  21 A0 72
l_9B4E:
        LD A,(HL)                    ; 9B4E  7E
        LD (DE),A                    ; 9B4F  12
        INC HL                       ; 9B50  23
        INC E                        ; 9B51  1C
        LD A,(HL)                    ; 9B52  7E
        LD (DE),A                    ; 9B53  12
        INC HL                       ; 9B54  23
        INC E                        ; 9B55  1C
        LD A,(HL)                    ; 9B56  7E
        LD (DE),A                    ; 9B57  12
        INC HL                       ; 9B58  23
        DEC E                        ; 9B59  1D
        DEC E                        ; 9B5A  1D
        INC D                        ; 9B5B  14
        LD A,D                       ; 9B5C  7A
        AND $07                      ; 9B5D  E6 07
        JR NZ,l_9B6F                 ; 9B5F  20 0E
        LD A,D                       ; 9B61  7A
        SUB $08                      ; 9B62  D6 08
        LD D,A                       ; 9B64  57
        LD A,E                       ; 9B65  7B
        ADD A,$20                    ; 9B66  C6 20
        LD E,A                       ; 9B68  5F
        JR NC,l_9B6F                 ; 9B69  30 04
        LD A,D                       ; 9B6B  7A
        ADD A,$08                    ; 9B6C  C6 08
        LD D,A                       ; 9B6E  57
l_9B6F:
        DJNZ l_9B4E                  ; 9B6F  10 DD
        POP HL                       ; 9B71  E1
        PUSH HL                      ; 9B72  E5
        LD C,$03                     ; 9B73  0E 03
        LD A,L                       ; 9B75  7D
        CP $F1                       ; 9B76  FE F1
        JR C,l_9B7B                  ; 9B78  38 01
        DEC C                        ; 9B7A  0D  (static)
l_9B7B:
        LD B,$03                     ; 9B7B  06 03
        LD A,H                       ; 9B7D  7C
        AND $07                      ; 9B7E  E6 07
        XOR $07                      ; 9B80  EE 07
        JR Z,l_9B89                  ; 9B82  28 05
        LD A,H                       ; 9B84  7C
        CP $11                       ; 9B85  FE 11
        JR NC,l_9B8A                 ; 9B87  30 01
l_9B89:
        DEC B                        ; 9B89  05
l_9B8A:
        CALL sprite_attr_addr                  ; 9B8A  CD DE 9B
        LD DE,$0020                  ; 9B8D  11 20 00
l_9B90:
        LD IXL,C                     ; 9B90  DD 69
        PUSH HL                      ; 9B92  E5
l_9B93:
        LD (HL),$06                  ; 9B93  36 06
        INC HL                       ; 9B95  23
        DEC IXL                      ; 9B96  DD 2D
        JR NZ,l_9B93                 ; 9B98  20 F9
        POP HL                       ; 9B9A  E1
        ADD HL,DE                    ; 9B9B  19
        DJNZ l_9B90                  ; 9B9C  10 F2
        LD HL,d_7348                 ; 9B9E  21 48 73
        LD A,(d_72D8)                ; 9BA1  3A D8 72
        ADD A,$08                    ; 9BA4  C6 08
        JR NC,l_9BAA                 ; 9BA6  30 02
        LD A,$FF                     ; 9BA8  3E FF  (static)
l_9BAA:
        CP (HL)                      ; 9BAA  BE
        JR C,l_9BD7                  ; 9BAB  38 2A
        SUB $10                      ; 9BAD  D6 10
        JR NC,l_9BB2                 ; 9BAF  30 01
        XOR A                        ; 9BB1  AF  (static)
l_9BB2:
        CP (HL)                      ; 9BB2  BE
        JR NC,l_9BD7                 ; 9BB3  30 22
        INC HL                       ; 9BB5  23
        LD A,(d_72D9)                ; 9BB6  3A D9 72
        ADD A,$09                    ; 9BB9  C6 09
        CP (HL)                      ; 9BBB  BE
        JR C,l_9BD7                  ; 9BBC  38 19
        SUB $12                      ; 9BBE  D6 12
        JR NC,l_9BC3                 ; 9BC0  30 01
        XOR A                        ; 9BC2  AF  (static)
l_9BC3:
        CP (HL)                      ; 9BC3  BE
        JR NC,l_9BD7                 ; 9BC4  30 11
        LD B,$05                     ; 9BC6  06 05
l_9BC8:
        POP HL                       ; 9BC8  E1
        DJNZ l_9BC8                  ; 9BC9  10 FD
        LD BC,game_start                 ; 9BCB  01 10 A4
l_9BCE:
        POP HL                       ; 9BCE  E1
        PUSH HL                      ; 9BCF  E5
        AND A                        ; 9BD0  A7
        SBC HL,BC                    ; 9BD1  ED 42
        RET NC                       ; 9BD3  D0
        POP HL                       ; 9BD4  E1
        JR l_9BCE                    ; 9BD5  18 F7
l_9BD7:
        POP HL                       ; 9BD7  E1
        POP IX                       ; 9BD8  DD E1
        POP DE                       ; 9BDA  D1
        POP BC                       ; 9BDB  C1
        POP AF                       ; 9BDC  F1
        RET                          ; 9BDD  C9

; Attribute address for the sprite position in HL.
sprite_attr_addr:
        PUSH AF                      ; 9BDE  F5
        PUSH DE                      ; 9BDF  D5
        LD A,$BF                     ; 9BE0  3E BF
        SUB H                        ; 9BE2  94
        LD H,$00                     ; 9BE3  26 00
        EX DE,HL                     ; 9BE5  EB
        LD HL,$5800                  ; 9BE6  21 00 58
        SRL E                        ; 9BE9  CB 3B
        SRL E                        ; 9BEB  CB 3B
        SRL E                        ; 9BED  CB 3B
        ADD HL,DE                    ; 9BEF  19
        AND $F8                      ; 9BF0  E6 F8
        SLA A                        ; 9BF2  CB 27
        RL D                         ; 9BF4  CB 12
        SLA A                        ; 9BF6  CB 27
        RL D                         ; 9BF8  CB 12
        LD E,A                       ; 9BFA  5F
        ADD HL,DE                    ; 9BFB  19
        POP DE                       ; 9BFC  D1
        POP AF                       ; 9BFD  F1
        RET                          ; 9BFE  C9
        defs 65, 0

; Entry of draw_tile reached through four NOPs (callers use CALL $9C40).
tile_entry_slide:
        NOP                          ; 9C40  00
        NOP                          ; 9C41  00
        NOP                          ; 9C42  00
        NOP                          ; 9C43  00

; Draw one 8x8 background tile on the screen bitmap (attributes are not touched).
; In:  A = tile number (graphics at d_84F0, 8 bytes each), H = character row counted from the bottom (0 = bottom row), L = column 0-31.
; The row is inverted: XOR 7 on the row inside the third, and the third is chosen from H.
draw_tile:
        PUSH HL                      ; 9C44  E5
        PUSH BC                      ; 9C45  C5
        PUSH DE                      ; 9C46  D5
        PUSH AF                      ; 9C47  F5
        LD A,H                       ; 9C48  7C
        EX DE,HL                     ; 9C49  EB
        LD HL,$4000                  ; 9C4A  21 00 40
        LD BC,$0800                  ; 9C4D  01 00 08
        CP $10                       ; 9C50  FE 10
        JR NC,l_9C5A                 ; 9C52  30 06
        CP $08                       ; 9C54  FE 08
        JR NC,l_9C59                 ; 9C56  30 01
        ADD HL,BC                    ; 9C58  09
l_9C59:
        ADD HL,BC                    ; 9C59  09
l_9C5A:
        AND $07                      ; 9C5A  E6 07
        XOR $07                      ; 9C5C  EE 07
        SLA A                        ; 9C5E  CB 27
        SLA A                        ; 9C60  CB 27
        SLA A                        ; 9C62  CB 27
        SLA A                        ; 9C64  CB 27
        SLA A                        ; 9C66  CB 27
        LD C,A                       ; 9C68  4F
        LD B,$00                     ; 9C69  06 00
        ADD HL,BC                    ; 9C6B  09
        LD C,E                       ; 9C6C  4B
        ADD HL,BC                    ; 9C6D  09
        POP AF                       ; 9C6E  F1
        PUSH AF                      ; 9C6F  F5
        LD C,A                       ; 9C70  4F
        XOR A                        ; 9C71  AF
        SLA C                        ; 9C72  CB 21
        RLA                          ; 9C74  17
        SLA C                        ; 9C75  CB 21
        RLA                          ; 9C77  17
        SLA C                        ; 9C78  CB 21
        RLA                          ; 9C7A  17
        LD B,A                       ; 9C7B  47
        EX DE,HL                     ; 9C7C  EB
        LD HL,d_84F0                 ; 9C7D  21 F0 84
        ADD HL,BC                    ; 9C80  09
        LD B,$08                     ; 9C81  06 08
l_9C83:
        LD A,(HL)                    ; 9C83  7E
        LD (DE),A                    ; 9C84  12
        INC HL                       ; 9C85  23
        INC D                        ; 9C86  14
        DJNZ l_9C83                  ; 9C87  10 FA
        POP AF                       ; 9C89  F1
        POP DE                       ; 9C8A  D1
        POP BC                       ; 9C8B  C1
        POP HL                       ; 9C8C  E1
        RET                          ; 9C8D  C9
        defb $C1,$E1,$C9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; Interrupt vector target (IM 2). Jumps to isr.
isr_entry:
        JP isr                    ; 9C9C  C3 C2 9C
        defb $00,$00,$00,$00,$00

; Click sound: H = half-period delay, L = number of cycles. Toggles port $FE bit 4.
beep:
        LD A,$10                     ; 9CA4  3E 10
        OUT ($FE),A                  ; 9CA6  D3 FE
        LD B,H                       ; 9CA8  44
l_9CA9:
        DJNZ l_9CA9                  ; 9CA9  10 FE
        XOR A                        ; 9CAB  AF
        OUT ($FE),A                  ; 9CAC  D3 FE
        LD B,H                       ; 9CAE  44
l_9CAF:
        DJNZ l_9CAF                  ; 9CAF  10 FE
        DEC L                        ; 9CB1  2D
        JR NZ,beep                 ; 9CB2  20 F0
        RET                          ; 9CB4  C9
        defs 13, 0

; Interrupt handler: runs the music sequencer only. It sets no frame flag, so the game loop is not synchronised to the frame.
; Stack use: 3 words (return address, AF, HL). It uses no other register.
; d_7373 = ticks left for the current note ($FF = no tune), d_7374 = pointer into the note list, notes go to port $9F.
isr:
        PUSH AF                      ; 9CC2  F5
        PUSH HL                      ; 9CC3  E5
        LD A,(d_7373)                ; 9CC4  3A 73 73
        CP $FF                       ; 9CC7  FE FF
        JR Z,l_9CE6                  ; 9CC9  28 1B
        DEC A                        ; 9CCB  3D  (static)
        JR Z,l_9CD3                  ; 9CCC  28 05  (static)
        LD (d_7373),A                ; 9CCE  32 73 73  (static)
        JR l_9CE6                    ; 9CD1  18 13  (static)
l_9CD3:
        LD HL,(d_7374)               ; 9CD3  2A 74 73  (static)
        LD A,(HL)                    ; 9CD6  7E  (static)
        LD (d_7373),A                ; 9CD7  32 73 73  (static)
        CP $FF                       ; 9CDA  FE FF  (static)
        JR Z,l_9CE6                  ; 9CDC  28 08  (static)
        INC HL                       ; 9CDE  23  (static)
        LD A,(HL)                    ; 9CDF  7E  (static)
        OUT ($9F),A                  ; 9CE0  D3 9F  (static)
        INC HL                       ; 9CE2  23  (static)
        LD (d_7374),HL               ; 9CE3  22 74 73  (static)
l_9CE6:
        POP HL                       ; 9CE6  E1
        EI                           ; 9CE7  FB
        POP AF                       ; 9CE8  F1
        RETI                         ; 9CE9  ED 4D

; Start tune number B-1 if no tune is playing (table of tune pointers at $C8C6).
start_tune:
        LD B,A                       ; 9CEB  47
        LD A,(d_7373)                ; 9CEC  3A 73 73
        CP $FF                       ; 9CEF  FE FF
        RET NZ                       ; 9CF1  C0
        LD HL,d_C8C6                 ; 9CF2  21 C6 C8
l_9CF5:
        INC HL                       ; 9CF5  23
        INC HL                       ; 9CF6  23
        DJNZ l_9CF5                  ; 9CF7  10 FC
        LD E,(HL)                    ; 9CF9  5E
        INC HL                       ; 9CFA  23
        LD D,(HL)                    ; 9CFB  56
        LD (d_7374),DE               ; 9CFC  ED 53 74 73
        LD A,$01                     ; 9D00  3E 01
        LD (d_7373),A                ; 9D02  32 73 73
        RET                          ; 9D05  C9
        defb $00,$00

; Reads the keys, moves Harry (x at d_72D8, y at d_72D9), picks the frame and calls draw_sprite_box at l_9DBE.
harry_update:
        LD IX,d_72D8                 ; 9D08  DD 21 D8 72
        LD HL,(d_72D8)               ; 9D0C  2A D8 72
        LD A,(d_72DB)                ; 9D0F  3A DB 72
        AND A                        ; 9D12  A7
        JR NZ,l_9D16                 ; 9D13  20 01
        DEC L                        ; 9D15  2D
l_9D16:
        EX DE,HL                     ; 9D16  EB
        LD HL,d_61A8                 ; 9D17  21 A8 61
        LD A,D                       ; 9D1A  7A
        AND $F8                      ; 9D1B  E6 F8
        LD B,$00                     ; 9D1D  06 00
        SLA A                        ; 9D1F  CB 27
        RL B                         ; 9D21  CB 10
        SLA A                        ; 9D23  CB 27
        RL B                         ; 9D25  CB 10
        LD C,A                       ; 9D27  4F
        ADD HL,BC                    ; 9D28  09
        LD B,$00                     ; 9D29  06 00
        LD C,E                       ; 9D2B  4B
        SRL C                        ; 9D2C  CB 39
        SRL C                        ; 9D2E  CB 39
        SRL C                        ; 9D30  CB 39
        ADD HL,BC                    ; 9D32  09
        LD BC,$0020                  ; 9D33  01 20 00
        LD A,(d_7333)                ; 9D36  3A 33 73
        IN A,($FE)                   ; 9D39  DB FE
        AND $1F                      ; 9D3B  E6 1F
        LD D,A                       ; 9D3D  57
        LD A,(d_7332)                ; 9D3E  3A 32 73
        OR D                         ; 9D41  B2
        CP $1F                       ; 9D42  FE 1F
        JR Z,l_9D6F                  ; 9D44  28 29
        LD A,(d_72D8)                ; 9D46  3A D8 72
        DEC A                        ; 9D49  3D
        JR Z,l_9DAB                  ; 9D4A  28 5F
        LD A,(HL)                    ; 9D4C  7E
        CP $05                       ; 9D4D  FE 05
        JR NC,l_9DAB                 ; 9D4F  30 5A
        AND A                        ; 9D51  A7
        SBC HL,BC                    ; 9D52  ED 42
        LD A,(HL)                    ; 9D54  7E
        CP $05                       ; 9D55  FE 05
        JR NC,l_9DAB                 ; 9D57  30 52
        DEC (IX+0)                   ; 9D59  DD 35 00
        LD (IX+3),$04                ; 9D5C  DD 36 03 04
        LD A,(d_72D8)                ; 9D60  3A D8 72
        AND $03                      ; 9D63  E6 03
        JR NZ,l_9D6D                 ; 9D65  20 06
        LD HL,$2805                  ; 9D67  21 05 28
        CALL beep                  ; 9D6A  CD A4 9C
l_9D6D:
        JR l_9DAF                    ; 9D6D  18 40
l_9D6F:
        LD A,(d_7335)                ; 9D6F  3A 35 73
        IN A,($FE)                   ; 9D72  DB FE
        AND $1F                      ; 9D74  E6 1F
        LD D,A                       ; 9D76  57
        LD A,(d_7334)                ; 9D77  3A 34 73
        OR D                         ; 9D7A  B2
        CP $1F                       ; 9D7B  FE 1F
        JR Z,l_9DAB                  ; 9D7D  28 2C
        LD A,(d_72D8)                ; 9D7F  3A D8 72
        CP $EE                       ; 9D82  FE EE
        JR NC,l_9DAB                 ; 9D84  30 25
        INC HL                       ; 9D86  23
        INC HL                       ; 9D87  23
        LD A,(HL)                    ; 9D88  7E
        CP $05                       ; 9D89  FE 05
        JR NC,l_9DAB                 ; 9D8B  30 1E
        AND A                        ; 9D8D  A7
        SBC HL,BC                    ; 9D8E  ED 42
        LD A,(HL)                    ; 9D90  7E
        CP $05                       ; 9D91  FE 05
        JR NC,l_9DAB                 ; 9D93  30 16
        INC (IX+0)                   ; 9D95  DD 34 00
        LD (IX+3),$00                ; 9D98  DD 36 03 00
        LD A,(d_72D8)                ; 9D9C  3A D8 72
        AND $03                      ; 9D9F  E6 03
        JR NZ,l_9DA9                 ; 9DA1  20 06
        LD HL,$2806                  ; 9DA3  21 06 28
        CALL beep                  ; 9DA6  CD A4 9C
l_9DA9:
        JR l_9DAF                    ; 9DA9  18 04
l_9DAB:
        LD (IX+2),$03                ; 9DAB  DD 36 02 03
l_9DAF:
        LD HL,(d_72D8)               ; 9DAF  2A D8 72
        LD A,(d_72DA)                ; 9DB2  3A DA 72
        INC A                        ; 9DB5  3C
        AND $03                      ; 9DB6  E6 03
        LD (d_72DA),A                ; 9DB8  32 DA 72
        ADD A,(IX+3)                 ; 9DBB  DD 86 03
        CALL draw_sprite_box                  ; 9DBE  CD 4C 9A
        LD A,(d_7355)                ; 9DC1  3A 55 73
        AND A                        ; 9DC4  A7
        RET Z                        ; 9DC5  C8
        LD A,(d_7350)                ; 9DC6  3A 50 73  (static)
        XOR $FF                      ; 9DC9  EE FF  (static)
        RET Z                        ; 9DCB  C8  (static)
        XOR $FF                      ; 9DCC  EE FF  (static)
        SUB $09                      ; 9DCE  D6 09  (static)
        LD B,A                       ; 9DD0  47  (static)
        LD A,(d_72D8)                ; 9DD1  3A D8 72  (static)
        CP B                         ; 9DD4  B8  (static)
        JR C,l_9DDB                  ; 9DD5  38 04  (static)
        SUB $13                      ; 9DD7  D6 13  (static)
        CP B                         ; 9DD9  B8  (static)
        RET C                        ; 9DDA  D8  (static)
l_9DDB:
        LD (IX+77),$01               ; 9DDB  DD 36 4D 01  (static)
        LD D,$FF                     ; 9DDF  16 FF  (static)
        LD A,(d_72DB)                ; 9DE1  3A DB 72  (static)
        AND A                        ; 9DE4  A7  (static)
        JR NZ,l_9DE9                 ; 9DE5  20 02  (static)
        LD D,$01                     ; 9DE7  16 01  (static)
l_9DE9:
        LD (IX+78),D                 ; 9DE9  DD 72 4E  (static)
        LD (IX+79),$04               ; 9DEC  DD 36 4F 04  (static)
        RET                          ; 9DF0  C9  (static)
        defs 67, 0

; Tile number at position HL (y/x); HL returns the address in the tile map.
map_tile_at:
        PUSH DE                      ; 9E34  D5
        PUSH BC                      ; 9E35  C5
        EX DE,HL                     ; 9E36  EB
        LD HL,d_61A8                 ; 9E37  21 A8 61
        LD A,D                       ; 9E3A  7A
        AND $F8                      ; 9E3B  E6 F8
        LD B,$00                     ; 9E3D  06 00
        SLA A                        ; 9E3F  CB 27
        RL B                         ; 9E41  CB 10
        SLA A                        ; 9E43  CB 27
        RL B                         ; 9E45  CB 10
        LD C,A                       ; 9E47  4F
        ADD HL,BC                    ; 9E48  09
        LD B,$00                     ; 9E49  06 00
        LD C,E                       ; 9E4B  4B
        SRL C                        ; 9E4C  CB 39
        SRL C                        ; 9E4E  CB 39
        SRL C                        ; 9E50  CB 39
        ADD HL,BC                    ; 9E52  09
        LD A,(HL)                    ; 9E53  7E
        POP BC                       ; 9E54  C1
        POP DE                       ; 9E55  D1
        RET                          ; 9E56  C9
        defb $E1,$C9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; Checks there is enough headroom for a jump.
headroom_check:
        PUSH HL                      ; 9E66  E5
        LD HL,d_72D8                 ; 9E67  21 D8 72
        LD A,E                       ; 9E6A  7B
        ADD A,$01                    ; 9E6B  C6 01
        JR C,l_9E8A                  ; 9E6D  38 1B
        ADD A,$04                    ; 9E6F  C6 04
        CP (HL)                      ; 9E71  BE
        JR C,l_9E8A                  ; 9E72  38 16
        SUB $0D                      ; 9E74  D6 0D
        JR NC,l_9E79                 ; 9E76  30 01
        XOR A                        ; 9E78  AF  (static)
l_9E79:
        CP (HL)                      ; 9E79  BE
        JR NC,l_9E8A                 ; 9E7A  30 0E
        INC HL                       ; 9E7C  23  (static)
        LD A,D                       ; 9E7D  7A  (static)
        CP (HL)                      ; 9E7E  BE  (static)
        JR NC,l_9E8A                 ; 9E7F  30 09  (static)
        ADD A,$1C                    ; 9E81  C6 1C  (static)
        CP (HL)                      ; 9E83  BE  (static)
        JR C,l_9E8A                  ; 9E84  38 04  (static)
        LD A,$01                     ; 9E86  3E 01  (static)
        POP HL                       ; 9E88  E1  (static)
        RET                          ; 9E89  C9  (static)
l_9E8A:
        XOR A                        ; 9E8A  AF
        POP HL                       ; 9E8B  E1
        RET                          ; 9E8C  C9
        defs 11, 0

; Moves Harry onto a ladder.
harry_to_ladder:
        LD IX,d_72D8                 ; 9E98  DD 21 D8 72
        LD A,(IX+0)                  ; 9E9C  DD 7E 00
        AND $07                      ; 9E9F  E6 07
        RET NZ                       ; 9EA1  C0
        LD HL,(d_72D8)               ; 9EA2  2A D8 72
        INC H                        ; 9EA5  24
        EX DE,HL                     ; 9EA6  EB
        LD HL,d_61A8                 ; 9EA7  21 A8 61
        LD B,$00                     ; 9EAA  06 00
        LD A,D                       ; 9EAC  7A
        AND $F8                      ; 9EAD  E6 F8
        SLA A                        ; 9EAF  CB 27
        RL B                         ; 9EB1  CB 10
        SLA A                        ; 9EB3  CB 27
        RL B                         ; 9EB5  CB 10
        LD C,A                       ; 9EB7  4F
        ADD HL,BC                    ; 9EB8  09
        LD B,$00                     ; 9EB9  06 00
        LD C,E                       ; 9EBB  4B
        SRL C                        ; 9EBC  CB 39
        SRL C                        ; 9EBE  CB 39
        SRL C                        ; 9EC0  CB 39
        ADD HL,BC                    ; 9EC2  09
        LD A,(HL)                    ; 9EC3  7E
        DEC A                        ; 9EC4  3D
        JR NZ,l_9EED                 ; 9EC5  20 26
        LD A,(d_732F)                ; 9EC7  3A 2F 73
        IN A,($FE)                   ; 9ECA  DB FE
        AND $1F                      ; 9ECC  E6 1F
        LD C,A                       ; 9ECE  4F
        LD A,(d_732E)                ; 9ECF  3A 2E 73
        OR C                         ; 9ED2  B1
        CP $1F                       ; 9ED3  FE 1F
        JR Z,l_9EED                  ; 9ED5  28 16
        LD (IX+3),$0D                ; 9ED7  DD 36 03 0D  (static)
        INC (IX+1)                   ; 9EDB  DD 34 01  (static)
        LD A,(d_72D9)                ; 9EDE  3A D9 72  (static)
        AND $03                      ; 9EE1  E6 03  (static)
        JR NZ,l_9EEB                 ; 9EE3  20 06  (static)
        LD HL,$1E14                  ; 9EE5  21 14 1E  (static)
        CALL beep                  ; 9EE8  CD A4 9C  (static)
l_9EEB:
        JR l_9F25                    ; 9EEB  18 38  (static)
l_9EED:
        LD BC,$0040                  ; 9EED  01 40 00
        AND A                        ; 9EF0  A7
        SBC HL,BC                    ; 9EF1  ED 42
        LD BC,$0020                  ; 9EF3  01 20 00
        LD A,D                       ; 9EF6  7A
        AND $07                      ; 9EF7  E6 07
        JR NZ,l_9EFD                 ; 9EF9  20 02
        SBC HL,BC                    ; 9EFB  ED 42
l_9EFD:
        LD A,(HL)                    ; 9EFD  7E
        DEC A                        ; 9EFE  3D
        JR NZ,l_9F32                 ; 9EFF  20 31
        LD A,(d_7331)                ; 9F01  3A 31 73  (static)
        IN A,($FE)                   ; 9F04  DB FE  (static)
        AND $1F                      ; 9F06  E6 1F  (static)
        LD C,A                       ; 9F08  4F  (static)
        LD A,(d_7330)                ; 9F09  3A 30 73  (static)
        OR C                         ; 9F0C  B1  (static)
        CP $1F                       ; 9F0D  FE 1F  (static)
        JR Z,l_9F32                  ; 9F0F  28 21  (static)
        LD (IX+3),$0D                ; 9F11  DD 36 03 0D  (static)
        DEC (IX+1)                   ; 9F15  DD 35 01  (static)
        LD A,(d_72D9)                ; 9F18  3A D9 72  (static)
        AND $03                      ; 9F1B  E6 03  (static)
        JR NZ,l_9F25                 ; 9F1D  20 06  (static)
        LD HL,$1E15                  ; 9F1F  21 15 1E  (static)
        CALL beep                  ; 9F22  CD A4 9C  (static)
l_9F25:
        LD A,(IX+2)                  ; 9F25  DD 7E 02  (static)
        INC A                        ; 9F28  3C  (static)
        AND $03                      ; 9F29  E6 03  (static)
        LD (IX+2),A                  ; 9F2B  DD 77 02  (static)
        LD (IX+77),$00               ; 9F2E  DD 36 4D 00  (static)
l_9F32:
        LD HL,(d_72D8)               ; 9F32  2A D8 72
        LD A,(IX+2)                  ; 9F35  DD 7E 02
        ADD A,(IX+3)                 ; 9F38  DD 86 03
        CALL draw_sprite_box                  ; 9F3B  CD 4C 9A
        RET                          ; 9F3E  C9
        defs 33, 0

; Moves Harry off a ladder.
harry_off_ladder:
        LD A,(d_72D9)                ; 9F60  3A D9 72
        INC A                        ; 9F63  3C
        AND $07                      ; 9F64  E6 07
        RET NZ                       ; 9F66  C0
        LD HL,(d_72D8)               ; 9F67  2A D8 72
        EX DE,HL                     ; 9F6A  EB
        LD HL,d_61A8                 ; 9F6B  21 A8 61
        LD A,D                       ; 9F6E  7A
        AND $F8                      ; 9F6F  E6 F8
        LD B,$00                     ; 9F71  06 00
        SLA A                        ; 9F73  CB 27
        RL B                         ; 9F75  CB 10
        SLA A                        ; 9F77  CB 27
        RL B                         ; 9F79  CB 10
        LD C,A                       ; 9F7B  4F
        ADD HL,BC                    ; 9F7C  09
        LD B,$00                     ; 9F7D  06 00
        LD C,E                       ; 9F7F  4B
        SRL C                        ; 9F80  CB 39
        SRL C                        ; 9F82  CB 39
        SRL C                        ; 9F84  CB 39
        ADD HL,BC                    ; 9F86  09
        LD BC,$0020                  ; 9F87  01 20 00
        LD A,(d_7333)                ; 9F8A  3A 33 73
        IN A,($FE)                   ; 9F8D  DB FE
        AND $1F                      ; 9F8F  E6 1F
        LD D,A                       ; 9F91  57
        LD A,(d_7332)                ; 9F92  3A 32 73
        OR D                         ; 9F95  B2
        CP $1F                       ; 9F96  FE 1F
        JR Z,harry_ladder_extra                  ; 9F98  28 1B
        DEC HL                       ; 9F9A  2B
        LD A,(HL)                    ; 9F9B  7E
        CP $05                       ; 9F9C  FE 05
l_9F9E:
        RET NC                       ; 9F9E  D0
        AND A                        ; 9F9F  A7
        SBC HL,BC                    ; 9FA0  ED 42
        LD A,(HL)                    ; 9FA2  7E
        CP $05                       ; 9FA3  FE 05
        RET NC                       ; 9FA5  D0
        AND A                        ; 9FA6  A7
        SBC HL,BC                    ; 9FA7  ED 42
        LD A,(HL)                    ; 9FA9  7E
        AND A                        ; 9FAA  A7
        RET Z                        ; 9FAB  C8
        CP $09                       ; 9FAC  FE 09
        RET NC                       ; 9FAE  D0
        LD A,$04                     ; 9FAF  3E 04
        LD (d_72DB),A                ; 9FB1  32 DB 72
        RET                          ; 9FB4  C9

; Ladder-related routine at 9FB5. Exact role not worked out.
harry_ladder_extra:
        LD A,(d_7335)                ; 9FB5  3A 35 73
        IN A,($FE)                   ; 9FB8  DB FE
        AND $1F                      ; 9FBA  E6 1F
        LD D,A                       ; 9FBC  57
        LD A,(d_7334)                ; 9FBD  3A 34 73
        OR D                         ; 9FC0  B2
        CP $1F                       ; 9FC1  FE 1F
        RET Z                        ; 9FC3  C8
        INC HL                       ; 9FC4  23
        INC HL                       ; 9FC5  23
        LD A,(HL)                    ; 9FC6  7E
        CP $05                       ; 9FC7  FE 05
        RET NC                       ; 9FC9  D0
        AND A                        ; 9FCA  A7
        SBC HL,BC                    ; 9FCB  ED 42
        LD A,(HL)                    ; 9FCD  7E
        CP $05                       ; 9FCE  FE 05
        RET NC                       ; 9FD0  D0
        AND A                        ; 9FD1  A7
        SBC HL,BC                    ; 9FD2  ED 42
        LD A,(HL)                    ; 9FD4  7E
        AND A                        ; 9FD5  A7
        RET Z                        ; 9FD6  C8
        CP $09                       ; 9FD7  FE 09
        RET NC                       ; 9FD9  D0
        XOR A                        ; 9FDA  AF
        LD (d_72DB),A                ; 9FDB  32 DB 72
        RET                          ; 9FDE  C9
        defs 53, 0

; Moves the two lifts one pixel row up (called every 2nd tick, d_733C): erases, steps the screen address (lift_calc) and the y
; (d_7351 / d_7354; after $A5 the lift restarts from the values at d_9787 with y = 3), draws. Returns at once when d_7350 = $FF (no lifts).
lifts_move:
        LD A,(d_7350)                ; A014  3A 50 73
        XOR $FF                      ; A017  EE FF
        RET Z                        ; A019  C8
        LD IX,d_72D8                 ; A01A  DD 21 D8 72
        LD HL,(d_734E)               ; A01E  2A 4E 73
        LD C,$00                     ; A021  0E 00
        CALL lift_invalidate                  ; A023  CD 7B A0
        LD A,(d_7351)                ; A026  3A 51 73
        INC A                        ; A029  3C
        CP $A6                       ; A02A  FE A6
        JR C,l_A03B                  ; A02C  38 0D
        LD HL,d_9787                 ; A02E  21 87 97
        LD BC,$0004                  ; A031  01 04 00
        LD DE,d_734E                 ; A034  11 4E 73
        LDIR                         ; A037  ED B0
        LD A,$03                     ; A039  3E 03
l_A03B:
        LD (d_7351),A                ; A03B  32 51 73
        LD HL,(d_734E)               ; A03E  2A 4E 73
        CALL lift_calc                  ; A041  CD A9 A0
        LD (d_734E),HL               ; A044  22 4E 73
        LD C,$FF                     ; A047  0E FF
        CALL lift_invalidate                  ; A049  CD 7B A0
        LD HL,(d_7352)               ; A04C  2A 52 73
        LD C,$00                     ; A04F  0E 00
        CALL lift_invalidate                  ; A051  CD 7B A0
        LD A,(d_7354)                ; A054  3A 54 73
        INC A                        ; A057  3C
        CP $A6                       ; A058  FE A6
        JR C,l_A069                  ; A05A  38 0D
        LD HL,d_9787                 ; A05C  21 87 97
        LD BC,$0003                  ; A05F  01 03 00
        LD DE,d_7352                 ; A062  11 52 73
        LDIR                         ; A065  ED B0
        LD A,$03                     ; A067  3E 03
l_A069:
        LD (d_7354),A                ; A069  32 54 73
        LD HL,(d_7352)               ; A06C  2A 52 73
        CALL lift_calc                  ; A06F  CD A9 A0
        LD (d_7352),HL               ; A072  22 52 73
        LD C,$FF                     ; A075  0E FF
        CALL lift_invalidate                  ; A077  CD 7B A0
        RET                          ; A07A  C9

; Draws (C = $FF) or erases (C = 0) a lift at the screen address HL: 2 bytes on 4 pixel rows, raw bytes with no background.
; Also zeroes the byte at HL - 1 and, unless it is in column 0, the byte at HL + 2 (first row only).
; Those two bytes are what wipes pixels of Harry left beside a pad: Harry is erased at his x and y of that moment, which a lift
; under him or a landing on a pad has changed since his last draw, so the erase does not always cover all of him (seen in a
; trace: a pixel left at $50A7 was cleared by the write at $A07D when the next pad's top row came level with it).
lift_invalidate:
        PUSH HL                      ; A07B  E5
        DEC HL                       ; A07C  2B
        LD (HL),$00                  ; A07D  36 00
        INC HL                       ; A07F  23
        INC HL                       ; A080  23
        INC HL                       ; A081  23
        LD A,L                       ; A082  7D
        AND $1F                      ; A083  E6 1F
        JR Z,l_A089                  ; A085  28 02
        LD (HL),$00                  ; A087  36 00
l_A089:
        POP HL                       ; A089  E1
        LD B,$04                     ; A08A  06 04
l_A08C:
        LD (HL),C                    ; A08C  71
        INC L                        ; A08D  2C
        LD (HL),C                    ; A08E  71
        DEC L                        ; A08F  2D
        CALL lift_next_platform                  ; A090  CD 96 A0
        DJNZ l_A08C                  ; A093  10 F7
        RET                          ; A095  C9

; Next pixel row down for the screen address HL (the same step as in draw_sprite_box at $9B5B).
lift_next_platform:
        INC H                        ; A096  24
        LD A,H                       ; A097  7C
        AND $07                      ; A098  E6 07
        RET NZ                       ; A09A  C0
        LD A,H                       ; A09B  7C
        SUB $08                      ; A09C  D6 08
        LD H,A                       ; A09E  67
        LD A,L                       ; A09F  7D
        ADD A,$20                    ; A0A0  C6 20
        LD L,A                       ; A0A2  6F
        RET NC                       ; A0A3  D0
        LD A,H                       ; A0A4  7C
        ADD A,$08                    ; A0A5  C6 08
        LD H,A                       ; A0A7  67
        RET                          ; A0A8  C9

; Previous pixel row (one row up) for the screen address HL.
lift_calc:
        DEC H                        ; A0A9  25
        LD A,H                       ; A0AA  7C
        AND $07                      ; A0AB  E6 07
        CP $07                       ; A0AD  FE 07
        JR NZ,l_A0BF                 ; A0AF  20 0E
        LD A,H                       ; A0B1  7C
        ADD A,$08                    ; A0B2  C6 08
        LD H,A                       ; A0B4  67
        LD A,L                       ; A0B5  7D
        SUB $20                      ; A0B6  D6 20
        LD L,A                       ; A0B8  6F
        JR NC,l_A0BF                 ; A0B9  30 04
        LD A,H                       ; A0BB  7C
        SUB $08                      ; A0BC  D6 08
        LD H,A                       ; A0BE  67
l_A0BF:
        RET                          ; A0BF  C9
        defb $7C,$D6,$08,$67,$C9,$73,$21,$CE

; Moves the mother duck (the duck in the cage and the free duck). Called every 12th tick (d_734C).
; Speeds d_734A / d_734B: one step towards Harry in x and in y at every call, kept within -5 .. 5. Then: erase (blank frame $0C at the old
; place, $A113), redraw_attrs, add the speeds to d_7348 / d_7349 (turned round at the edges), draw at the new place ($A18E: frame 8, or $0A
; when Harry is to the left, plus d_734D). Below level counter 8 the place is forced to x = 8, y = $98: the duck stays in the cage.
duck_move:
        LD IX,d_72D8                 ; A0C8  DD 21 D8 72
        LD A,(d_7348)                ; A0CC  3A 48 73
        CP (IX+0)                    ; A0CF  DD BE 00
        JR Z,l_A0ED                  ; A0D2  28 19
        JR C,l_A0E1                  ; A0D4  38 0B
        LD A,(d_734A)                ; A0D6  3A 4A 73  (static)
        DEC A                        ; A0D9  3D  (static)
        CP $FA                       ; A0DA  FE FA  (static)
        JR NZ,l_A0DF                 ; A0DC  20 01  (static)
        INC A                        ; A0DE  3C  (static)
l_A0DF:
        JR l_A0EA                    ; A0DF  18 09  (static)
l_A0E1:
        LD A,(d_734A)                ; A0E1  3A 4A 73
        INC A                        ; A0E4  3C
        CP $06                       ; A0E5  FE 06
        JR NZ,l_A0EA                 ; A0E7  20 01
        DEC A                        ; A0E9  3D
l_A0EA:
        LD (d_734A),A                ; A0EA  32 4A 73
l_A0ED:
        LD A,(d_7349)                ; A0ED  3A 49 73
        CP (IX+1)                    ; A0F0  DD BE 01
        JR Z,l_A10E                  ; A0F3  28 19
        JR C,l_A102                  ; A0F5  38 0B
        LD A,(d_734B)                ; A0F7  3A 4B 73
        DEC A                        ; A0FA  3D
        CP $FA                       ; A0FB  FE FA
        JR NZ,l_A100                 ; A0FD  20 01
        INC A                        ; A0FF  3C
l_A100:
        JR l_A10B                    ; A100  18 09
l_A102:
        LD A,(d_734B)                ; A102  3A 4B 73  (static)
        INC A                        ; A105  3C  (static)
        CP $06                       ; A106  FE 06  (static)
        JR NZ,l_A10B                 ; A108  20 01  (static)
        DEC A                        ; A10A  3D  (static)
l_A10B:
        LD (d_734B),A                ; A10B  32 4B 73
l_A10E:
        LD HL,(d_7348)               ; A10E  2A 48 73
        LD A,$0C                     ; A111  3E 0C
        CALL draw_sprite_box                  ; A113  CD 4C 9A
        CALL redraw_attrs                  ; A116  CD 38 95
        LD A,(d_7348)                ; A119  3A 48 73
        BIT 7,(IX+114)               ; A11C  DD CB 72 7E
        JR NZ,l_A135                 ; A120  20 13
        ADD A,(IX+114)               ; A122  DD 86 72
        CP $EE                       ; A125  FE EE
        JR C,l_A144                  ; A127  38 1B
        SUB (IX+114)                 ; A129  DD 96 72  (static)
        SUB (IX+114)                 ; A12C  DD 96 72  (static)
        LD (IX+114),$FB              ; A12F  DD 36 72 FB  (static)
        JR l_A144                    ; A133  18 0F  (static)
l_A135:
        ADD A,(IX+114)               ; A135  DD 86 72  (static)
        JR C,l_A144                  ; A138  38 0A  (static)
        SUB (IX+114)                 ; A13A  DD 96 72  (static)
        SUB (IX+114)                 ; A13D  DD 96 72  (static)
        LD (IX+114),$05              ; A140  DD 36 72 05  (static)
l_A144:
        LD (d_7348),A                ; A144  32 48 73
        LD A,(d_7349)                ; A147  3A 49 73
        ADD A,(IX+115)               ; A14A  DD 86 73
        CP $A6                       ; A14D  FE A6
        JR C,l_A15D                  ; A14F  38 0C
        SUB (IX+115)                 ; A151  DD 96 73  (static)
        SUB (IX+115)                 ; A154  DD 96 73  (static)
        LD (IX+115),$FB              ; A157  DD 36 73 FB  (static)
        JR l_A16B                    ; A15B  18 0E  (static)
l_A15D:
        CP $14                       ; A15D  FE 14
        JR NC,l_A16B                 ; A15F  30 0A
        SUB (IX+115)                 ; A161  DD 96 73  (static)
        SUB (IX+115)                 ; A164  DD 96 73  (static)
        LD (IX+115),$05              ; A167  DD 36 73 05  (static)
l_A16B:
        LD (d_7349),A                ; A16B  32 49 73
        LD A,(d_6EEB)                ; A16E  3A EB 6E
        CP $08                       ; A171  FE 08
        JR NC,l_A17B                 ; A173  30 06
        LD HL,d_9808                 ; A175  21 08 98
        LD (d_7348),HL               ; A178  22 48 73
l_A17B:
        LD HL,(d_7348)               ; A17B  2A 48 73
        LD C,$08                     ; A17E  0E 08
        LD A,(d_72D8)                ; A180  3A D8 72
        CP (IX+112)                  ; A183  DD BE 70
        JR NC,l_A18A                 ; A186  30 02
        LD C,$0A                     ; A188  0E 0A  (static)
l_A18A:
        LD A,C                       ; A18A  79
        ADD A,(IX+117)               ; A18B  DD 86 75
        CALL draw_sprite_box                  ; A18E  CD 4C 9A
        LD A,(d_734D)                ; A191  3A 4D 73
        XOR $01                      ; A194  EE 01
        LD (d_734D),A                ; A196  32 4D 73
        RET                          ; A199  C9
        defs 30, 0

; Decreases the timer and the bonus.
timer_tick:
        LD HL,d_7341                 ; A1B8  21 41 73
        LD DE,$0003                  ; A1BB  11 03 00
        INC B                        ; A1BE  04
        DEC B                        ; A1BF  05
        JR Z,l_A1C3                  ; A1C0  28 01
        ADD HL,DE                    ; A1C2  19
l_A1C3:
        LD A,$FF                     ; A1C3  3E FF
        LD D,$03                     ; A1C5  16 03
l_A1C7:
        DEC (HL)                     ; A1C7  35
        CP (HL)                      ; A1C8  BE
        JR NZ,l_A1DE                 ; A1C9  20 13
        DEC D                        ; A1CB  15
        JR NZ,timer_extra                 ; A1CC  20 0B
        POP HL                       ; A1CE  E1  (static)
        INC B                        ; A1CF  04  (static)
        DEC B                        ; A1D0  05  (static)
        RET NZ                       ; A1D1  C0  (static)
        PUSH HL                      ; A1D2  E5  (static)
        LD HL,d_7347                 ; A1D3  21 47 73  (static)
        LD (HL),$00                  ; A1D6  36 00  (static)
        RET                          ; A1D8  C9  (static)

; Routine after timer_tick. Exact role not worked out.
timer_extra:
        LD (HL),$09                  ; A1D9  36 09
        DEC HL                       ; A1DB  2B
        JR l_A1C7                    ; A1DC  18 E9
l_A1DE:
        LD DE,$000A                  ; A1DE  11 0A 00
        LD HL,$4053                  ; A1E1  21 53 40
        INC B                        ; A1E4  04
        DEC B                        ; A1E5  05
        JR Z,l_A1E9                  ; A1E6  28 01
        ADD HL,DE                    ; A1E8  19
l_A1E9:
        EX DE,HL                     ; A1E9  EB
        LD HL,d_733F                 ; A1EA  21 3F 73
        INC B                        ; A1ED  04
        DEC B                        ; A1EE  05
        JR Z,l_A1F4                  ; A1EF  28 03
        INC HL                       ; A1F1  23
        INC HL                       ; A1F2  23
        INC HL                       ; A1F3  23
l_A1F4:
        PUSH HL                      ; A1F4  E5
        POP BC                       ; A1F5  C1
        LD IXL,$03                   ; A1F6  DD 2E 03
l_A1F9:
        PUSH DE                      ; A1F9  D5
        LD A,(BC)                    ; A1FA  0A
        SLA A                        ; A1FB  CB 27
        SLA A                        ; A1FD  CB 27
        SLA A                        ; A1FF  CB 27
        LD HL,d_89E0                 ; A201  21 E0 89
        PUSH BC                      ; A204  C5
        LD B,$00                     ; A205  06 00
        LD C,A                       ; A207  4F
        ADD HL,BC                    ; A208  09
        LD B,$08                     ; A209  06 08
l_A20B:
        LD A,(HL)                    ; A20B  7E
        LD (DE),A                    ; A20C  12
        INC D                        ; A20D  14
        INC L                        ; A20E  2C
        DJNZ l_A20B                  ; A20F  10 FA
        POP BC                       ; A211  C1
        POP DE                       ; A212  D1
        INC DE                       ; A213  13
        INC BC                       ; A214  03
        DEC IXL                      ; A215  DD 2D
        JR NZ,l_A1F9                 ; A217  20 E0
        RET                          ; A219  C9
        defb $C9,$00

; Called by poll_loop on every poll while Harry is in the air (d_7325 not 0).
; Last poll of the tick (d_72DC = 1): restores the attributes, adds d_7326 to x (turned round at x = 0 and from x = $EE), tests the two lifts
; (harry_vertical) and goes to harry_fall. Any other poll: state 1 returns; state 2 goes to l_A2B5.
check_falling:
        LD A,(d_72DC)                ; A21C  3A DC 72
        DEC A                        ; A21F  3D
        JR Z,l_A22A                  ; A220  28 08
        LD A,(d_7325)                ; A222  3A 25 73
        DEC A                        ; A225  3D
        JP NZ,l_A2B5                 ; A226  C2 B5 A2
        RET                          ; A229  C9
l_A22A:
        LD HL,(d_72D8)               ; A22A  2A D8 72
        CALL redraw_attrs                  ; A22D  CD 38 95
        LD A,L                       ; A230  7D
        ADD A,(IX+78)                ; A231  DD 86 4E
        LD (d_72D8),A                ; A234  32 D8 72
        AND A                        ; A237  A7
        JR NZ,l_A240                 ; A238  20 06
        LD (IX+78),$01               ; A23A  DD 36 4E 01  (static)
        JR l_A248                    ; A23E  18 08  (static)
l_A240:
        CP $EE                       ; A240  FE EE
        JR C,l_A248                  ; A242  38 04
        LD (IX+78),$FF               ; A244  DD 36 4E FF  (static)
l_A248:
        LD HL,d_7351                 ; A248  21 51 73
        CALL harry_vertical                  ; A24B  CD 56 A2
        LD HL,d_7354                 ; A24E  21 54 73
        CALL harry_vertical                  ; A251  CD 56 A2
        JR harry_fall                    ; A254  18 3E

; Moves Harry up or down while jumping or falling.
harry_vertical:
        LD A,(d_7350)                ; A256  3A 50 73
        XOR $FF                      ; A259  EE FF
        RET Z                        ; A25B  C8
        XOR $FF                      ; A25C  EE FF
        SUB $09                      ; A25E  D6 09
        LD B,A                       ; A260  47
        LD A,(d_72D8)                ; A261  3A D8 72
        CP B                         ; A264  B8
        RET C                        ; A265  D8
        SUB $13                      ; A266  D6 13
        CP B                         ; A268  B8
        RET NC                       ; A269  D0
        LD B,$06                     ; A26A  06 06  (static)
        LD A,(HL)                    ; A26C  7E  (static)
        ADD A,$10                    ; A26D  C6 10  (static)
l_A26F:
        DEC A                        ; A26F  3D  (static)
        CP (IX+1)                    ; A270  DD BE 01  (static)
        JR Z,l_A278                  ; A273  28 03  (static)
        DJNZ l_A26F                  ; A275  10 F8  (static)
        RET                          ; A277  C9  (static)
l_A278:
        LD (IX+125),$01              ; A278  DD 36 7D 01  (static)
        LD (IX+77),$00               ; A27C  DD 36 4D 00  (static)
        EX DE,HL                     ; A280  EB  (static)
        LD HL,(d_72D8)               ; A281  2A D8 72  (static)
        LD A,$0C                     ; A284  3E 0C  (static)
        CALL draw_sprite_box                  ; A286  CD 4C 9A  (static)
        LD A,(DE)                    ; A289  1A  (static)
        ADD A,$11                    ; A28A  C6 11  (static)
        LD (d_72D9),A                ; A28C  32 D9 72  (static)
        POP HL                       ; A28F  E1  (static)
        CALL random_sound                  ; A290  CD 89 A3  (static)
        RET                          ; A293  C9  (static)

; Makes Harry fall when in mid-air.
; State 1: counts d_7327 down (once a tick); at 0 the state becomes 2, falling (d_732A = $FF, d_7326 = 0, d_7327 = $FA).
; State 2 (l_A2B5, every poll): counts d_7328 down and makes one vertical step of one pixel when it reaches 0, then waits d_7327 polls again.
; Going up (d_732A = 1) the wait grows by $0A a step; when it wraps to 4 the jump is at its top (d_732A = 0, wait 0 = 256 polls). Going down
; (d_732A = $FF) the wait starts at $FA and shrinks by $0A a step, not below $28. Every step redraws Harry (harry_redraw_air): the jump is
; a fixed number of polls, and its length in time is these polls plus the box draws.
harry_fall:
        LD A,(d_7325)                ; A294  3A 25 73
        DEC A                        ; A297  3D
        JR NZ,l_A2B5                 ; A298  20 1B
        DEC (IX+79)                  ; A29A  DD 35 4F
        JR NZ,l_A30F                 ; A29D  20 70
        LD HL,d_7325                 ; A29F  21 25 73
        LD (HL),$02                  ; A2A2  36 02
        INC HL                       ; A2A4  23
        LD (HL),$00                  ; A2A5  36 00
        INC HL                       ; A2A7  23
        LD (HL),$FA                  ; A2A8  36 FA
        LD (IX+82),$FF               ; A2AA  DD 36 52 FF
        LD A,(d_72DA)                ; A2AE  3A DA 72
        CALL harry_redraw_air                  ; A2B1  CD 7F A3
        RET                          ; A2B4  C9
l_A2B5:
        LD HL,d_7328                 ; A2B5  21 28 73
        DEC (HL)                     ; A2B8  35
        RET NZ                       ; A2B9  C0
        PUSH HL                      ; A2BA  E5
        LD HL,(d_72D8)               ; A2BB  2A D8 72
        CALL redraw_attrs                  ; A2BE  CD 38 95
        POP HL                       ; A2C1  E1
        LD A,(d_732A)                ; A2C2  3A 2A 73
        DEC A                        ; A2C5  3D
        JR Z,l_A2E1                  ; A2C6  28 19
        INC A                        ; A2C8  3C
        AND A                        ; A2C9  A7
        JR NZ,l_A2D4                 ; A2CA  20 08
l_A2CC:
        LD (IX+82),$FF               ; A2CC  DD 36 52 FF  (static)
        LD A,$FA                     ; A2D0  3E FA  (static)
        JR l_A2FB                    ; A2D2  18 27  (static)
l_A2D4:
        LD A,(d_7327)                ; A2D4  3A 27 73
        SUB $0A                      ; A2D7  D6 0A
        CP $28                       ; A2D9  FE 28
        JR NC,l_A2DF                 ; A2DB  30 02
        LD A,$28                     ; A2DD  3E 28  (static)
l_A2DF:
        JR l_A2FB                    ; A2DF  18 1A
l_A2E1:
        LD A,(d_72D9)                ; A2E1  3A D9 72  (static)
        CP $A7                       ; A2E4  FE A7  (static)
        JR C,l_A2ED                  ; A2E6  38 05  (static)
        INC (IX+1)                   ; A2E8  DD 34 01  (static)
        JR l_A2CC                    ; A2EB  18 DF  (static)
l_A2ED:
        LD A,(d_7327)                ; A2ED  3A 27 73  (static)
        ADD A,$0A                    ; A2F0  C6 0A  (static)
        CP $04                       ; A2F2  FE 04  (static)
        JR NZ,l_A2FB                 ; A2F4  20 05  (static)
        LD (IX+82),$00               ; A2F6  DD 36 52 00  (static)
        XOR A                        ; A2FA  AF  (static)
l_A2FB:
        LD (d_7327),A                ; A2FB  32 27 73
        LD (HL),A                    ; A2FE  77
        LD A,(d_72D9)                ; A2FF  3A D9 72
        ADD A,(IX+82)                ; A302  DD 86 52
        CP $10                       ; A305  FE 10
        JR NC,harry_jump_fall                 ; A307  30 03
        POP HL                       ; A309  E1
        POP HL                       ; A30A  E1
        RET                          ; A30B  C9

; Jumping/falling related routine.
; Seen on level 2 at y = 87, the same in the original and in the patched game: a jump to the left started at x = 0 takes Harry
; through the left edge of the screen (x goes 0, 255, 253, ...) and he flies on along the right side.  Started at x = 1, 2 or 3 he
; turns round at the edge instead.  Walking to the left stops at x = 1, so he only stands at x = 0 after landing there.
harry_jump_fall:
        LD (d_72D9),A                ; A30C  32 D9 72
l_A30F:
        LD A,$01                     ; A30F  3E 01
        CALL harry_redraw_air                  ; A311  CD 7F A3
        CALL map_tile_at                  ; A314  CD 34 9E
        LD BC,$003F                  ; A317  01 3F 00
        AND A                        ; A31A  A7
        SBC HL,BC                    ; A31B  ED 42
        LD A,(d_732A)                ; A31D  3A 2A 73
        DEC A                        ; A320  3D
        JR Z,l_A356                  ; A321  28 33
        LD A,(d_7326)                ; A323  3A 26 73
        AND A                        ; A326  A7
        JR Z,l_A356                  ; A327  28 2D
        DEC A                        ; A329  3D
        JR Z,l_A33E                  ; A32A  28 12
        LD A,(d_72D8)                ; A32C  3A D8 72  (static)
        AND $07                      ; A32F  E6 07  (static)
        CP $04                       ; A331  FE 04  (static)
        JR NC,l_A356                 ; A333  30 21  (static)
        DEC HL                       ; A335  2B  (static)
        LD A,(HL)                    ; A336  7E  (static)
        INC HL                       ; A337  23  (static)
        CP $05                       ; A338  FE 05  (static)
        JR NZ,l_A356                 ; A33A  20 1A  (static)
        JR l_A34E                    ; A33C  18 10  (static)
l_A33E:
        LD A,(d_72D8)                ; A33E  3A D8 72
        AND $07                      ; A341  E6 07
        CP $03                       ; A343  FE 03
        JR C,l_A356                  ; A345  38 0F
        INC HL                       ; A347  23
        LD A,(HL)                    ; A348  7E
        DEC HL                       ; A349  2B
        CP $05                       ; A34A  FE 05
        JR NZ,l_A356                 ; A34C  20 08
l_A34E:
        LD A,(d_7326)                ; A34E  3A 26 73  (static)
        XOR $FE                      ; A351  EE FE  (static)
        LD (d_7326),A                ; A353  32 26 73  (static)
l_A356:
        LD A,(HL)                    ; A356  7E
        AND A                        ; A357  A7
        RET Z                        ; A358  C8
        CP $05                       ; A359  FE 05  (static)
        JR Z,l_A36A                  ; A35B  28 0D  (static)
        CP $03                       ; A35D  FE 03  (static)
        RET NC                       ; A35F  D0  (static)
        DEC HL                       ; A360  2B  (static)
        DEC A                        ; A361  3D  (static)
        JR Z,l_A366                  ; A362  28 02  (static)
        INC HL                       ; A364  23  (static)
        INC HL                       ; A365  23  (static)
l_A366:
        LD A,(HL)                    ; A366  7E  (static)
        CP $05                       ; A367  FE 05  (static)
        RET NZ                       ; A369  C0  (static)
l_A36A:
        LD A,(d_72D9)                ; A36A  3A D9 72  (static)
        INC A                        ; A36D  3C  (static)
        AND $07                      ; A36E  E6 07  (static)
        RET NZ                       ; A370  C0  (static)
        LD (IX+77),$00               ; A371  DD 36 4D 00  (static)
        LD HL,d_72DB                 ; A375  21 DB 72  (static)
        LD A,(HL)                    ; A378  7E  (static)
        CP $0D                       ; A379  FE 0D  (static)
        RET NZ                       ; A37B  C0  (static)
        LD (HL),$00                  ; A37C  36 00  (static)
        RET                          ; A37E  C9  (static)

; Redraws Harry after a move in mid-air.
harry_redraw_air:
        LD HL,(d_72D8)               ; A37F  2A D8 72
        ADD A,(IX+3)                 ; A382  DD 86 03
        CALL draw_sprite_box                  ; A385  CD 4C 9A
        RET                          ; A388  C9

; Plays a random sound.
random_sound:
        LD A,R                       ; A389  ED 5F  (static)
        AND $07                      ; A38B  E6 07  (static)
        INC A                        ; A38D  3C  (static)
        LD B,A                       ; A38E  47  (static)
        LD HL,$A398                  ; A38F  21 98 A3  (static)
l_A392:
        INC HL                       ; A392  23  (static)
        DJNZ l_A392                  ; A393  10 FD  (static)
        LD A,(HL)                    ; A395  7E  (static)
        JP start_tune                    ; A396  C3 EB 9C  (static)
        defb $04,$06,$09,$0D,$12,$16,$04,$0D,$C9,$4F,$04,$C9,$00,$00

; Updates the score.
add_score:
        LD A,B                       ; A3A7  78
        AND A                        ; A3A8  A7
        JR Z,l_A3E6                  ; A3A9  28 3B
        LD A,$0A                     ; A3AB  3E 0A
l_A3AD:
        LD HL,d_6ECC                 ; A3AD  21 CC 6E
l_A3B0:
        INC (HL)                     ; A3B0  34
        CP (HL)                      ; A3B1  BE
        JR NZ,l_A3B9                 ; A3B2  20 05
        LD (HL),$00                  ; A3B4  36 00
        DEC HL                       ; A3B6  2B
        JR l_A3B0                    ; A3B7  18 F7
l_A3B9:
        DJNZ l_A3AD                  ; A3B9  10 F2
        LD HL,d_736E                 ; A3BB  21 6E 73
        LD A,(d_6EC9)                ; A3BE  3A C9 6E
        CP (HL)                      ; A3C1  BE
        JR Z,l_A3E6                  ; A3C2  28 22
        LD (HL),A                    ; A3C4  77  (static)
        LD A,(d_733B)                ; A3C5  3A 3B 73  (static)
        ADD A,$EF                    ; A3C8  C6 EF  (static)
        LD H,$6E                     ; A3CA  26 6E  (static)
        LD L,A                       ; A3CC  6F  (static)
        LD C,(HL)                    ; A3CD  4E  (static)
        INC (HL)                     ; A3CE  34  (static)
        SUB $EF                      ; A3CF  D6 EF  (static)
        LD B,A                       ; A3D1  47  (static)
        LD A,C                       ; A3D2  79  (static)
        CP $06                       ; A3D3  FE 06  (static)
        JR NC,l_A3E6                 ; A3D5  30 0F  (static)
        LD A,$FD                     ; A3D7  3E FD  (static)
l_A3D9:
        ADD A,$07                    ; A3D9  C6 07  (static)
        DJNZ l_A3D9                  ; A3DB  10 FC  (static)
        ADD A,C                      ; A3DD  81  (static)
        LD L,A                       ; A3DE  6F  (static)
        LD H,$16                     ; A3DF  26 16  (static)
        LD A,$B6                     ; A3E1  3E B6  (static)
        CALL tile_entry_slide                  ; A3E3  CD 40 9C  (static)
l_A3E6:
        LD DE,(d_733D)               ; A3E6  ED 5B 3D 73
        LD BC,d_6EC8                 ; A3EA  01 C8 6E
        LD IXL,$06                   ; A3ED  DD 2E 06
l_A3F0:
        PUSH DE                      ; A3F0  D5
        LD A,(BC)                    ; A3F1  0A
        SLA A                        ; A3F2  CB 27
        SLA A                        ; A3F4  CB 27
        SLA A                        ; A3F6  CB 27
        PUSH BC                      ; A3F8  C5
        ADD A,$70                    ; A3F9  C6 70
        LD H,$86                     ; A3FB  26 86
        LD L,A                       ; A3FD  6F
        LD B,$08                     ; A3FE  06 08
l_A400:
        LD A,(HL)                    ; A400  7E
        LD (DE),A                    ; A401  12
        INC D                        ; A402  14
        INC L                        ; A403  2C
        DJNZ l_A400                  ; A404  10 FA
        POP BC                       ; A406  C1
        POP DE                       ; A407  D1
        INC DE                       ; A408  13
        INC BC                       ; A409  03
        DEC IXL                      ; A40A  DD 2D
        JR NZ,l_A3F0                 ; A40C  20 E2
        RET                          ; A40E  C9
        defb $00

; Entry point of the game after the loader.
game_start:
        LD HL,d_732D                 ; A410  21 2D 73  (static)
        LD (HL),$06                  ; A413  36 06  (static)
        LD HL,d_736F                 ; A415  21 6F 73  (static)
        LD (HL),$00                  ; A418  36 00  (static)
        LD A,$B2                     ; A41A  3E B2  (static)
        LD I,A                       ; A41C  ED 47  (static)
        IM 2                         ; A41E  ED 5E  (static)

; Shows the home screen with the score board.
home_screen:
        CALL clear_screen                  ; A420  CD 9E AB  (static)
        LD H,$02                     ; A423  26 02  (static)
        LD BC,d_9630                 ; A425  01 30 96  (static)
l_A428:
        LD L,$00                     ; A428  2E 00  (static)
l_A42A:
        LD A,(BC)                    ; A42A  0A  (static)
        CALL tile_entry_slide                  ; A42B  CD 40 9C  (static)
        INC BC                       ; A42E  03  (static)
        INC L                        ; A42F  2C  (static)
        LD A,L                       ; A430  7D  (static)
        CP $0E                       ; A431  FE 0E  (static)
        JR NZ,l_A42A                 ; A433  20 F5  (static)
        INC H                        ; A435  24  (static)
        LD A,H                       ; A436  7C  (static)
        CP $18                       ; A437  FE 18  (static)
        JR NZ,l_A428                 ; A439  20 ED  (static)
        CALL scoreboard                  ; A43B  CD AD AB  (static)
        LD HL,$5800                  ; A43E  21 00 58  (static)
        LD B,$0E                     ; A441  06 0E  (static)
        LD C,$04                     ; A443  0E 04  (static)
        LD A,$03                     ; A445  3E 03  (static)
        CALL print_block                  ; A447  CD 37 AA  (static)
        LD C,$07                     ; A44A  0E 07  (static)
        LD A,$06                     ; A44C  3E 06  (static)
        CALL print_block                  ; A44E  CD 37 AA  (static)
        LD C,$0A                     ; A451  0E 0A  (static)
        LD A,$04                     ; A453  3E 04  (static)
        CALL print_block                  ; A455  CD 37 AA  (static)
        LD HL,d_AE0C                 ; A458  21 0C AE  (static)
        LD A,(d_736F)                ; A45B  3A 6F 73  (static)
        AND A                        ; A45E  A7  (static)
        JR NZ,l_A46E                 ; A45F  20 0D  (static)
        CALL play_theme                  ; A461  CD 60 AB  (static)
        LD A,$14                     ; A464  3E 14  (static)
        CALL start_tune                  ; A466  CD EB 9C  (static)
        LD A,$01                     ; A469  3E 01  (static)
        LD (d_736F),A                ; A46B  32 6F 73  (static)
l_A46E:
        LD HL,$5AE0                  ; A46E  21 E0 5A  (static)
        LD B,$20                     ; A471  06 20  (static)
l_A473:
        LD (HL),$05                  ; A473  36 05  (static)
        INC HL                       ; A475  23  (static)
        DJNZ l_A473                  ; A476  10 FB  (static)
        LD HL,d_732C                 ; A478  21 2C 73  (static)
        LD (HL),$4E                  ; A47B  36 4E  (static)

; Scrolls the ticker text of the home screen.
home_ticker:
        LD HL,$50E1                  ; A47D  21 E1 50  (static)
        CALL ticker_scroll                  ; A480  CD 7B AB  (static)
        LD BC,$01F4                  ; A483  01 F4 01  (static)
        CALL pause                  ; A486  CD 21 A9  (static)
        LD HL,d_732B                 ; A489  21 2B 73  (static)
        DEC (HL)                     ; A48C  35  (static)
        JR NZ,l_A4AB                 ; A48D  20 1C  (static)
        LD (HL),$08                  ; A48F  36 08  (static)
        LD HL,d_AC7C                 ; A491  21 7C AC  (static)
        LD A,(d_732C)                ; A494  3A 2C 73  (static)
        INC A                        ; A497  3C  (static)
        CP $4E                       ; A498  FE 4E  (static)
        JR C,l_A49D                  ; A49A  38 01  (static)
        XOR A                        ; A49C  AF  (static)
l_A49D:
        LD (d_732C),A                ; A49D  32 2C 73  (static)
        LD E,A                       ; A4A0  5F  (static)
        LD D,$00                     ; A4A1  16 00  (static)
        ADD HL,DE                    ; A4A3  19  (static)
        LD A,(HL)                    ; A4A4  7E  (static)
        LD HL,$001E                  ; A4A5  21 1E 00  (static)
        CALL tile_entry_slide                  ; A4A8  CD 40 9C  (static)
; Home screen keys: S starts a game, R redefines the keys, I shows the instructions screen.
l_A4AB:
        LD A,$FD                     ; A4AB  3E FD  (static)
        IN A,($FE)                   ; A4AD  DB FE  (static)
        BIT 1,A                      ; A4AF  CB 4F  (static)
        JP Z,new_game                  ; A4B1  CA 9D A5  (static)
        LD A,$FB                     ; A4B4  3E FB  (static)
        IN A,($FE)                   ; A4B6  DB FE  (static)
        BIT 3,A                      ; A4B8  CB 5F  (static)
        JP Z,redefine_keys                  ; A4BA  CA 49 AA  (static)
        LD A,$DF                     ; A4BD  3E DF  (static)
        IN A,($FE)                   ; A4BF  DB FE  (static)
        BIT 2,A                      ; A4C1  CB 57  (static)
        JR Z,instructions_screen                  ; A4C3  28 03  (static)
        JP home_ticker                    ; A4C5  C3 7D A4  (static)

; Shows the instructions screen.
instructions_screen:
        CALL clear_screen                  ; A4C8  CD 9E AB  (static)
        LD H,$03                     ; A4CB  26 03  (static)
        LD BC,d_8390                 ; A4CD  01 90 83  (static)
l_A4D0:
        LD L,$00                     ; A4D0  2E 00  (static)
l_A4D2:
        LD A,(BC)                    ; A4D2  0A  (static)
        CALL tile_entry_slide                  ; A4D3  CD 40 9C  (static)
        INC BC                       ; A4D6  03  (static)
        INC L                        ; A4D7  2C  (static)
        LD A,L                       ; A4D8  7D  (static)
        CP $20                       ; A4D9  FE 20  (static)
        JR NZ,l_A4D2                 ; A4DB  20 F5  (static)
        INC H                        ; A4DD  24  (static)
        INC H                        ; A4DE  24  (static)
        LD A,H                       ; A4DF  7C  (static)
        CP $19                       ; A4E0  FE 19  (static)
        JR NZ,l_A4D0                 ; A4E2  20 EC  (static)
        LD HL,$5800                  ; A4E4  21 00 58  (static)
        LD B,$20                     ; A4E7  06 20  (static)
        LD C,$06                     ; A4E9  0E 06  (static)
        LD A,$05                     ; A4EB  3E 05  (static)
        CALL print_block                  ; A4ED  CD 37 AA  (static)
        LD C,$09                     ; A4F0  0E 09  (static)
        LD A,$17                     ; A4F2  3E 17  (static)
        CALL print_block                  ; A4F4  CD 37 AA  (static)
        LD C,$06                     ; A4F7  0E 06  (static)
        LD A,$05                     ; A4F9  3E 05  (static)
        CALL print_block                  ; A4FB  CD 37 AA  (static)
        LD C,$03                     ; A4FE  0E 03  (static)
        LD A,$04                     ; A500  3E 04  (static)
        CALL print_block                  ; A502  CD 37 AA  (static)
        LD HL,d_732C                 ; A505  21 2C 73  (static)
        LD (HL),$57                  ; A508  36 57  (static)
        INC HL                       ; A50A  23  (static)
        LD (HL),$0A                  ; A50B  36 0A  (static)
        CALL death_sound                  ; A50D  CD 60 A9  (static)
        LD A,$18                     ; A510  3E 18  (static)
        CALL start_tune                  ; A512  CD EB 9C  (static)

; Scrolls the ticker text of the instructions screen.
instructions_ticker:
        LD HL,$50E1                  ; A515  21 E1 50  (static)
        CALL ticker_scroll                  ; A518  CD 7B AB  (static)
        LD BC,$01F4                  ; A51B  01 F4 01  (static)
        CALL pause                  ; A51E  CD 21 A9  (static)
        LD HL,d_732B                 ; A521  21 2B 73  (static)
        DEC (HL)                     ; A524  35  (static)
        JR NZ,l_A543                 ; A525  20 1C  (static)
        LD (HL),$08                  ; A527  36 08  (static)
        LD HL,d_ACCA                 ; A529  21 CA AC  (static)
        LD A,(d_732C)                ; A52C  3A 2C 73  (static)
        INC A                        ; A52F  3C  (static)
        CP $57                       ; A530  FE 57  (static)
        JR C,l_A535                  ; A532  38 01  (static)
        XOR A                        ; A534  AF  (static)
l_A535:
        LD (d_732C),A                ; A535  32 2C 73  (static)
        LD E,A                       ; A538  5F  (static)
        LD D,$00                     ; A539  16 00  (static)
        ADD HL,DE                    ; A53B  19  (static)
        LD A,(HL)                    ; A53C  7E  (static)
        LD HL,$001E                  ; A53D  21 1E 00  (static)
        CALL tile_entry_slide                  ; A540  CD 40 9C  (static)
l_A543:
        LD A,(d_7373)                ; A543  3A 73 73  (static)
        XOR $FF                      ; A546  EE FF  (static)
        JR NZ,l_A553                 ; A548  20 09  (static)
        LD A,$FD                     ; A54A  3E FD  (static)
        IN A,($FE)                   ; A54C  DB FE  (static)
        BIT 1,A                      ; A54E  CB 4F  (static)
        JP Z,new_game                  ; A550  CA 9D A5  (static)
l_A553:
        LD A,$FB                     ; A553  3E FB  (static)
        IN A,($FE)                   ; A555  DB FE  (static)
        BIT 3,A                      ; A557  CB 5F  (static)
        JP Z,redefine_keys                  ; A559  CA 49 AA  (static)
        LD A,$F7                     ; A55C  3E F7  (static)
        IN A,($FE)                   ; A55E  DB FE  (static)
        AND $07                      ; A560  E6 07  (static)
        CP $07                       ; A562  FE 07  (static)
        JR Z,l_A59A                  ; A564  28 34  (static)

; Highlights the input type line (1, 2 or 3).
highlight_input_type:
        LD B,A                       ; A566  47  (static)
        LD A,(d_732D)                ; A567  3A 2D 73  (static)
        CP B                         ; A56A  B8  (static)
        JR Z,l_A59A                  ; A56B  28 2D  (static)
        LD HL,$5980                  ; A56D  21 80 59  (static)
        CP $05                       ; A570  FE 05  (static)
        JR Z,l_A57C                  ; A572  28 08  (static)
        LD HL,$59C0                  ; A574  21 C0 59  (static)
        JR C,l_A57C                  ; A577  38 03  (static)
        LD HL,$5940                  ; A579  21 40 59  (static)
l_A57C:
        LD A,B                       ; A57C  78  (static)
        LD (d_732D),A                ; A57D  32 2D 73  (static)
        CP $05                       ; A580  FE 05  (static)
        LD DE,$5980                  ; A582  11 80 59  (static)
        JR Z,l_A58F                  ; A585  28 08  (static)
        LD DE,$59C0                  ; A587  11 C0 59  (static)
        JR C,l_A58F                  ; A58A  38 03  (static)
        LD DE,$5940                  ; A58C  11 40 59  (static)
l_A58F:
        LD B,$20                     ; A58F  06 20  (static)
        LD A,$97                     ; A591  3E 97  (static)
l_A593:
        LD (HL),$17                  ; A593  36 17  (static)
        LD (DE),A                    ; A595  12  (static)
        INC HL                       ; A596  23  (static)
        INC DE                       ; A597  13  (static)
        DJNZ l_A593                  ; A598  10 F9  (static)
l_A59A:
        JP instructions_ticker                    ; A59A  C3 15 A5  (static)

; Initialises a new game.
new_game:
        LD IXH,$02                   ; A59D  DD 26 02  (static)
        CALL transition_1                  ; A5A0  CD 29 A9  (static)
        LD HL,$4000                  ; A5A3  21 00 40  (static)
        LD BC,$1800                  ; A5A6  01 00 18  (static)
l_A5A9:
        LD (HL),$00                  ; A5A9  36 00  (static)
        INC HL                       ; A5AB  23  (static)
        DEC BC                       ; A5AC  0B  (static)
        LD A,B                       ; A5AD  78  (static)
        OR C                         ; A5AE  B1  (static)
        JR NZ,l_A5A9                 ; A5AF  20 F8  (static)
        LD IXH,$01                   ; A5B1  DD 26 01  (static)
        CALL transition_1                  ; A5B4  CD 29 A9  (static)
        LD C,$E8                     ; A5B7  0E E8  (static)
        LD DE,d_AD21                 ; A5B9  11 21 AD  (static)
        LD B,$01                     ; A5BC  06 01  (static)
l_A5BE:
        DJNZ l_A5CA                  ; A5BE  10 0A  (static)
        LD A,(DE)                    ; A5C0  1A  (static)
        INC DE                       ; A5C1  13  (static)
        LD HL,$0C1E                  ; A5C2  21 1E 0C  (static)
        CALL tile_entry_slide                  ; A5C5  CD 40 9C  (static)
        LD B,$08                     ; A5C8  06 08  (static)
l_A5CA:
        LD HL,$4861                  ; A5CA  21 61 48  (static)
        CALL ticker_scroll                  ; A5CD  CD 7B AB  (static)
        DEC C                        ; A5D0  0D  (static)
        JR NZ,l_A5BE                 ; A5D1  20 EB  (static)
l_A5D3:
        LD A,$F7                     ; A5D3  3E F7  (static)
        IN A,($FE)                   ; A5D5  DB FE  (static)
        AND $0F                      ; A5D7  E6 0F  (static)
        CP $0F                       ; A5D9  FE 0F  (static)
        JR Z,l_A5D3                  ; A5DB  28 F6  (static)
        LD B,$00                     ; A5DD  06 00  (static)
l_A5DF:
        INC B                        ; A5DF  04  (static)
        SRL A                        ; A5E0  CB 3F  (static)
        JR C,l_A5DF                  ; A5E2  38 FB  (static)
        LD L,B                       ; A5E4  68  (static)
        LD H,$01                     ; A5E5  26 01  (static)
        LD (d_733A),HL               ; A5E7  22 3A 73  (static)
        LD B,$F0                     ; A5EA  06 F0  (static)
l_A5EC:
        LD HL,$4861                  ; A5EC  21 61 48
        CALL ticker_scroll                  ; A5EF  CD 7B AB
        DJNZ l_A5EC                  ; A5F2  10 F8
        LD A,$05                     ; A5F4  3E 05
        LD DE,d_61A8                 ; A5F6  11 A8 61
l_A5F9:
        LD BC,$02A0                  ; A5F9  01 A0 02
        LD HL,d_B3B0                 ; A5FC  21 B0 B3
        LDIR                         ; A5FF  ED B0
        DEC A                        ; A601  3D
        JR NZ,l_A5F9                 ; A602  20 F5
        LD HL,d_6EC8                 ; A604  21 C8 6E
        LD B,$1E                     ; A607  06 1E
l_A609:
        LD (HL),$00                  ; A609  36 00
        INC HL                       ; A60B  23
        DJNZ l_A609                  ; A60C  10 FB
        LD B,$05                     ; A60E  06 05
l_A610:
        LD (HL),$0C                  ; A610  36 0C
        INC HL                       ; A612  23
        DJNZ l_A610                  ; A613  10 FB
        LD B,$05                     ; A615  06 05
l_A617:
        LD (HL),$00                  ; A617  36 00
        INC HL                       ; A619  23
        DJNZ l_A617                  ; A61A  10 FB
        LD B,$04                     ; A61C  06 04
l_A61E:
        LD (HL),$05                  ; A61E  36 05
        INC HL                       ; A620  23
        DJNZ l_A61E                  ; A621  10 FB
        LD HL,l_9F9E                 ; A623  21 9E 9F
        LD (d_AD58),HL               ; A626  22 58 AD
        CALL death_sound                  ; A629  CD 60 A9

; Runs levels until the game is over (calls level_run at AE9C).
level_loop:
        LD A,(d_733A)                ; A62C  3A 3A 73
        DEC A                        ; A62F  3D
        JR Z,l_A653                  ; A630  28 21
        LD A,(d_733B)                ; A632  3A 3B 73  (static)
        ADD A,$19                    ; A635  C6 19  (static)
        CALL start_tune                  ; A637  CD EB 9C  (static)
        LD BC,d_AD49                 ; A63A  01 49 AD  (static)
        LD A,(d_733B)                ; A63D  3A 3B 73  (static)
        ADD A,$30                    ; A640  C6 30  (static)
        LD (d_AD50),A                ; A642  32 50 AD  (static)
        LD C,$08                     ; A645  0E 08  (static)
        LD DE,d_AD49                 ; A647  11 49 AD  (static)
        CALL game_over_text                  ; A64A  CD CE A9  (static)
        LD BC,$0000                  ; A64D  01 00 00  (static)
        CALL pause                  ; A650  CD 21 A9  (static)
l_A653:
        CALL level_run                  ; A653  CD 9C AE
        CALL death_sound                  ; A656  CD 60 A9
        LD BC,$0006                  ; A659  01 06 00  (static)
        LD HL,d_6EC8                 ; A65C  21 C8 6E  (static)
        LD A,(d_733B)                ; A65F  3A 3B 73  (static)
l_A662:
        ADD HL,BC                    ; A662  09  (static)
        DEC A                        ; A663  3D  (static)
        JR NZ,l_A662                 ; A664  20 FC  (static)
        EX DE,HL                     ; A666  EB  (static)
        LD HL,d_6EC8                 ; A667  21 C8 6E  (static)
        LDIR                         ; A66A  ED B0  (static)
        IM 2                         ; A66C  ED 5E  (static)
        LD A,(d_6EE6)                ; A66E  3A E6 6E  (static)
        AND A                        ; A671  A7  (static)
        JP NZ,harry_died                 ; A672  C2 FE A6  (static)
l_A675:
        LD A,(d_7347)                ; A675  3A 47 73  (static)
        AND A                        ; A678  A7  (static)
        JR Z,l_A68D                  ; A679  28 12  (static)
        LD B,$00                     ; A67B  06 00  (static)
        CALL timer_tick                  ; A67D  CD B8 A1  (static)
        LD B,$01                     ; A680  06 01  (static)
        CALL add_score                  ; A682  CD A7 A3  (static)
        LD HL,$1E04                  ; A685  21 04 1E  (static)
        CALL beep                  ; A688  CD A4 9C  (static)
        JR l_A675                    ; A68B  18 E8  (static)
l_A68D:
        LD D,$02                     ; A68D  16 02  (static)
l_A68F:
        LD BC,$0000                  ; A68F  01 00 00  (static)
        CALL pause                  ; A692  CD 21 A9  (static)
        DEC D                        ; A695  15  (static)
        JR NZ,l_A68F                 ; A696  20 F7  (static)
        CALL transition_4                  ; A698  CD 68 A9  (static)
        LD BC,$0006                  ; A69B  01 06 00  (static)
        LD HL,d_6EC8                 ; A69E  21 C8 6E  (static)
        LD A,(d_733B)                ; A6A1  3A 3B 73  (static)
l_A6A4:
        ADD HL,BC                    ; A6A4  09  (static)
        DEC A                        ; A6A5  3D  (static)
        JR NZ,l_A6A4                 ; A6A6  20 FC  (static)
        EX DE,HL                     ; A6A8  EB  (static)
        LD HL,d_6EC8                 ; A6A9  21 C8 6E  (static)
        LDIR                         ; A6AC  ED B0  (static)
        LD HL,d_6EEB                 ; A6AE  21 EB 6E  (static)
        INC (HL)                     ; A6B1  34  (static)
        LD A,(HL)                    ; A6B2  7E  (static)
        INC A                        ; A6B3  3C  (static)
        CP $C8                       ; A6B4  FE C8  (static)
        JR C,l_A6BC                  ; A6B6  38 04  (static)
        SUB $C8                      ; A6B8  D6 C8  (static)
        JR l_A6C2                    ; A6BA  18 06  (static)
l_A6BC:
        CP $64                       ; A6BC  FE 64  (static)
        JR C,l_A6C2                  ; A6BE  38 02  (static)
        SUB $64                      ; A6C0  D6 64  (static)
l_A6C2:
        LD B,$00                     ; A6C2  06 00  (static)
l_A6C4:
        SUB $0A                      ; A6C4  D6 0A  (static)
        JR C,l_A6CB                  ; A6C6  38 03  (static)
        INC B                        ; A6C8  04  (static)
        JR l_A6C4                    ; A6C9  18 F9  (static)
l_A6CB:
        ADD A,$A8                    ; A6CB  C6 A8  (static)
        LD (d_AD59),A                ; A6CD  32 59 AD  (static)
        LD A,B                       ; A6D0  78  (static)
        AND A                        ; A6D1  A7  (static)
        JR Z,l_A6D6                  ; A6D2  28 02  (static)
        ADD A,$9E                    ; A6D4  C6 9E  (static)
l_A6D6:
        LD (d_AD58),A                ; A6D6  32 58 AD  (static)
        LD DE,d_AD52                 ; A6D9  11 52 AD  (static)
        LD C,$08                     ; A6DC  0E 08  (static)
        CALL game_over_text                  ; A6DE  CD CE A9  (static)
        LD DE,d_61A8                 ; A6E1  11 A8 61
        LD BC,$02A0                  ; A6E4  01 A0 02
        LD HL,$B110                  ; A6E7  21 10 B1
        LD A,(d_6EEB)                ; A6EA  3A EB 6E
        AND $07                      ; A6ED  E6 07
        INC A                        ; A6EF  3C
l_A6F0:
        ADD HL,BC                    ; A6F0  09
        DEC A                        ; A6F1  3D
        JR NZ,l_A6F0                 ; A6F2  20 FC
        LDIR                         ; A6F4  ED B0
        LD A,$0C                     ; A6F6  3E 0C
        LD (d_6EE6),A                ; A6F8  32 E6 6E
        JP l_A653                    ; A6FB  C3 53 A6

; Handles Harry's death (lives, game over).
harry_died:
        LD HL,d_AE6A                 ; A6FE  21 6A AE  (static)
        CALL play_theme                  ; A701  CD 60 AB  (static)
        CALL random_sound_after_death                  ; A704  CD E4 AA  (static)
        CALL death_sound                  ; A707  CD 60 A9  (static)
        LD BC,$0000                  ; A70A  01 00 00  (static)
        CALL pause                  ; A70D  CD 21 A9  (static)
        CALL clear_screen                  ; A710  CD 9E AB  (static)
        LD HL,d_7342                 ; A713  21 42 73  (static)
        LD A,(HL)                    ; A716  7E  (static)
        CP $FF                       ; A717  FE FF  (static)
        JR NZ,l_A72D                 ; A719  20 12  (static)
        INC HL                       ; A71B  23  (static)
        LD A,$09                     ; A71C  3E 09  (static)
        CP (HL)                      ; A71E  BE  (static)
        JR NZ,l_A72D                 ; A71F  20 0C  (static)
        INC HL                       ; A721  23  (static)
        CP (HL)                      ; A722  BE  (static)
        JR NZ,l_A72D                 ; A723  20 08  (static)
        LD DE,d_AD5A                 ; A725  11 5A AD  (static)
        LD C,$0D                     ; A728  0E 0D  (static)
        CALL game_over_text                  ; A72A  CD CE A9  (static)
l_A72D:
        LD HL,d_61A8                 ; A72D  21 A8 61  (static)
        LD BC,$02A0                  ; A730  01 A0 02  (static)
        PUSH HL                      ; A733  E5  (static)
        POP DE                       ; A734  D1  (static)
        LD A,(d_733B)                ; A735  3A 3B 73  (static)
l_A738:
        ADD HL,BC                    ; A738  09  (static)
        DEC A                        ; A739  3D  (static)
        JR NZ,l_A738                 ; A73A  20 FC  (static)
        EX DE,HL                     ; A73C  EB  (static)
        LDIR                         ; A73D  ED B0  (static)
        LD A,(d_733B)                ; A73F  3A 3B 73  (static)
        LD E,A                       ; A742  5F  (static)
        LD D,$00                     ; A743  16 00  (static)
        LD HL,d_6EE6                 ; A745  21 E6 6E  (static)
        LD A,(HL)                    ; A748  7E  (static)
        ADD HL,DE                    ; A749  19  (static)
        LD (HL),A                    ; A74A  77  (static)
        LD HL,d_6EEB                 ; A74B  21 EB 6E  (static)
        LD A,(HL)                    ; A74E  7E  (static)
        ADD HL,DE                    ; A74F  19  (static)
        LD (HL),A                    ; A750  77  (static)
        LD HL,d_6EEF                 ; A751  21 EF 6E  (static)
        ADD HL,DE                    ; A754  19  (static)
        DEC (HL)                     ; A755  35  (static)
        JR NZ,l_A768                 ; A756  20 10  (static)
        LD C,$12                     ; A758  0E 12  (static)
        LD A,(d_733A)                ; A75A  3A 3A 73  (static)
        DEC A                        ; A75D  3D  (static)
        JR NZ,l_A762                 ; A75E  20 02  (static)
        LD C,$09                     ; A760  0E 09  (static)
l_A762:
        LD DE,d_AD3F                 ; A762  11 3F AD  (static)
        CALL game_over_text                  ; A765  CD CE A9  (static)
l_A768:
        LD B,$05                     ; A768  06 05  (static)
l_A76A:
        LD HL,(d_733A)               ; A76A  2A 3A 73  (static)
        LD A,H                       ; A76D  7C  (static)
        CP L                         ; A76E  BD  (static)
        JR NZ,l_A772                 ; A76F  20 01  (static)
        XOR A                        ; A771  AF  (static)
l_A772:
        INC A                        ; A772  3C  (static)
        LD (d_733B),A                ; A773  32 3B 73  (static)
        LD HL,d_6EEF                 ; A776  21 EF 6E  (static)
        LD E,A                       ; A779  5F  (static)
        LD D,$00                     ; A77A  16 00  (static)
        ADD HL,DE                    ; A77C  19  (static)
        LD A,(HL)                    ; A77D  7E  (static)
        AND A                        ; A77E  A7  (static)
        JR NZ,l_A785                 ; A77F  20 04  (static)
        DJNZ l_A76A                  ; A781  10 E7  (static)
        JR animation_a7bc                    ; A783  18 37  (static)
l_A785:
        LD BC,$0004                  ; A785  01 04 00  (static)
        AND A                        ; A788  A7  (static)
        SBC HL,BC                    ; A789  ED 42  (static)
        LD A,(HL)                    ; A78B  7E  (static)
        LD (d_6EEB),A                ; A78C  32 EB 6E  (static)
        INC BC                       ; A78F  03  (static)
        AND A                        ; A790  A7  (static)
        SBC HL,BC                    ; A791  ED 42  (static)
        LD A,(HL)                    ; A793  7E  (static)
        LD (d_6EE6),A                ; A794  32 E6 6E  (static)
        LD A,(d_733B)                ; A797  3A 3B 73  (static)
        INC BC                       ; A79A  03  (static)
        LD HL,d_6EC8                 ; A79B  21 C8 6E  (static)
l_A79E:
        ADD HL,BC                    ; A79E  09  (static)
        DEC A                        ; A79F  3D  (static)
        JR NZ,l_A79E                 ; A7A0  20 FC  (static)
        LD DE,d_6EC8                 ; A7A2  11 C8 6E  (static)
        LDIR                         ; A7A5  ED B0  (static)
        LD A,(d_733B)                ; A7A7  3A 3B 73  (static)
        LD HL,d_61A8                 ; A7AA  21 A8 61  (static)
        LD BC,$02A0                  ; A7AD  01 A0 02  (static)
l_A7B0:
        ADD HL,BC                    ; A7B0  09  (static)
        DEC A                        ; A7B1  3D  (static)
        JR NZ,l_A7B0                 ; A7B2  20 FC  (static)
        LD DE,d_61A8                 ; A7B4  11 A8 61  (static)
        LDIR                         ; A7B7  ED B0  (static)
        JP level_loop                    ; A7B9  C3 2C A6  (static)

; Animation routine. Exact role not worked out.
animation_a7bc:
        LD IXH,$02                   ; A7BC  DD 26 02  (static)
        CALL transition_1                  ; A7BF  CD 29 A9  (static)
        LD HL,$4000                  ; A7C2  21 00 40  (static)
        LD BC,$0018                  ; A7C5  01 18 00  (static)
l_A7C8:
        LD (HL),$00                  ; A7C8  36 00  (static)
        INC HL                       ; A7CA  23  (static)
        DJNZ l_A7C8                  ; A7CB  10 FB  (static)
        DEC C                        ; A7CD  0D  (static)
        JR NZ,l_A7C8                 ; A7CE  20 F8  (static)
        LD IXH,$01                   ; A7D0  DD 26 01  (static)
        CALL transition_1                  ; A7D3  CD 29 A9  (static)
        LD HL,d_6ECE                 ; A7D6  21 CE 6E  (static)
        LD B,$18                     ; A7D9  06 18  (static)
l_A7DB:
        LD A,(HL)                    ; A7DB  7E  (static)
        ADD A,$30                    ; A7DC  C6 30  (static)
        LD (HL),A                    ; A7DE  77  (static)
        INC HL                       ; A7DF  23  (static)
        DJNZ l_A7DB                  ; A7E0  10 F9  (static)
        LD A,$01                     ; A7E2  3E 01  (static)
        LD HL,d_6ECE                 ; A7E4  21 CE 6E  (static)
l_A7E7:
        ADD A,$30                    ; A7E7  C6 30  (static)
        LD (d_AD72),A                ; A7E9  32 72 AD  (static)
        SUB $30                      ; A7EC  D6 30  (static)
        CALL before_screen                  ; A7EE  CD 0C A8  (static)
        DEC D                        ; A7F1  15  (static)
        JR Z,l_A7FB                  ; A7F2  28 07  (static)
        PUSH AF                      ; A7F4  F5  (static)
        PUSH HL                      ; A7F5  E5  (static)
        CALL transition_4                  ; A7F6  CD 68 A9  (static)
        POP HL                       ; A7F9  E1  (static)
        POP AF                       ; A7FA  F1  (static)
l_A7FB:
        LD DE,$0006                  ; A7FB  11 06 00  (static)
        ADD HL,DE                    ; A7FE  19  (static)
        LD IX,d_72D8                 ; A7FF  DD 21 D8 72  (static)
        CP (IX+98)                   ; A803  DD BE 62  (static)
        JP Z,home_screen                  ; A806  CA 20 A4  (static)
        INC A                        ; A809  3C  (static)
        JR l_A7E7                    ; A80A  18 DB  (static)

; Called before the main screen or the high scores.
before_screen:
        PUSH BC                      ; A80C  C5  (static)
        PUSH AF                      ; A80D  F5  (static)
        PUSH HL                      ; A80E  E5  (static)
        LD B,$0A                     ; A80F  06 0A  (static)
        LD DE,d_97B9                 ; A811  11 B9 97  (static)
l_A814:
        CALL routine_aa0c                  ; A814  CD 0C AA  (static)
        DEC A                        ; A817  3D  (static)
        JR Z,enter_name                  ; A818  28 0E  (static)
        LD C,$10                     ; A81A  0E 10  (static)
l_A81C:
        INC DE                       ; A81C  13  (static)
        DEC C                        ; A81D  0D  (static)
        JR NZ,l_A81C                 ; A81E  20 FC  (static)
        DJNZ l_A814                  ; A820  10 F2  (static)
        POP HL                       ; A822  E1  (static)
        POP AF                       ; A823  F1  (static)
        POP BC                       ; A824  C1  (static)
        LD D,$01                     ; A825  16 01  (static)
        RET                          ; A827  C9  (static)

; The player enters a name in the high score table.
enter_name:
        LD IXH,B                     ; A828  DD 60  (static)
        LD HL,d_983F                 ; A82A  21 3F 98  (static)
        DEC B                        ; A82D  05  (static)
        JR Z,l_A844                  ; A82E  28 14  (static)
        LD HL,$0000                  ; A830  21 00 00  (static)
        LD DE,$0010                  ; A833  11 10 00  (static)
l_A836:
        ADD HL,DE                    ; A836  19  (static)
        DJNZ l_A836                  ; A837  10 FD  (static)
        PUSH HL                      ; A839  E5  (static)
        POP BC                       ; A83A  C1  (static)
        LD DE,d_984E                 ; A83B  11 4E 98  (static)
        LD HL,d_983E                 ; A83E  21 3E 98  (static)
        LDDR                         ; A841  ED B8  (static)
        INC HL                       ; A843  23  (static)
l_A844:
        LD B,$0A                     ; A844  06 0A  (static)
l_A846:
        LD (HL),$00                  ; A846  36 00  (static)
        INC HL                       ; A848  23  (static)
        DJNZ l_A846                  ; A849  10 FB  (static)
        LD BC,$0006                  ; A84B  01 06 00  (static)
        PUSH HL                      ; A84E  E5  (static)
        POP DE                       ; A84F  D1  (static)
        POP HL                       ; A850  E1  (static)
        PUSH HL                      ; A851  E5  (static)
        PUSH DE                      ; A852  D5  (static)
        LDIR                         ; A853  ED B0  (static)
        LD C,$0B                     ; A855  0E 0B  (static)
        LD H,$17                     ; A857  26 17  (static)
        LD DE,d_AD67                 ; A859  11 67 AD  (static)
l_A85C:
        LD L,$00                     ; A85C  2E 00  (static)
        LD B,$0F                     ; A85E  06 0F  (static)
l_A860:
        LD A,(DE)                    ; A860  1A  (static)
        INC DE                       ; A861  13  (static)
        CALL tile_entry_slide                  ; A862  CD 40 9C  (static)
        INC L                        ; A865  2C  (static)
        DJNZ l_A860                  ; A866  10 F8  (static)
        DEC H                        ; A868  25  (static)
        DEC H                        ; A869  25  (static)
        DEC C                        ; A86A  0D  (static)
        JR NZ,l_A85C                 ; A86B  20 EF  (static)
        CALL scoreboard                  ; A86D  CD AD AB  (static)
        LD HL,$5800                  ; A870  21 00 58  (static)
        LD A,$03                     ; A873  3E 03  (static)
        LD B,$0F                     ; A875  06 0F  (static)
        LD C,$04                     ; A877  0E 04  (static)
        CALL print_block                  ; A879  CD 37 AA  (static)
        INC A                        ; A87C  3C  (static)
        LD C,$09                     ; A87D  0E 09  (static)
        CALL print_block                  ; A87F  CD 37 AA  (static)
        LD A,$02                     ; A882  3E 02  (static)
        CALL print_block                  ; A884  CD 37 AA  (static)
        CALL death_sound                  ; A887  CD 60 A9  (static)
        LD A,$07                     ; A88A  3E 07  (static)
        CALL start_tune                  ; A88C  CD EB 9C  (static)
        CALL death_sound                  ; A88F  CD 60 A9  (static)
        POP HL                       ; A892  E1  (static)
        LD BC,$000A                  ; A893  01 0A 00  (static)
        AND A                        ; A896  A7  (static)
        SBC HL,BC                    ; A897  ED 42  (static)
        EX DE,HL                     ; A899  EB  (static)
        LD A,IXH                     ; A89A  DD 7C  (static)
        SLA A                        ; A89C  CB 27  (static)
        INC A                        ; A89E  3C  (static)
        LD H,A                       ; A89F  67  (static)
        IM 1                         ; A8A0  ED 56  (static)
        LD L,$10                     ; A8A2  2E 10  (static)
l_A8A4:
        LD A,$B7                     ; A8A4  3E B7  (static)
        CALL tile_entry_slide                  ; A8A6  CD 40 9C  (static)
l_A8A9:
        LD A,($5C04)                 ; A8A9  3A 04 5C  (static)
        XOR $FF                      ; A8AC  EE FF  (static)
        JR NZ,l_A8A9                 ; A8AE  20 F9  (static)
l_A8B0:
        HALT                         ; A8B0  76  (static)
        LD A,($5C04)                 ; A8B1  3A 04 5C  (static)
        XOR $FF                      ; A8B4  EE FF  (static)
        JR Z,l_A8B0                  ; A8B6  28 F8  (static)
        LD A,($5C08)                 ; A8B8  3A 08 5C  (static)
        CP $0D                       ; A8BB  FE 0D  (static)
        JR Z,l_A8E4                  ; A8BD  28 25  (static)
        CP $0C                       ; A8BF  FE 0C  (static)
        JR NZ,l_A8D1                 ; A8C1  20 0E  (static)
        LD A,L                       ; A8C3  7D  (static)
        CP $10                       ; A8C4  FE 10  (static)
        JR Z,l_A8B0                  ; A8C6  28 E8  (static)
        XOR A                        ; A8C8  AF  (static)
        DEC DE                       ; A8C9  1B  (static)
        LD (DE),A                    ; A8CA  12  (static)
        CALL tile_entry_slide                  ; A8CB  CD 40 9C  (static)
        DEC L                        ; A8CE  2D  (static)
        JR l_A8A4                    ; A8CF  18 D3  (static)
l_A8D1:
        CP $20                       ; A8D1  FE 20  (static)
        JR C,l_A8B0                  ; A8D3  38 DB  (static)
        LD B,A                       ; A8D5  47  (static)
        LD A,L                       ; A8D6  7D  (static)
        CP $19                       ; A8D7  FE 19  (static)
        JR Z,l_A8B0                  ; A8D9  28 D5  (static)
        LD A,B                       ; A8DB  78  (static)
        LD (DE),A                    ; A8DC  12  (static)
        CALL tile_entry_slide                  ; A8DD  CD 40 9C  (static)
        INC L                        ; A8E0  2C  (static)
        INC DE                       ; A8E1  13  (static)
        JR l_A8A4                    ; A8E2  18 C0  (static)
l_A8E4:
        POP HL                       ; A8E4  E1  (static)
        POP AF                       ; A8E5  F1  (static)
        POP BC                       ; A8E6  C1  (static)
        LD D,$02                     ; A8E7  16 02  (static)
        IM 2                         ; A8E9  ED 5E  (static)
        RET                          ; A8EB  C9  (static)

; Animated screen transition.
transition:
        PUSH AF                      ; A8EC  F5  (static)
        PUSH HL                      ; A8ED  E5  (static)
        PUSH BC                      ; A8EE  C5  (static)
        PUSH DE                      ; A8EF  D5  (static)
        PUSH HL                      ; A8F0  E5  (static)
        POP BC                       ; A8F1  C1  (static)
        CALL attr_buffer_addr                  ; A8F2  CD 23 AA  (static)
        EX DE,HL                     ; A8F5  EB  (static)
        LD A,B                       ; A8F6  78  (static)
        SUB H                        ; A8F7  94  (static)
        LD B,H                       ; A8F8  44  (static)
        LD H,A                       ; A8F9  67  (static)
        LD A,C                       ; A8FA  79  (static)
        ADD A,L                      ; A8FB  85  (static)
        LD C,L                       ; A8FC  4D  (static)
        LD L,A                       ; A8FD  6F  (static)
        CALL attr_buffer_addr                  ; A8FE  CD 23 AA  (static)
        LD A,(d_732C)                ; A901  3A 2C 73  (static)
l_A904:
        LD (DE),A                    ; A904  12  (static)
        LD (HL),A                    ; A905  77  (static)
        INC DE                       ; A906  13  (static)
        DEC HL                       ; A907  2B  (static)
        DEC C                        ; A908  0D  (static)
        JR NZ,l_A904                 ; A909  20 F9  (static)
        LD IXL,B                     ; A90B  DD 68  (static)
        LD BC,$0020                  ; A90D  01 20 00  (static)
l_A910:
        LD (DE),A                    ; A910  12  (static)
        LD (HL),A                    ; A911  77  (static)
        AND A                        ; A912  A7  (static)
        SBC HL,BC                    ; A913  ED 42  (static)
        EX DE,HL                     ; A915  EB  (static)
        ADD HL,BC                    ; A916  09  (static)
        EX DE,HL                     ; A917  EB  (static)
        DEC IXL                      ; A918  DD 2D  (static)
        JR NZ,l_A910                 ; A91A  20 F4  (static)
        POP DE                       ; A91C  D1  (static)
        POP BC                       ; A91D  C1  (static)
        POP HL                       ; A91E  E1  (static)
        POP AF                       ; A91F  F1  (static)
        RET                          ; A920  C9  (static)

; Pause routine.
pause:
        PUSH AF                      ; A921  F5  (static)
l_A922:
        DEC BC                       ; A922  0B  (static)
        LD A,B                       ; A923  78  (static)
        OR C                         ; A924  B1  (static)
        JR NZ,l_A922                 ; A925  20 FB  (static)
        POP AF                       ; A927  F1  (static)
        RET                          ; A928  C9  (static)

; Transition with 1 square.
transition_1:
        LD HL,$0C0B                  ; A929  21 0B 0C  (static)
        LD DE,$0109                  ; A92C  11 09 01  (static)
        LD A,$12                     ; A92F  3E 12  (static)
        DEC IXH                      ; A931  DD 25  (static)
        JR NZ,l_A937                 ; A933  20 02  (static)
        LD A,$03                     ; A935  3E 03  (static)
l_A937:
        INC IXH                      ; A937  DD 24  (static)
        LD B,$0C                     ; A939  06 0C  (static)
l_A93B:
        LD (d_732C),A                ; A93B  32 2C 73  (static)
        CALL transition                  ; A93E  CD EC A8  (static)
        PUSH BC                      ; A941  C5  (static)
        LD BC,$1388                  ; A942  01 88 13  (static)
        CALL pause                  ; A945  CD 21 A9  (static)
        POP BC                       ; A948  C1  (static)
        INC H                        ; A949  24  (static)
        DEC L                        ; A94A  2D  (static)
        INC D                        ; A94B  14  (static)
        INC D                        ; A94C  14  (static)
        INC E                        ; A94D  1C  (static)
        INC E                        ; A94E  1C  (static)
        DEC IXH                      ; A94F  DD 25  (static)
        JR Z,l_A95B                  ; A951  28 08  (static)
        ADD A,$09                    ; A953  C6 09  (static)
        CP $30                       ; A955  FE 30  (static)
        JR C,l_A95B                  ; A957  38 02  (static)
        LD A,$12                     ; A959  3E 12  (static)
l_A95B:
        INC IXH                      ; A95B  DD 24  (static)
        DJNZ l_A93B                  ; A95D  10 DC  (static)
        RET                          ; A95F  C9  (static)

; Called when Harry dies.
death_sound:
        LD A,(d_7373)                ; A960  3A 73 73
        XOR $FF                      ; A963  EE FF
        JR NZ,death_sound                 ; A965  20 F9
        RET                          ; A967  C9

; Transition with 4 squares.
transition_4:
        LD IXH,$00                   ; A968  DD 26 00  (static)
        LD HL,d_732C                 ; A96B  21 2C 73  (static)
        LD (HL),$09                  ; A96E  36 09  (static)
l_A970:
        LD HL,$0605                  ; A970  21 05 06  (static)
        LD D,$01                     ; A973  16 01  (static)
l_A975:
        PUSH HL                      ; A975  E5  (static)
        PUSH DE                      ; A976  D5  (static)
        LD E,D                       ; A977  5A  (static)
        CALL transition                  ; A978  CD EC A8  (static)
        LD A,$14                     ; A97B  3E 14  (static)
        ADD A,L                      ; A97D  85  (static)
        LD L,A                       ; A97E  6F  (static)
        LD A,$0C                     ; A97F  3E 0C  (static)
        ADD A,H                      ; A981  84  (static)
        LD H,A                       ; A982  67  (static)
        CALL transition                  ; A983  CD EC A8  (static)
        LD A,$08                     ; A986  3E 08  (static)
        ADD A,E                      ; A988  83  (static)
        LD E,A                       ; A989  5F  (static)
        LD A,L                       ; A98A  7D  (static)
        SUB $14                      ; A98B  D6 14  (static)
        LD L,A                       ; A98D  6F  (static)
        LD A,$08                     ; A98E  3E 08  (static)
        ADD A,E                      ; A990  83  (static)
        CALL transition                  ; A991  CD EC A8  (static)
        LD A,H                       ; A994  7C  (static)
        SUB $0C                      ; A995  D6 0C  (static)
        LD H,A                       ; A997  67  (static)
        LD A,$0C                     ; A998  3E 0C  (static)
        ADD A,L                      ; A99A  85  (static)
        LD L,A                       ; A99B  6F  (static)
        CALL transition_after_death                  ; A99C  CD FA A9  (static)
        POP DE                       ; A99F  D1  (static)
        POP HL                       ; A9A0  E1  (static)
        INC E                        ; A9A1  1C  (static)
        INC E                        ; A9A2  1C  (static)
        INC D                        ; A9A3  14  (static)
        INC D                        ; A9A4  14  (static)
        INC H                        ; A9A5  24  (static)
        DEC L                        ; A9A6  2D  (static)
        LD BC,$2710                  ; A9A7  01 10 27  (static)
        CALL pause                  ; A9AA  CD 21 A9  (static)
        LD A,L                       ; A9AD  7D  (static)
        CP $FF                       ; A9AE  FE FF  (static)
        JR NZ,l_A975                 ; A9B0  20 C3  (static)
        LD BC,$1800                  ; A9B2  01 00 18  (static)
        LD HL,$4000                  ; A9B5  21 00 40  (static)
l_A9B8:
        LD (HL),$00                  ; A9B8  36 00  (static)
        INC HL                       ; A9BA  23  (static)
        DEC BC                       ; A9BB  0B  (static)
        LD A,B                       ; A9BC  78  (static)
        OR C                         ; A9BD  B1  (static)
        JR NZ,l_A9B8                 ; A9BE  20 F8  (static)
        LD A,IXH                     ; A9C0  DD 7C  (static)
        LD IXH,$01                   ; A9C2  DD 26 01  (static)
        LD HL,d_732C                 ; A9C5  21 2C 73  (static)
        LD (HL),$04                  ; A9C8  36 04  (static)
        AND A                        ; A9CA  A7  (static)
        JR Z,l_A970                  ; A9CB  28 A3  (static)
        RET                          ; A9CD  C9  (static)

; Prepares the GAME OVER message and the level number.
game_over_text:
        LD HL,$5960                  ; A9CE  21 60 59  (static)
        LD B,$80                     ; A9D1  06 80  (static)
l_A9D3:
        LD (HL),$04                  ; A9D3  36 04  (static)
        INC HL                       ; A9D5  23  (static)
        DJNZ l_A9D3                  ; A9D6  10 FB  (static)
        LD B,$01                     ; A9D8  06 01  (static)
l_A9DA:
        LD HL,$4861                  ; A9DA  21 61 48  (static)
        CALL ticker_scroll                  ; A9DD  CD 7B AB  (static)
        DJNZ l_A9DA                  ; A9E0  10 F8  (static)
        LD A,(DE)                    ; A9E2  1A  (static)
        LD HL,$0C1E                  ; A9E3  21 1E 0C  (static)
        INC DE                       ; A9E6  13  (static)
        CALL tile_entry_slide                  ; A9E7  CD 40 9C  (static)
        LD B,$08                     ; A9EA  06 08  (static)
        DEC C                        ; A9EC  0D  (static)
        JR NZ,l_A9DA                 ; A9ED  20 EB  (static)
        LD B,$00                     ; A9EF  06 00  (static)
l_A9F1:
        LD HL,$4861                  ; A9F1  21 61 48  (static)
        CALL ticker_scroll                  ; A9F4  CD 7B AB  (static)
        DJNZ l_A9F1                  ; A9F7  10 F8  (static)
        RET                          ; A9F9  C9  (static)

; Transition after death.
transition_after_death:
        INC IXH                      ; A9FA  DD 24  (static)
        DEC IXH                      ; A9FC  DD 25  (static)
        JR NZ,l_AA08                 ; A9FE  20 08  (static)
        LD A,(d_732C)                ; AA00  3A 2C 73  (static)
        ADD A,$09                    ; AA03  C6 09  (static)
        LD (d_732C),A                ; AA05  32 2C 73  (static)
l_AA08:
        CALL transition                  ; AA08  CD EC A8  (static)
        RET                          ; AA0B  C9  (static)

; Unclear.
routine_aa0c:
        PUSH BC                      ; AA0C  C5  (static)
        PUSH DE                      ; AA0D  D5  (static)
        PUSH HL                      ; AA0E  E5  (static)
        LD C,$01                     ; AA0F  0E 01  (static)
        LD B,$06                     ; AA11  06 06  (static)
l_AA13:
        LD A,(DE)                    ; AA13  1A  (static)
        INC DE                       ; AA14  13  (static)
        CP (HL)                      ; AA15  BE  (static)
        INC HL                       ; AA16  23  (static)
        JR C,l_AA1E                  ; AA17  38 05  (static)
        JR NZ,l_AA1D                 ; AA19  20 02  (static)
        DJNZ l_AA13                  ; AA1B  10 F6  (static)
l_AA1D:
        DEC C                        ; AA1D  0D  (static)
l_AA1E:
        LD A,C                       ; AA1E  79  (static)
        POP HL                       ; AA1F  E1  (static)
        POP DE                       ; AA20  D1  (static)
        POP BC                       ; AA21  C1  (static)
        RET                          ; AA22  C9  (static)

; Attribute buffer address for a screen coordinate.
attr_buffer_addr:
        PUSH DE                      ; AA23  D5  (static)
        PUSH BC                      ; AA24  C5  (static)
        EX DE,HL                     ; AA25  EB  (static)
        LD HL,$5B00                  ; AA26  21 00 5B  (static)
        LD BC,$0020                  ; AA29  01 20 00  (static)
        INC D                        ; AA2C  14  (static)
l_AA2D:
        AND A                        ; AA2D  A7  (static)
        SBC HL,BC                    ; AA2E  ED 42  (static)
        DEC D                        ; AA30  15  (static)
        JR NZ,l_AA2D                 ; AA31  20 FA  (static)
        ADD HL,DE                    ; AA33  19  (static)
        POP BC                       ; AA34  C1  (static)
        POP DE                       ; AA35  D1  (static)
        RET                          ; AA36  C9  (static)

; Prints a text block to the screen.
print_block:
        PUSH BC                      ; AA37  C5  (static)
        LD DE,$0020                  ; AA38  11 20 00  (static)
l_AA3B:
        PUSH BC                      ; AA3B  C5  (static)
        PUSH HL                      ; AA3C  E5  (static)
l_AA3D:
        LD (HL),A                    ; AA3D  77  (static)
        INC HL                       ; AA3E  23  (static)
        DJNZ l_AA3D                  ; AA3F  10 FC  (static)
        POP HL                       ; AA41  E1  (static)
        ADD HL,DE                    ; AA42  19  (static)
        POP BC                       ; AA43  C1  (static)
        DEC C                        ; AA44  0D  (static)
        JR NZ,l_AA3B                 ; AA45  20 F4  (static)
        POP BC                       ; AA47  C1  (static)
        RET                          ; AA48  C9  (static)

; Redefine keys: reads the new keys.  It asks five keys in the order up, down, left, right, jump and stores each at d_8268 as two
; bytes: the five bits read from the port with only that key down, then the high byte of the port (Q = $1E,$FB).  Sets the input
; type d_732D to 3.  Seen with Q, A, O, P, SPACE: $1E,$FB, $1E,$FD, $1D,$DF, $1E,$DF, $1E,$7F.
redefine_keys:
        CALL clear_screen                  ; AA49  CD 9E AB  (static)
        LD HL,d_732D                 ; AA4C  21 2D 73  (static)
        LD (HL),$03                  ; AA4F  36 03  (static)
        LD HL,d_8268                 ; AA51  21 68 82  (static)
        LD B,$0A                     ; AA54  06 0A  (static)
l_AA56:
        LD (HL),$00                  ; AA56  36 00  (static)
        INC HL                       ; AA58  23  (static)
        DJNZ l_AA56                  ; AA59  10 FB  (static)
        LD HL,$1100                  ; AA5B  21 00 11  (static)
        LD B,$20                     ; AA5E  06 20  (static)
        LD DE,d_AC02                 ; AA60  11 02 AC  (static)
l_AA63:
        LD A,(DE)                    ; AA63  1A  (static)
        CALL tile_entry_slide                  ; AA64  CD 40 9C  (static)
        INC L                        ; AA67  2C  (static)
        INC DE                       ; AA68  13  (static)
        DJNZ l_AA63                  ; AA69  10 F8  (static)
        LD H,$0E                     ; AA6B  26 0E  (static)
        LD C,$05                     ; AA6D  0E 05  (static)
l_AA6F:
        LD B,$0A                     ; AA6F  06 0A  (static)
        LD L,$0A                     ; AA71  2E 0A  (static)
l_AA73:
        LD A,(DE)                    ; AA73  1A  (static)
        CALL tile_entry_slide                  ; AA74  CD 40 9C  (static)
        INC DE                       ; AA77  13  (static)
        INC L                        ; AA78  2C  (static)
        DJNZ l_AA73                  ; AA79  10 F8  (static)
        DEC H                        ; AA7B  25  (static)
        DEC H                        ; AA7C  25  (static)
        DEC C                        ; AA7D  0D  (static)
        JR NZ,l_AA6F                 ; AA7E  20 EF  (static)
        LD HL,$58C0                  ; AA80  21 C0 58  (static)
        LD B,$20                     ; AA83  06 20  (static)
l_AA85:
        LD (HL),$04                  ; AA85  36 04  (static)
        INC HL                       ; AA87  23  (static)
        DJNZ l_AA85                  ; AA88  10 FB  (static)
l_AA8A:
        CALL redefine_get_key                  ; AA8A  CD F4 AA  (static)
        LD A,L                       ; AA8D  7D  (static)
        AND A                        ; AA8E  A7  (static)
        JR NZ,l_AA8A                 ; AA8F  20 F9  (static)
        LD A,$05                     ; AA91  3E 05  (static)
        LD IX,d_8268                 ; AA93  DD 21 68 82  (static)
        LD HL,$592A                  ; AA97  21 2A 59  (static)
        LD BC,d_83F6                 ; AA9A  01 F6 83  (static)
        LD DE,$0E16                  ; AA9D  11 16 0E  (static)
l_AAA0:
        CALL redefine_label                  ; AAA0  CD 19 AB  (static)
        PUSH BC                      ; AAA3  C5  (static)
        LD BC,$0040                  ; AAA4  01 40 00  (static)
        ADD HL,BC                    ; AAA7  09  (static)
        POP BC                       ; AAA8  C1  (static)
        DEC D                        ; AAA9  15  (static)
        DEC D                        ; AAAA  15  (static)
        INC IX                       ; AAAB  DD 23  (static)
        INC IX                       ; AAAD  DD 23  (static)
        INC BC                       ; AAAF  03  (static)
        INC BC                       ; AAB0  03  (static)
        INC BC                       ; AAB1  03  (static)
        INC BC                       ; AAB2  03  (static)
        INC BC                       ; AAB3  03  (static)
        DEC A                        ; AAB4  3D  (static)
        JR NZ,l_AAA0                 ; AAB5  20 E9  (static)
        JP l_A46E                    ; AAB7  C3 6E A4  (static)

; Unclear.
routine_aaba:
        LD HL,d_8267                 ; AABA  21 67 82  (static)
        LD B,$00                     ; AABD  06 00  (static)
l_AABF:
        INC HL                       ; AABF  23  (static)
        INC HL                       ; AAC0  23  (static)
        INC B                        ; AAC1  04  (static)
        LD A,B                       ; AAC2  78  (static)
        CP $06                       ; AAC3  FE 06  (static)
        JR Z,l_AACB                  ; AAC5  28 04  (static)
        LD A,(HL)                    ; AAC7  7E  (static)
        AND A                        ; AAC8  A7  (static)
        JR NZ,l_AABF                 ; AAC9  20 F4  (static)
l_AACB:
        DEC HL                       ; AACB  2B  (static)
        DEC HL                       ; AACC  2B  (static)
        DEC B                        ; AACD  05  (static)
        INC B                        ; AACE  04  (static)
        LD D,(HL)                    ; AACF  56  (static)
        DEC HL                       ; AAD0  2B  (static)
        LD E,(HL)                    ; AAD1  5E  (static)
l_AAD2:
        DEC HL                       ; AAD2  2B  (static)
        LD A,(HL)                    ; AAD3  7E  (static)
        DEC HL                       ; AAD4  2B  (static)
        CP D                         ; AAD5  BA  (static)
        JR NZ,l_AADF                 ; AAD6  20 07  (static)
        LD A,(HL)                    ; AAD8  7E  (static)
        CP E                         ; AAD9  BB  (static)
        JR NZ,l_AADF                 ; AADA  20 03  (static)
        LD B,$01                     ; AADC  06 01  (static)
        RET                          ; AADE  C9  (static)
l_AADF:
        DJNZ l_AAD2                  ; AADF  10 F1  (static)
        LD B,$00                     ; AAE1  06 00  (static)
        RET                          ; AAE3  C9  (static)

; Random sound after the death tune.
random_sound_after_death:
        LD A,R                       ; AAE4  ED 5F  (static)
        LD HL,l_ABE9                 ; AAE6  21 E9 AB  (static)
        AND $07                      ; AAE9  E6 07  (static)
        INC A                        ; AAEB  3C  (static)
        LD B,A                       ; AAEC  47  (static)
l_AAED:
        INC HL                       ; AAED  23  (static)
        DJNZ l_AAED                  ; AAEE  10 FD  (static)
        LD A,(HL)                    ; AAF0  7E  (static)
        JP start_tune                    ; AAF1  C3 EB 9C  (static)

; Redefine keys: get a key.
redefine_get_key:
        LD D,$00                     ; AAF4  16 00  (static)
        LD HL,$0000                  ; AAF6  21 00 00  (static)
        LD B,$08                     ; AAF9  06 08  (static)
        LD C,$FE                     ; AAFB  0E FE  (static)
l_AAFD:
        LD A,C                       ; AAFD  79  (static)
        IN A,($FE)                   ; AAFE  DB FE  (static)
        AND $1F                      ; AB00  E6 1F  (static)
        CP $1F                       ; AB02  FE 1F  (static)
        JR Z,l_AB12                  ; AB04  28 0C  (static)
        DEC D                        ; AB06  15  (static)
        JR NZ,redefine_print_key                 ; AB07  20 04  (static)
        LD HL,$0000                  ; AB09  21 00 00  (static)
        RET                          ; AB0C  C9  (static)

; Redefine keys: prints the key just pressed.
redefine_print_key:
        LD D,$01                     ; AB0D  16 01  (static)
        LD L,A                       ; AB0F  6F  (static)
        LD H,C                       ; AB10  61  (static)
        LD E,B                       ; AB11  58  (static)
l_AB12:
        SLA C                        ; AB12  CB 21  (static)
        SET 0,C                      ; AB14  CB C1  (static)
        DJNZ l_AAFD                  ; AB16  10 E5  (static)
        RET                          ; AB18  C9  (static)

; Prints the direction label.
redefine_label:
        PUSH AF                      ; AB19  F5  (static)
        PUSH HL                      ; AB1A  E5  (static)
        PUSH DE                      ; AB1B  D5  (static)
        PUSH BC                      ; AB1C  C5  (static)
        LD B,$0D                     ; AB1D  06 0D  (static)
l_AB1F:
        LD (HL),$03                  ; AB1F  36 03  (static)
        INC HL                       ; AB21  23  (static)
        DJNZ l_AB1F                  ; AB22  10 FB  (static)
l_AB24:
        CALL redefine_get_key                  ; AB24  CD F4 AA  (static)
        LD A,L                       ; AB27  7D  (static)
        AND A                        ; AB28  A7  (static)
        JR Z,l_AB24                  ; AB29  28 F9  (static)
        LD C,L                       ; AB2B  4D  (static)
        LD B,E                       ; AB2C  43  (static)
        LD (IX+0),L                  ; AB2D  DD 75 00  (static)
        LD (IX+1),H                  ; AB30  DD 74 01  (static)
        LD HL,d_AC4E                 ; AB33  21 4E AC  (static)
        LD DE,$0005                  ; AB36  11 05 00  (static)
l_AB39:
        ADD HL,DE                    ; AB39  19  (static)
        DJNZ l_AB39                  ; AB3A  10 FD  (static)
l_AB3C:
        INC HL                       ; AB3C  23  (static)
        SRL C                        ; AB3D  CB 39  (static)
        JR C,l_AB3C                  ; AB3F  38 FB  (static)
        LD A,(HL)                    ; AB41  7E  (static)
        POP BC                       ; AB42  C1  (static)
        PUSH BC                      ; AB43  C5  (static)
        LD (BC),A                    ; AB44  02  (static)
        PUSH AF                      ; AB45  F5  (static)
        CALL routine_aaba                  ; AB46  CD BA AA  (static)
        POP AF                       ; AB49  F1  (static)
        DEC B                        ; AB4A  05  (static)
        JR Z,l_AB24                  ; AB4B  28 D7  (static)
        POP BC                       ; AB4D  C1  (static)
        POP HL                       ; AB4E  E1  (static)
        PUSH HL                      ; AB4F  E5  (static)
        PUSH BC                      ; AB50  C5  (static)
        CALL tile_entry_slide                  ; AB51  CD 40 9C  (static)
l_AB54:
        CALL redefine_get_key                  ; AB54  CD F4 AA  (static)
        LD A,L                       ; AB57  7D  (static)
        AND A                        ; AB58  A7  (static)
        JR NZ,l_AB54                 ; AB59  20 F9  (static)
        POP BC                       ; AB5B  C1  (static)
        POP DE                       ; AB5C  D1  (static)
        POP HL                       ; AB5D  E1  (static)
        POP AF                       ; AB5E  F1  (static)
        RET                          ; AB5F  C9  (static)

; Plays the theme tune one note at a time.
play_theme:
        LD C,(HL)                    ; AB60  4E  (static)
        INC HL                       ; AB61  23  (static)
        LD B,(HL)                    ; AB62  46  (static)
        INC HL                       ; AB63  23  (static)
        LD A,C                       ; AB64  79  (static)
        AND A                        ; AB65  A7  (static)
        RET Z                        ; AB66  C8  (static)
        PUSH HL                      ; AB67  E5  (static)
        PUSH BC                      ; AB68  C5  (static)
        CALL $2D28                   ; AB69  CD 28 2D  (static)
        RST $28                      ; AB6C  EF  (static)
        AND H                        ; AB6D  A4  (static)
        DEC B                        ; AB6E  05  (static)
        JR C,$AB32                   ; AB6F  38 C1  (static)
        LD A,B                       ; AB71  78  (static)
        CALL $2D28                   ; AB72  CD 28 2D  (static)
        CALL $03F8                   ; AB75  CD F8 03  (static)
        POP HL                       ; AB78  E1  (static)
        JR play_theme                    ; AB79  18 E5  (static)

; Scrolls the ticker text across the screen.
ticker_scroll:
        PUSH DE                      ; AB7B  D5
        PUSH BC                      ; AB7C  C5
        PUSH AF                      ; AB7D  F5
        LD D,$08                     ; AB7E  16 08
l_AB80:
        PUSH HL                      ; AB80  E5
        POP BC                       ; AB81  C1
        INC BC                       ; AB82  03
        LD E,$1E                     ; AB83  1E 1E
l_AB85:
        SLA (HL)                     ; AB85  CB 26
        LD A,(BC)                    ; AB87  0A
        BIT 7,A                      ; AB88  CB 7F
        JR Z,l_AB8E                  ; AB8A  28 02
        SET 0,(HL)                   ; AB8C  CB C6  (static)
l_AB8E:
        INC HL                       ; AB8E  23
        INC BC                       ; AB8F  03
        DEC E                        ; AB90  1D
        JR NZ,l_AB85                 ; AB91  20 F2
        LD BC,$00E2                  ; AB93  01 E2 00
        ADD HL,BC                    ; AB96  09
        DEC D                        ; AB97  15
        JR NZ,l_AB80                 ; AB98  20 E6
        POP AF                       ; AB9A  F1
        POP BC                       ; AB9B  C1
        POP DE                       ; AB9C  D1
        RET                          ; AB9D  C9

; Clears the screen to black, bottom to top.
clear_screen:
        LD HL,$5AFF                  ; AB9E  21 FF 5A  (static)
        LD BC,$1B00                  ; ABA1  01 00 1B  (static)
l_ABA4:
        LD (HL),$00                  ; ABA4  36 00  (static)
        DEC BC                       ; ABA6  0B  (static)
        DEC HL                       ; ABA7  2B  (static)
        LD A,C                       ; ABA8  79  (static)
        OR B                         ; ABA9  B0  (static)
        JR NZ,l_ABA4                 ; ABAA  20 F8  (static)
        RET                          ; ABAC  C9  (static)

; Shows the score board with heading and names/scores.
scoreboard:
        LD DE,d_ABF2                 ; ABAD  11 F2 AB  (static)
        LD H,$17                     ; ABB0  26 17  (static)
        LD L,$10                     ; ABB2  2E 10  (static)
        LD B,$10                     ; ABB4  06 10  (static)
l_ABB6:
        LD A,(DE)                    ; ABB6  1A  (static)
        CALL tile_entry_slide                  ; ABB7  CD 40 9C  (static)
        INC L                        ; ABBA  2C  (static)
        INC DE                       ; ABBB  13  (static)
        DJNZ l_ABB6                  ; ABBC  10 F8  (static)
        LD H,$15                     ; ABBE  26 15  (static)
        LD DE,d_97AF                 ; ABC0  11 AF 97  (static)
l_ABC3:
        LD L,$10                     ; ABC3  2E 10  (static)
        LD B,$10                     ; ABC5  06 10  (static)
l_ABC7:
        LD A,(DE)                    ; ABC7  1A  (static)
        CALL tile_entry_slide                  ; ABC8  CD 40 9C  (static)
        INC L                        ; ABCB  2C  (static)
        INC DE                       ; ABCC  13  (static)
        DJNZ l_ABC7                  ; ABCD  10 F8  (static)
        DEC H                        ; ABCF  25  (static)
        DEC H                        ; ABD0  25  (static)
        LD A,H                       ; ABD1  7C  (static)
        CP $02                       ; ABD2  FE 02  (static)
        JR NC,l_ABC3                 ; ABD4  30 ED  (static)
        LD HL,$5810                  ; ABD6  21 10 58  (static)
        LD DE,$0010                  ; ABD9  11 10 00  (static)
        LD C,$15                     ; ABDC  0E 15  (static)
l_ABDE:
        LD B,$10                     ; ABDE  06 10  (static)
l_ABE0:
        LD (HL),$17                  ; ABE0  36 17  (static)
        INC HL                       ; ABE2  23  (static)
        DJNZ l_ABE0                  ; ABE3  10 FB  (static)
        ADD HL,DE                    ; ABE5  19  (static)
        DEC C                        ; ABE6  0D  (static)
        JR NZ,l_ABDE                 ; ABE7  20 F5  (static)
l_ABE9:
        RET                          ; ABE9  C9  (static)
        defb $01,$10,$13,$17,$1E,$20,$21,$01
d_ABF2:
        defb $68,$69,$67,$68,$20,$73,$63,$6F,$72,$65,$20,$74,$61,$62,$6C,$65
d_AC02:
        defb $70,$72,$65,$73,$73,$20,$74,$68,$65,$20,$6B,$65,$79,$20,$79,$6F
        defb $75,$20,$77,$69,$73,$68,$20,$74,$6F,$20,$75,$73,$65,$20,$74,$6F
        defb $6D,$6F,$76,$65,$20,$75,$70,$20,$20,$20,$6D,$6F,$76,$65,$20,$64
        defb $6F,$77,$6E,$20,$6D,$6F,$76,$65,$20,$6C,$65,$66,$74,$20,$6D,$6F
        defb $76,$65,$20,$72,$69,$67,$68,$74,$6A,$75,$6D,$70
d_AC4E:
        defb $20,$20,$20,$20,$20,$20,$97,$99,$6D,$6E,$62,$9A,$6C,$6B,$6A,$68
        defb $70,$6F,$69,$75,$79,$30,$39,$38,$37,$36,$31,$32,$33,$34,$35,$71
        defb $77,$65,$72,$74,$61,$73,$64,$66,$67,$98,$7A,$78,$63,$76
d_AC7C:
        defb $7B,$00,$70,$72,$65,$73,$73,$20,$53,$20,$74,$6F,$20,$73,$74,$61
        defb $72,$74,$20,$67,$61,$6D,$65,$20,$7B,$00,$70,$72,$65,$73,$73,$20
        defb $52,$20,$74,$6F,$20,$72,$65,$64,$65,$66,$69,$6E,$65,$20,$6B,$65
        defb $79,$73,$20,$7B,$00,$70,$72,$65,$73,$73,$20,$49,$20,$66,$6F,$72
        defb $20,$69,$6E,$73,$74,$72,$75,$63,$74,$69,$6F,$6E,$73,$20
d_ACCA:
        defb $7B,$00,$70,$72,$65,$73,$73,$20,$53,$20,$74,$6F,$20,$73,$74,$61
        defb $72,$74,$20,$67,$61,$6D,$65,$20,$7B,$00,$70,$72,$65,$73,$73,$20
        defb $52,$20,$74,$6F,$20,$72,$65,$64,$65,$66,$69,$6E,$65,$20,$6B,$65
        defb $79,$73,$20,$7B,$00,$70,$72,$65,$73,$73,$20,$31,$2C,$32,$20,$6F
        defb $72,$20,$33,$20,$74,$6F,$20,$73,$65,$6C,$65,$63,$74,$20,$6B,$65
        defb $79,$20,$74,$79,$70,$65,$20
d_AD21:
        defb $31,$2C,$32,$2C,$33,$20,$6F,$72,$20,$34,$20,$70,$6C,$61,$79,$65
        defb $72,$73,$20,$3F,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
d_AD3F:
        defb $67,$61,$6D,$65,$20,$6F,$76,$65,$72,$20
d_AD49:
        defb $70,$6C,$61,$79,$65,$72,$20
d_AD50:
        defb $31,$20
d_AD52:
        defb $6C,$65,$76,$65,$6C,$20
d_AD58:
        defb $9E
d_AD59:
        defb $9F
d_AD5A:
        defb $4F,$55,$54,$20,$4F,$46,$20,$54,$49,$4D,$45,$20,$21
d_AD67:
        defb $20,$20,$20,$50,$4C,$41,$59,$45,$52,$20,$20
d_AD72:
        defb $31,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        defb $20,$20,$20,$20,$20,$77,$65,$6C,$6C,$20,$20,$64,$6F,$6E,$65,$21
        defb $20,$20,$79,$6F,$75,$20,$68,$61,$76,$65,$20,$62,$65,$61,$74,$65
        defb $6E,$20,$6F,$6E,$65,$20,$6F,$66,$20,$74,$6F,$64,$61,$79,$73,$20
        defb $68,$69,$67,$68,$65,$73,$74,$20,$73,$63,$6F,$72,$65,$73,$2E,$20
        defb $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        defb $70,$6C,$65,$61,$73,$65,$20,$74,$79,$70,$65,$20,$20,$69,$6E,$20
        defb $79,$6F,$75,$72,$20,$6E,$61,$6D,$65,$20,$6F,$72,$20,$69,$6E,$69
        defb $74,$69,$61,$6C,$73,$20,$74,$68,$65,$6E,$20,$20,$70,$72,$65,$73
        defb $73,$20,$20,$45,$4E,$54,$45,$52,$2E,$20
d_AE0C:
        defb $01,$10,$01,$10,$01,$12,$01,$12,$01,$0D,$01,$0D,$02,$10,$01,$10
        defb $01,$10,$01,$12,$01,$12,$01,$0D,$01,$0D,$02,$10,$01,$10,$01,$10
        defb $02,$12,$02,$15,$02,$14,$02,$14,$02,$12,$02,$10,$02,$0E,$01,$0E
        defb $01,$0E,$01,$10,$01,$10,$01,$0B,$01,$0B,$02,$0E,$01,$0E,$01,$0E
        defb $01,$10,$01,$10,$01,$0B,$01,$0B,$02,$0E,$01,$0E,$01,$0E,$02,$10
        defb $02,$12,$02,$13,$02,$10,$02,$0E,$02,$0B,$02,$07,$00,$00
d_AE6A:
        defb $02,$08,$02,$08,$02,$08,$02,$08,$02,$06,$02,$04,$02,$04,$02,$03
        defb $02,$01,$02,$01,$02,$04,$02,$08,$02,$0D,$02,$0D,$02,$0D,$02,$0D
        defb $02,$0B,$02,$09,$02,$09,$02,$08,$02,$06,$02,$06,$02,$08,$02,$09
        defb $00,$00

; Runs the current level until it is complete or Harry is hit: draws the level, then loops poll_loop.
level_run:
        LD HL,$5AFF                  ; AE9C  21 FF 5A
        LD BC,$1B00                  ; AE9F  01 00 1B
l_AEA2:
        LD (HL),$00                  ; AEA2  36 00
        DEC HL                       ; AEA4  2B
        DEC BC                       ; AEA5  0B
        LD A,B                       ; AEA6  78
        OR C                         ; AEA7  B1
        JR NZ,l_AEA2                 ; AEA8  20 F8
        LD BC,d_61A8                 ; AEAA  01 A8 61
        LD H,$00                     ; AEAD  26 00
l_AEAF:
        LD L,$00                     ; AEAF  2E 00
l_AEB1:
        LD A,(BC)                    ; AEB1  0A
        CALL tile_entry_slide                  ; AEB2  CD 40 9C
        INC BC                       ; AEB5  03
        INC L                        ; AEB6  2C
        LD A,L                       ; AEB7  7D
        CP $20                       ; AEB8  FE 20
        JR NZ,l_AEB1                 ; AEBA  20 F5
        INC H                        ; AEBC  24
        LD A,H                       ; AEBD  7C
        CP $15                       ; AEBE  FE 15
        JR NZ,l_AEAF                 ; AEC0  20 ED
        LD A,(d_6EEB)                ; AEC2  3A EB 6E
        LD B,A                       ; AEC5  47
        INC B                        ; AEC6  04
        XOR A                        ; AEC7  AF
l_AEC8:
        ADD A,$01                    ; AEC8  C6 01
        DAA                          ; AECA  27
        DJNZ l_AEC8                  ; AECB  10 FB
        LD D,A                       ; AECD  57
        AND $0F                      ; AECE  E6 0F
        ADD A,$9E                    ; AED0  C6 9E
        LD (d_9773),A                ; AED2  32 73 97
        LD A,D                       ; AED5  7A
        LD B,$04                     ; AED6  06 04
l_AED8:
        SRL A                        ; AED8  CB 3F
        DJNZ l_AED8                  ; AEDA  10 FC
        ADD A,$9E                    ; AEDC  C6 9E
        LD (d_9772),A                ; AEDE  32 72 97
        LD A,(d_6EEB)                ; AEE1  3A EB 6E
        INC A                        ; AEE4  3C
        CP $0A                       ; AEE5  FE 0A
        JR C,l_AEEB                  ; AEE7  38 02
        LD A,$09                     ; AEE9  3E 09  (static)
l_AEEB:
        LD (d_733F),A                ; AEEB  32 3F 73
        ADD A,$9E                    ; AEEE  C6 9E
        LD (d_977A),A                ; AEF0  32 7A 97
        LD A,(d_6EEB)                ; AEF3  3A EB 6E
        SRL A                        ; AEF6  CB 3F
        SRL A                        ; AEF8  CB 3F
        SRL A                        ; AEFA  CB 3F
        SRL A                        ; AEFC  CB 3F
        CP $05                       ; AEFE  FE 05
        JR C,l_AF04                  ; AF00  38 02
        LD A,$05                     ; AF02  3E 05  (static)
l_AF04:
        LD C,A                       ; AF04  4F
        LD A,$09                     ; AF05  3E 09
        SUB C                        ; AF07  91
        LD (d_7342),A                ; AF08  32 42 73
        ADD A,$9E                    ; AF0B  C6 9E
        LD (d_9784),A                ; AF0D  32 84 97
        LD A,(d_733B)                ; AF10  3A 3B 73
        ADD A,$9E                    ; AF13  C6 9E
        LD (d_976B),A                ; AF15  32 6B 97
        LD HL,$1700                  ; AF18  21 00 17
        LD DE,d_9764                 ; AF1B  11 64 97
        LD B,$03                     ; AF1E  06 03
l_AF20:
        LD A,(DE)                    ; AF20  1A
        CALL tile_entry_slide                  ; AF21  CD 40 9C
        INC L                        ; AF24  2C
        INC DE                       ; AF25  13
        DJNZ l_AF20                  ; AF26  10 F8
        LD HL,$1500                  ; AF28  21 00 15
        LD B,$20                     ; AF2B  06 20
l_AF2D:
        LD A,(DE)                    ; AF2D  1A
        CALL tile_entry_slide                  ; AF2E  CD 40 9C
        INC L                        ; AF31  2C
        INC DE                       ; AF32  13
        DJNZ l_AF2D                  ; AF33  10 F8
        LD HL,$3FFE                  ; AF35  21 FE 3F
        LD (d_733D),HL               ; AF38  22 3D 73
        LD A,(d_733A)                ; AF3B  3A 3A 73
        LD HL,d_6ECE                 ; AF3E  21 CE 6E
l_AF41:
        LD DE,d_6EC8                 ; AF41  11 C8 6E
        LD BC,$0006                  ; AF44  01 06 00
        LDIR                         ; AF47  ED B0
        PUSH HL                      ; AF49  E5
        LD BC,$0007                  ; AF4A  01 07 00
        LD HL,(d_733D)               ; AF4D  2A 3D 73
        ADD HL,BC                    ; AF50  09
        LD (d_733D),HL               ; AF51  22 3D 73
        LD B,$00                     ; AF54  06 00
        PUSH AF                      ; AF56  F5
        CALL add_score                  ; AF57  CD A7 A3
        POP AF                       ; AF5A  F1
        POP HL                       ; AF5B  E1
        DEC A                        ; AF5C  3D
        JR NZ,l_AF41                 ; AF5D  20 E2
        LD BC,$0006                  ; AF5F  01 06 00
        LD HL,d_6EC8                 ; AF62  21 C8 6E
        LD A,(d_733B)                ; AF65  3A 3B 73
l_AF68:
        ADD HL,BC                    ; AF68  09
        DEC A                        ; AF69  3D
        JR NZ,l_AF68                 ; AF6A  20 FC
        LD DE,d_6EC8                 ; AF6C  11 C8 6E
        LDIR                         ; AF6F  ED B0
        LD A,(d_6EC9)                ; AF71  3A C9 6E
        LD (d_736E),A                ; AF74  32 6E 73
        LD B,$14                     ; AF77  06 14
        LD HL,d_7357                 ; AF79  21 57 73
l_AF7C:
        LD (HL),$FF                  ; AF7C  36 FF
        INC HL                       ; AF7E  23
        DJNZ l_AF7C                  ; AF7F  10 FB
        LD A,(d_6EEB)                ; AF81  3A EB 6E
        CP $08                       ; AF84  FE 08
        JR C,l_AF8C                  ; AF86  38 04
        CP $10                       ; AF88  FE 10
        JR C,l_AFAD                  ; AF8A  38 21
l_AF8C:
        AND $07                      ; AF8C  E6 07
        LD HL,d_945B                 ; AF8E  21 5B 94
        LD BC,$0015                  ; AF91  01 15 00
        INC A                        ; AF94  3C
l_AF95:
        ADD HL,BC                    ; AF95  09
        DEC A                        ; AF96  3D
        JR NZ,l_AF95                 ; AF97  20 FC
        LD B,(HL)                    ; AF99  46
        INC HL                       ; AF9A  23
        LD A,(d_6EEB)                ; AF9B  3A EB 6E
        CP $18                       ; AF9E  FE 18
        JR C,l_AFA4                  ; AFA0  38 02
        LD B,$14                     ; AFA2  06 14  (static)
l_AFA4:
        LD DE,d_7357                 ; AFA4  11 57 73
l_AFA7:
        LD A,(HL)                    ; AFA7  7E
        LD (DE),A                    ; AFA8  12
        INC DE                       ; AFA9  13
        INC HL                       ; AFAA  23
        DJNZ l_AFA7                  ; AFAB  10 FA
l_AFAD:
        LD HL,$0001                  ; AFAD  21 01 00
        LD (d_736B),HL               ; AFB0  22 6B 73
        LD H,$16                     ; AFB3  26 16
        LD L,$05                     ; AFB5  2E 05
        LD A,(d_733A)                ; AFB7  3A 3A 73
        LD B,A                       ; AFBA  47
        LD DE,d_6EF0                 ; AFBB  11 F0 6E
l_AFBE:
        PUSH HL                      ; AFBE  E5
        LD A,(DE)                    ; AFBF  1A
        CP $07                       ; AFC0  FE 07
        JR C,l_AFC6                  ; AFC2  38 02
        LD A,$06                     ; AFC4  3E 06  (static)
l_AFC6:
        INC DE                       ; AFC6  13
        AND A                        ; AFC7  A7
        JR Z,l_AFD4                  ; AFC8  28 0A
        LD C,A                       ; AFCA  4F
        LD A,$B6                     ; AFCB  3E B6
l_AFCD:
        CALL tile_entry_slide                  ; AFCD  CD 40 9C
        INC L                        ; AFD0  2C
        DEC C                        ; AFD1  0D
        JR NZ,l_AFCD                 ; AFD2  20 F9
l_AFD4:
        POP HL                       ; AFD4  E1
        LD A,L                       ; AFD5  7D
        ADD A,$07                    ; AFD6  C6 07
        LD L,A                       ; AFD8  6F
        DJNZ l_AFBE                  ; AFD9  10 E3
        LD HL,$0000                  ; AFDB  21 00 00
        LD B,$03                     ; AFDE  06 03
        LD A,$17                     ; AFE0  3E 17
        CALL colour_cell                  ; AFE2  CD 30 B1
        INC H                        ; AFE5  24
        LD B,$20                     ; AFE6  06 20
        LD A,$06                     ; AFE8  3E 06
        CALL colour_cell                  ; AFEA  CD 30 B1
        INC H                        ; AFED  24
        LD B,$05                     ; AFEE  06 05
        LD A,$17                     ; AFF0  3E 17
        CALL colour_cell                  ; AFF2  CD 30 B1
        LD L,$07                     ; AFF5  2E 07
        INC B                        ; AFF7  04
        CALL colour_cell                  ; AFF8  CD 30 B1
        LD B,$08                     ; AFFB  06 08
        LD L,$0F                     ; AFFD  2E 0F
        CALL colour_cell                  ; AFFF  CD 30 B1
        DEC B                        ; B002  05
        LD L,$19                     ; B003  2E 19
        CALL colour_cell                  ; B005  CD 30 B1
        LD HL,$0005                  ; B008  21 05 00
        LD BC,$0601                  ; B00B  01 01 06
l_B00E:
        LD D,$0F                     ; B00E  16 0F
        LD A,(d_733B)                ; B010  3A 3B 73
        CP C                         ; B013  B9
        JR NZ,l_B018                 ; B014  20 02
        LD D,$17                     ; B016  16 17
l_B018:
        LD A,D                       ; B018  7A
        CALL colour_cell                  ; B019  CD 30 B1
        LD A,L                       ; B01C  7D
        ADD A,$07                    ; B01D  C6 07
        LD L,A                       ; B01F  6F
        INC C                        ; B020  0C
        LD A,(d_733A)                ; B021  3A 3A 73
        CP C                         ; B024  B9
        JR NC,l_B00E                 ; B025  30 E7
        LD HL,d_61A8                 ; B027  21 A8 61
        LD DE,$5AE0                  ; B02A  11 E0 5A
        LD C,$15                     ; B02D  0E 15
l_B02F:
        LD B,$20                     ; B02F  06 20
        PUSH DE                      ; B031  D5
l_B032:
        PUSH BC                      ; B032  C5
        LD A,(HL)                    ; B033  7E
        CP $09                       ; B034  FE 09
        JR C,l_B03C                  ; B036  38 04
        LD A,$06                     ; B038  3E 06
        JR l_B042                    ; B03A  18 06
l_B03C:
        ADD A,$4F                    ; B03C  C6 4F
        LD B,$98                     ; B03E  06 98
        LD C,A                       ; B040  4F
        LD A,(BC)                    ; B041  0A
l_B042:
        LD (DE),A                    ; B042  12
        INC DE                       ; B043  13
        INC HL                       ; B044  23
        POP BC                       ; B045  C1
        DJNZ l_B032                  ; B046  10 EA
        POP DE                       ; B048  D1
        EX DE,HL                     ; B049  EB
        PUSH DE                      ; B04A  D5
        LD DE,$0020                  ; B04B  11 20 00
        AND A                        ; B04E  A7
        SBC HL,DE                    ; B04F  ED 52
        POP DE                       ; B051  D1
        EX DE,HL                     ; B052  EB
        DEC C                        ; B053  0D
        JR NZ,l_B02F                 ; B054  20 D9
        LD IX,d_72D8                 ; B056  DD 21 D8 72
        LD (IX+0),$64                ; B05A  DD 36 00 64
        LD (IX+1),$17                ; B05E  DD 36 01 17
        LD (IX+112),$08              ; B062  DD 36 70 08
        LD (IX+113),$98              ; B066  DD 36 71 98
        LD (IX+100),$05              ; B06A  DD 36 64 05
        XOR A                        ; B06E  AF
        LD (IX+104),A                ; B06F  DD 77 68
        LD (IX+105),A                ; B072  DD 77 69
        LD (IX+107),A                ; B075  DD 77 6B
        LD (IX+108),A                ; B078  DD 77 6C
        LD (IX+114),A                ; B07B  DD 77 72
        LD (IX+115),A                ; B07E  DD 77 73
        LD (IX+117),A                ; B081  DD 77 75
        LD (IX+125),A                ; B084  DD 77 7D
        LD (IX+2),A                  ; B087  DD 77 02
        LD (IX+3),A                  ; B08A  DD 77 03
        LD (IX+77),A                 ; B08D  DD 77 4D
        LD (d_7356),A                ; B090  32 56 73
        LD (d_7370),A                ; B093  32 70 73
        INC A                        ; B096  3C
        LD (IX+111),A                ; B097  DD 77 6F
        LD (IX+109),A                ; B09A  DD 77 6D
        LD (IX+110),A                ; B09D  DD 77 6E
        LD (IX+116),A                ; B0A0  DD 77 74
        LD (IX+4),A                  ; B0A3  DD 77 04
        LD A,(d_732D)                ; B0A6  3A 2D 73
        CP $05                       ; B0A9  FE 05
        LD HL,d_825C                 ; B0AB  21 5C 82
        JR Z,l_B0B8                  ; B0AE  28 08
        LD HL,d_8268                 ; B0B0  21 68 82
        JR C,l_B0B8                  ; B0B3  38 03
        LD HL,d_8250                 ; B0B5  21 50 82
l_B0B8:
        LD BC,$000C                  ; B0B8  01 0C 00
        LD DE,d_732E                 ; B0BB  11 2E 73
        LDIR                         ; B0BE  ED B0
        LD BC,$0007                  ; B0C0  01 07 00
        LD HL,$3FFE                  ; B0C3  21 FE 3F
        LD A,(d_733B)                ; B0C6  3A 3B 73
l_B0C9:
        ADD HL,BC                    ; B0C9  09
        DEC A                        ; B0CA  3D
        JR NZ,l_B0C9                 ; B0CB  20 FC
        LD (d_733D),HL               ; B0CD  22 3D 73
        LD BC,$0004                  ; B0D0  01 04 00
        LD HL,d_9787                 ; B0D3  21 87 97
        PUSH HL                      ; B0D6  E5
        POP DE                       ; B0D7  D1
        LD A,(d_6EEB)                ; B0D8  3A EB 6E
        AND $07                      ; B0DB  E6 07
        INC A                        ; B0DD  3C
l_B0DE:
        ADD HL,BC                    ; B0DE  09
        DEC A                        ; B0DF  3D
        JR NZ,l_B0DE                 ; B0E0  20 FC
        LDIR                         ; B0E2  ED B0
        LD BC,$0004                  ; B0E4  01 04 00
        AND A                        ; B0E7  A7
        SBC HL,BC                    ; B0E8  ED 42
        LD DE,d_734E                 ; B0EA  11 4E 73
        LDIR                         ; B0ED  ED B0
        LD (IX+124),$43              ; B0EF  DD 36 7C 43
        LD HL,(d_734E)               ; B0F3  2A 4E 73
        LD BC,$0800                  ; B0F6  01 00 08
        AND A                        ; B0F9  A7
        SBC HL,BC                    ; B0FA  ED 42
        LD (d_7352),HL               ; B0FC  22 52 73
        CALL random_sound_2                  ; B0FF  CD 4F B1
        LD D,$1E                     ; B102  16 1E
l_B104:
        LD BC,$2710                  ; B104  01 10 27
l_B107:
        DEC BC                       ; B107  0B
        LD A,B                       ; B108  78
        OR C                         ; B109  B1
        JR NZ,l_B107                 ; B10A  20 FB
        DEC D                        ; B10C  15
        JR NZ,l_B104                 ; B10D  20 F5
        LD A,(d_733B)                ; B10F  3A 3B 73
        LD L,A                       ; B112  6F
        LD H,$00                     ; B113  26 00
        LD DE,d_6EEF                 ; B115  11 EF 6E
        ADD HL,DE                    ; B118  19
        LD C,A                       ; B119  4F
        LD A,(HL)                    ; B11A  7E
        CP $07                       ; B11B  FE 07
        JR NC,l_B12D                 ; B11D  30 0E
        SUB $03                      ; B11F  D6 03
l_B121:
        ADD A,$07                    ; B121  C6 07
        DEC C                        ; B123  0D
        JR NZ,l_B121                 ; B124  20 FB
        LD H,$16                     ; B126  26 16
        LD L,A                       ; B128  6F
        XOR A                        ; B129  AF
        CALL tile_entry_slide                  ; B12A  CD 40 9C
l_B12D:
        JP poll_loop                    ; B12D  C3 58 98

; Updates the colour of a cell.
colour_cell:
        PUSH HL                      ; B130  E5
        PUSH BC                      ; B131  C5
        PUSH AF                      ; B132  F5
        LD E,L                       ; B133  5D
        LD A,H                       ; B134  7C
        LD HL,$5800                  ; B135  21 00 58
        AND A                        ; B138  A7
        JR Z,l_B144                  ; B139  28 09
        LD HL,$5820                  ; B13B  21 20 58
        DEC A                        ; B13E  3D
        JR Z,l_B144                  ; B13F  28 03
        LD HL,$5840                  ; B141  21 40 58
l_B144:
        LD D,$00                     ; B144  16 00
        ADD HL,DE                    ; B146  19
        POP AF                       ; B147  F1
l_B148:
        LD (HL),A                    ; B148  77
        INC HL                       ; B149  23
        DJNZ l_B148                  ; B14A  10 FC
        POP BC                       ; B14C  C1
        POP HL                       ; B14D  E1
        RET                          ; B14E  C9

; Plays a random sound.
random_sound_2:
        LD HL,$B15E                  ; B14F  21 5E B1
        LD A,R                       ; B152  ED 5F
        AND $07                      ; B154  E6 07
        INC A                        ; B156  3C
        LD B,A                       ; B157  47
l_B158:
        INC HL                       ; B158  23
        DJNZ l_B158                  ; B159  10 FD
        LD A,(HL)                    ; B15B  7E
        JP start_tune                    ; B15C  C3 EB 9C
        defb $02,$08,$0A,$0B,$0C,$11,$11,$02,$20,$4A,$52,$20,$43,$2C,$43,$31
        defb $30,$0D,$22,$90,$20,$20,$4C,$44,$20,$44,$45,$2C,$32,$32,$38,$34
        defb $39,$0D,$23,$00,$20,$43,$31,$30,$20,$4C,$44,$20,$42,$2C,$33,$0D
        defb $23,$10,$20,$20,$4C,$44,$20,$41,$2C,$31,$35,$31,$0D,$23,$20,$20
        defb $20,$4C,$44,$20,$28,$48,$4C,$29,$2C,$32,$33,$0D,$23,$30,$20,$20
        defb $4C,$44,$20,$28,$44,$45,$29,$2C,$41,$0D,$23,$40,$20,$20,$49,$4E
        defb $43,$20,$48,$4C,$0D,$23,$50,$20,$20,$49,$4E,$43,$20,$44,$45,$0D
        defb $23,$60,$20,$20,$44,$4A,$4E,$5A,$20,$2D,$37,$0D,$23,$70,$20,$3B
        defb $20,$20,$0D,$23,$80,$20,$43,$38,$20,$4A,$50,$20,$53,$43,$52,$4C
        defb $32,$0D,$23,$90,$20,$3B,$20,$20,$0D,$25,$00,$20,$49,$4E,$49,$54
        defb $47,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C
        defb $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$20,$43,$41,$4C,$4C,$20,$34,$30
        defb $30,$30,$30,$0D,$27,$00,$20,$20,$4C,$44,$20,$42,$2C,$38,$0D,$27
        defb $10,$20,$43,$31,$35,$20,$4C,$44,$20,$48,$4C,$2C,$31,$38,$35,$32
        defb $39,$0D,$27,$20,$20,$20,$43,$41,$4C,$4C,$20,$53,$43,$52,$4F,$4C
        defb $0D,$27,$30,$20,$20,$44,$45,$43,$20,$43,$0D,$27,$40

; Moves Harry to the end of a platform when he is near it.
platform_shunt:
        LD A,(d_72D8)                ; B34C  3A D8 72
        AND $07                      ; B34F  E6 07
        RET Z                        ; B351  C8
        LD HL,(d_72D8)               ; B352  2A D8 72
        CALL map_tile_at                  ; B355  CD 34 9E
        LD BC,$003F                  ; B358  01 3F 00
        AND A                        ; B35B  A7
        SBC HL,BC                    ; B35C  ED 42
        LD A,(HL)                    ; B35E  7E
        CP $05                       ; B35F  FE 05
        RET NC                       ; B361  D0
        CP $01                       ; B362  FE 01
        RET Z                        ; B364  C8
        CP $02                       ; B365  FE 02
        RET Z                        ; B367  C8
        LD A,$01                     ; B368  3E 01
        LD (d_7325),A                ; B36A  32 25 73
        LD D,$FF                     ; B36D  16 FF
        LD A,(d_72DB)                ; B36F  3A DB 72
        AND A                        ; B372  A7
        JR NZ,l_B377                 ; B373  20 02
        LD D,$01                     ; B375  16 01
l_B377:
        LD A,D                       ; B377  7A
        LD (d_7326),A                ; B378  32 26 73
        LD A,$04                     ; B37B  3E 04
        LD (d_7327),A                ; B37D  32 27 73
        RET                          ; B380  C9
        defb $20,$41,$4E,$44,$20,$31,$35,$0D,$27,$90,$20,$20,$43,$50,$20,$31
        defb $35,$0D,$28,$00,$20,$20,$4A,$52,$20,$5A,$2C,$4C,$34,$31,$0D,$28
        defb $10,$20,$20,$4C,$44,$20,$42,$2C,$30,$0D,$28,$20,$20,$4C,$34
d_B3B0:
        defb $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
        defb $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
        defb $00,$00,$00,$00,$04,$00,$03,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$04,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$05,$05,$05,$05,$05,$05,$05,$05,$01,$02,$05,$05,$05,$05
        defb $01,$02,$05,$05,$05,$05,$05,$05,$05,$05,$01,$02,$05,$05,$00,$00
        defb $00,$00,$00,$03,$00,$01,$02,$00,$04,$00,$01,$02,$00,$00,$00,$00
        defb $01,$02,$00,$00,$03,$00,$00,$04,$00,$00,$01,$02,$00,$03,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defs 20, 0
        defb $05,$01,$02,$05,$05,$05,$01,$02,$05,$05,$05,$00,$00,$00,$00,$00
        defb $00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00
        defb $03,$01,$02,$00,$04,$00,$01,$02,$00,$00,$00,$05,$05,$05,$00,$00
        defb $00,$00,$00,$00,$04,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00
        defb $00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00,$03,$00,$05,$05
        defb $05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$05,$05,$05,$05,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$03,$00,$00,$01,$02,$00,$00,$00,$05,$05,$05,$05,$00
        defb $00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$03,$04,$00,$00
        defs 22, 0
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$B2,$B3,$B4,$B5,$00,$00,$00,$00,$05,$05
        defb $01,$02,$05,$05,$05,$05,$00,$00,$05,$05,$05,$05,$05,$05,$05,$05
        defb $05,$00,$00,$05,$05,$05,$AE,$AF,$B0,$B1,$00,$00,$00,$00,$00,$03
        defb $01,$02,$00,$00,$00,$04,$00,$00,$00,$00,$03,$00,$04,$00,$00,$00
        defb $00,$00,$00,$00,$03,$00,$AE,$AF,$B0,$B1,$00,$00,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$AA,$AB,$AC,$AD,$00,$00,$00,$00,$00,$00
        defs 23, 0
        defb $A8,$A9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$05,$05,$05,$00,$00,$05,$05,$05,$05,$05,$05,$05,$05,$05
        defb $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$00
        defb $04,$00,$01,$02,$04,$00,$00,$03,$00,$00,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$03,$00,$00,$00,$00,$04,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$05
        defb $05,$05,$01,$02,$05,$05,$05,$05,$05,$05,$05,$00,$00,$05,$01,$02
        defb $05,$00,$00,$05,$05,$05,$05,$00,$00,$05,$01,$02,$05,$05,$05,$00
        defb $03,$00,$01,$02,$00,$03,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$00,$03,$00,$00,$00,$00,$04,$01,$02,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$05
        defb $05,$05,$01,$02,$05,$00,$00,$05,$01,$02,$05,$05,$05,$05,$05,$05
        defb $05,$05,$05,$05,$05,$05,$05,$00,$00,$05,$01,$02,$05,$05,$05,$00
        defb $03,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$03,$00,$00,$01,$02
        defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$03,$00,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$01,$02,$05,$05,$05,$05,$01,$02,$05,$05,$05,$05,$01,$02
        defb $05,$00,$00,$05,$01,$02,$05,$05,$05,$05,$05,$05,$05,$05,$05,$00
        defb $04,$00,$01,$02,$00,$01,$02,$00,$01,$02,$00,$03,$00,$00,$01,$02
        defb $04,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$B2
        defb $B3,$B4,$B5,$00,$00,$01,$02,$05,$05,$05,$05,$05,$05,$05,$01,$02
        defb $05,$00,$00,$05,$05,$05,$05,$05,$05,$05,$01,$02,$05,$05,$05,$AE
        defb $AF,$B0,$B1,$00,$00,$01,$02,$00,$00,$00,$00,$03,$00,$00,$01,$02
        defb $00,$00,$00,$04,$00,$00,$00,$03,$00,$00,$01,$02,$00,$03,$00,$AE
        defb $AF,$B0,$B1,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$AA
        defb $AB,$AC,$AD,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defs 16, 0
        defb $A8,$A9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$00
        defb $00,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$00
        defb $01,$02,$04,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$04,$00,$00,$03,$00,$00,$00,$01,$02,$00,$00
        defb $01,$02,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$01,$02,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05
        defb $00,$05,$05,$00,$00,$00,$00,$00,$00,$00,$03,$00,$01,$02,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$04,$01,$02,$03,$01,$02
        defb $00,$00,$00,$00,$05,$05,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$00,$03,$00,$05,$05,$00,$00,$00,$00,$05
        defb $01,$02,$05,$05,$05,$05,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$00,$00
        defb $01,$02,$04,$01,$02,$03,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$05,$05,$05,$00,$05,$05,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$00,$00,$04,$00,$00,$03,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$01,$02,$00,$05
        defb $05,$05,$05,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$00,$00,$01,$02,$00,$00
        defb $04,$03,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$00,$00,$00,$00,$05,$05,$00,$00,$03,$00,$00,$01,$02,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$05,$05,$05,$00,$04,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00
        defb $00,$00,$00,$01,$02,$05,$00,$00,$00,$00,$05,$01,$02,$05,$01,$02
        defb $05,$04,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B2
        defb $B3,$B4,$B5,$01,$02,$03,$00,$00,$00,$00,$04,$01,$02,$00,$01,$02
        defb $00,$00,$01,$02,$00,$00,$00,$00,$00,$05,$00,$00,$05,$05,$05,$AE
        defb $AF,$B0,$B1,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02
        defb $00,$00,$01,$02,$05,$05,$05,$05,$05,$00,$00,$00,$04,$03,$00,$AE
        defb $AF,$B0,$B1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA
        defb $AB,$AC,$AD,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $A8,$A9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$05,$05,$05,$05,$05,$00,$05,$05,$05,$05,$05,$05,$05,$05
        defb $00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$00
        defb $03,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$04
        defb $00,$00,$00,$00,$03,$00,$00,$01,$02,$00,$00,$00,$04,$00,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$05,$05,$05
        defb $05,$05,$05,$01,$02,$05,$05,$00,$00,$05,$05,$01,$02,$05,$05,$05
        defb $00,$00,$00,$00,$05,$05,$05,$01,$02,$05,$05,$00,$00,$00,$00,$00
        defb $04,$00,$00,$01,$02,$00,$00,$00,$00,$03,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$00,$00,$00,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05
        defb $05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$00,$00,$03,$00,$00
        defb $03,$00,$00,$05,$05,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$03,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$05,$05,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$04,$00,$05,$05,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$05,$05,$05
        defb $00,$00,$00,$00,$05,$01,$02,$00,$05,$05,$03,$05,$01,$02,$05,$00
        defb $03,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$B2
        defb $B3,$B4,$B5,$00,$00,$00,$00,$05,$05,$00,$05,$01,$02,$05,$05,$05
        defb $00,$00,$00,$00,$05,$01,$02,$05,$05,$03,$05,$05,$01,$02,$05,$AE
        defb $AF,$B0,$B1,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$04,$00,$00
        defb $00,$00,$00,$00,$04,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$AE
        defb $AF,$B0,$B1,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$AA
        defb $AB,$AC,$AD,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00
        defb $A8,$A9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$00,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
        defb $05,$00,$00,$05,$05,$05,$05,$00,$00,$00,$00,$05,$05,$05,$05,$00
        defb $03,$00,$00,$01,$02,$00,$04,$04,$04,$00,$01,$02,$00,$00,$01,$02
        defb $00,$00,$00,$04,$01,$02,$04,$00,$00,$00,$00,$04,$00,$00,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$00,$01,$02
        defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$00,$01,$02
        defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$05,$01,$02,$05,$05,$05,$05,$00,$01,$02,$00,$05,$01,$02
        defb $05,$05,$05,$03,$01,$02,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $03,$00,$00,$01,$02,$00,$00,$03,$00,$00,$01,$02,$00,$00,$01,$02
        defb $00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02
        defb $00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$05,$05,$05,$05,$05,$05,$05,$00,$01,$02,$00,$03,$05,$05
        defb $05,$01,$02,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$05,$05,$00
        defb $03,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$04
        defb $00,$01,$02,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$03,$00,$00
        defb $00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$01,$02,$05,$05,$01,$02,$05,$00,$01,$02,$00,$00,$00,$00
        defs 16, 0
        defb $03,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00
        defb $05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$05,$00
        defb $03,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B2
        defb $B3,$B4,$B5,$00,$00,$05,$01,$02,$05,$05,$05,$05,$05,$00,$00,$00
        defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$AE
        defb $AF,$B0,$B1,$00,$00,$04,$01,$02,$03,$00,$04,$04,$00,$00,$00,$00
        defb $00,$01,$02,$05,$05,$05,$05,$00,$00,$00,$00,$04,$00,$03,$00,$AE
        defb $AF,$B0,$B1,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$01,$02,$00,$03,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$AA
        defb $AB,$AC,$AD,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $A8,$A9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$05,$05,$00,$00,$00,$00,$05,$05,$05,$05,$05,$00,$00,$00
        defb $00,$05,$05,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $01,$02,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$04,$04,$04,$04,$00,$00,$00,$03,$01,$02,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$05
        defb $01,$02,$05,$00,$05,$01,$02,$05,$05,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$05,$05,$05,$05,$05,$05,$00,$00,$01,$02,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$01,$02,$03,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$03,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$05,$05,$05,$00
        defb $00,$00,$00,$05,$05,$01,$02,$05,$05,$05,$05,$00,$00,$00,$00,$00
        defb $00,$00,$05,$05,$05,$01,$02,$05,$05,$05,$01,$02,$00,$04,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$04,$00,$00,$00,$00,$00
        defb $00,$00,$03,$00,$00,$01,$02,$00,$03,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05
        defb $05,$05,$05,$05,$05,$01,$02,$05,$05,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$02,$05,$05,$05,$00
        defb $04,$04,$04,$04,$00,$01,$02,$00,$00,$00,$03,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defs 18, 0
        defb $05,$05,$05,$01,$02,$05,$05,$05,$01,$02,$00,$00,$00,$B2,$B3,$B4
        defb $B5,$00,$03,$00,$00,$00,$05,$05,$00,$05,$05,$00,$00,$00,$00,$00
        defb $03,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$AE,$AF,$B0
        defb $B1,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$05,$05,$05,$AE,$AF,$B0
        defb $B1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$00,$AA,$AB,$AC
        defb $AD,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$A8,$A9
        defs 34, 0
        defb $05,$05,$05,$05,$00,$00,$00,$05,$05,$05,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $01,$02,$00,$00,$05,$05,$05,$00,$00,$00,$05,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$05,$05,$05,$03,$00,$00,$00,$05,$01,$02,$03,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$05
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$05,$05
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$04
        defb $01,$02,$00,$00,$00,$05,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $01,$02,$00,$00,$00,$05,$00,$03,$04,$00,$00,$00,$00,$00,$00,$00
        defb $00,$05,$05,$05,$05,$05,$05,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$01,$02,$03,$00,$00,$00,$00,$00,$00,$05,$01,$02,$05,$00
        defb $00,$00,$00,$00,$00,$05,$00,$00,$00,$05,$00,$00,$05,$05,$05,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defb $00,$00,$00,$00,$00,$05,$00,$00,$00,$05,$00,$00,$00,$03,$00,$00
        defb $00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00
        defs 18, 0
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05
        defb $01,$02,$03,$00,$00,$00,$00,$00,$00,$05,$01,$02,$05,$05,$05,$05
        defb $05,$05,$05,$00,$05,$05,$05,$00,$00,$00,$00,$00,$00,$01,$02,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$04,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00
        defs 29, 0
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B2,$B3,$B4,$B5
        defb $00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$05,$05
        defb $01,$02,$05,$05,$05,$05,$05,$05,$00,$00,$00,$00,$AE,$AF,$B0,$B1
        defb $00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$04
        defb $01,$02,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$AE,$AF,$B0,$B1
        defb $00,$00,$01,$02,$03,$00,$01,$02,$03,$00,$01,$02,$03,$00,$00,$00
        defb $01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AA,$AB,$AC,$AD
        defb $00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A8,$A9,$00
        defs 28, 0
        defb $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
        defb $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
        defb $00,$04,$04,$01,$02,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
        defb $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01,$02,$04,$04,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$04,$04,$04,$04,$04,$04
        defb $04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$05,$01,$02,$05,$05,$00,$03,$00,$05,$05,$05,$05,$05,$05
        defb $05,$05,$05,$05,$05,$05,$00,$03,$00,$05,$05,$01,$02,$05,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$00,$03,$00,$05,$05,$01
        defb $02,$05,$05,$00,$03,$00,$05,$05,$05,$05,$05,$05,$05,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$05,$01,$02,$05,$05,$05,$00,$03,$00,$05,$05,$05
        defb $05,$05,$05,$00,$03,$00,$05,$05,$05,$01,$02,$05,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $B2,$B3,$B4,$B5,$00,$05,$05,$00,$03,$00,$05,$05,$03,$05,$05,$01
        defb $02,$05,$05,$03,$05,$05,$00,$03,$00,$05,$05,$00,$00,$00,$00,$00
        defb $AE,$AF,$B0,$B1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $AE,$AF,$B0,$B1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01
        defb $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $AA,$AB,$AC,$AD,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00
        defb $00,$A8,$A9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defs 16, 0
        defb $41,$4C,$4C,$20,$43,$4F,$4E,$56,$31,$0D,$56,$60,$20,$20,$4C,$44
        defb $20,$41,$2C,$28,$32,$39
d_C8C6:
        defb $34,$38,$2C,$C9,$38,$C9,$4C,$C9,$58,$C9,$66,$C9,$80,$C9,$8C,$C9
        defb $9C,$C9,$AC,$C9,$C0,$C9,$D6,$C9,$E4,$C9,$FA,$C9,$0A,$CA,$1C,$CA
        defb $2E,$CA,$46,$CA,$56,$CA,$66,$CA,$78,$CA,$BE,$CA,$D4,$CA,$E2,$CA
        defb $FA,$CA,$14,$CB,$2A,$CB,$3E,$CB,$50,$CB,$64,$CB,$76,$CB,$80,$CB
        defb $96,$CB,$B0,$CB,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        defs 22, 0
        defb $06,$35,$05,$00,$04,$38,$05,$35,$02,$00,$FF,$FF,$05,$3D,$07,$35
        defb $05,$00,$05,$28,$06,$3B,$09,$00,$05,$0C,$05,$0D,$02,$00,$FF,$FF
        defb $06,$10,$05,$0C,$05,$37,$03,$11,$02,$00,$FF,$FF,$03,$38,$06,$06
        defb $0E,$37,$05,$2D,$07,$13,$02,$00,$FF,$FF,$05,$0B,$06,$07,$05,$29
        defb $07,$37,$05,$11,$08,$00,$07,$2D,$05,$07,$05,$23,$03,$1E,$05,$3E
        defb $02,$00,$FF,$FF,$05,$20,$08,$2B,$09,$1A,$05,$11,$02,$00,$FF,$FF
        defb $04,$39,$05,$06,$10,$00,$05,$37,$06,$08,$05,$3A,$02,$00,$FF,$FF
        defb $03,$3F,$07,$13,$07,$00,$06,$3E,$07,$33,$02,$0D,$02,$00,$FF,$FF
        defb $09,$2E,$06,$07,$07,$3E,$09,$00,$06,$21,$02,$1E,$05,$1E,$05,$0B
        defb $02,$00,$FF,$FF,$05,$39,$05,$1A,$05,$23,$07,$00,$04,$38,$07,$35
        defb $0A,$00,$06,$1D,$06,$2F,$02,$00,$FF,$FF,$05,$3D,$07,$35,$06,$00
        defb $03,$38,$06,$20,$02,$00,$FF,$FF,$04,$21,$03,$35,$04,$0B,$07,$11
        defb $09,$00,$05,$37,$05,$11,$04,$18,$05,$09,$02,$00,$FF,$FF,$05,$22
        defb $05,$35,$05,$2C,$0D,$00,$06,$0F,$03,$09,$02,$00,$FF,$FF,$05,$22
        defb $05,$14,$05,$10,$0F,$00,$07,$35,$04,$23,$03,$34,$02,$00,$FF,$FF
        defb $05,$35,$05,$38,$06,$37,$0B,$00,$05,$10,$06,$1A,$04,$0B,$02,$00
        defb $FF,$FF,$06,$27,$05,$17,$05,$2C,$0B,$00,$05,$10,$06,$0F,$04,$0B
        defb $05,$1F,$07,$23,$09,$33,$02,$00,$FF,$FF,$05,$2D,$07,$29,$04,$00
        defb $02,$1A,$04,$35,$04,$11,$02,$00,$FF,$FF,$05,$3D,$02,$18,$05,$11
        defb $08,$00,$05,$0C,$04,$11,$02,$00,$FF,$FF,$05,$0D,$05,$1E,$05,$28
        defb $09,$00,$05,$2E,$05,$17,$05,$0B,$02,$00,$FF,$FF,$06,$14,$0B,$00
        defb $05,$1A,$05,$2C,$05,$15,$09,$00,$05,$07,$05,$28,$0A,$00,$04,$37
        defb $04,$37,$05,$17,$04,$28,$04,$11,$05,$2E,$05,$2F,$09,$00,$05,$09
        defb $04,$0E,$05,$07,$05,$2B,$05,$07,$05,$0B,$04,$11,$07,$37,$09,$00
        defb $05,$32,$05,$0F,$04,$08,$06,$13,$0B,$00,$06,$07,$03,$22,$02,$00
        defb $FF,$FF,$05,$2D,$07,$35,$08,$00,$05,$17,$05,$0B,$08,$00,$05,$0D
        defb $05,$06,$07,$10,$02,$00,$FF,$FF,$05,$37,$05,$37,$07,$16,$05,$09
        defb $05,$33,$02,$00,$FF,$FF,$05,$39,$06,$35,$05,$09,$05,$2D,$05,$0F
        defb $05,$37,$09,$00,$05,$2A,$05,$14,$08,$37,$02,$00,$FF,$FF,$06,$0C
        defb $06,$0B,$05,$37,$03,$11,$04,$27,$03,$0F,$04,$29,$04,$25,$0A,$0F
        defb $05,$0B,$06,$37,$02,$00,$FF,$FF,$05,$38,$05,$35,$09,$11,$05,$14
        defb $05,$00,$05,$38,$05,$35,$09,$11,$05,$14,$02,$00,$FF,$FF,$05,$09
        defb $05,$2D,$04,$14,$07,$33,$09,$00,$05,$2E,$05,$17,$05,$0B,$02,$00
        defb $FF,$FF,$05,$09,$05,$2D,$04,$14,$07,$33,$09,$00,$05,$0D,$05,$1F
        defb $02,$00,$FF,$FF,$05,$09,$05,$2D,$04,$14,$07,$33,$09,$00,$05,$1D
        defb $04,$27,$05,$13,$02,$00,$FF,$FF,$05,$09,$05,$2D,$04,$14,$07,$33
        defb $09,$00,$05,$28,$05,$3A,$02,$00,$FF,$FF,$06,$35,$09,$00,$05,$05
        defb $02,$00,$FF,$FF,$05,$3B,$09,$00,$05,$19,$07,$1E,$08,$00,$06,$27
        defb $09,$07,$02,$21,$09,$31,$02,$00,$FF,$FF,$05,$0B,$07,$17,$06,$11
        defb $09,$00,$06,$22,$04,$1E,$04,$21,$09,$00,$05,$07,$07,$38,$08,$28
        defb $02,$00,$FF,$FF,$06,$39,$08,$3B,$04,$15,$06,$00,$06,$2D,$05,$1E
        defb $03,$29,$06,$00,$0B,$00,$FF,$FF

        SAVEBIN "build/game.bin", $61A8, $6A1C
