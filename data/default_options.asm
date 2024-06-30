; DefaultOptions:
; ; wOptions: med text speed
; 	db TEXT_DELAY_MED
; ; wSaveFileExists: no
; 	db FALSE
; ; wTextboxFrame: frame 1
; 	db FRAME_1
; ; wTextboxFlags: use text speed
; 	db 1 << FAST_TEXT_DELAY_F
; ; wGBPrinterBrightness: normal
; 	db GBPRINTER_NORMAL
; ; wOptions2: menu account on
; 	db 1 << MENU_ACCOUNT

; 	db $00
; 	db $00
; .End
; 	assert DefaultOptions.End - DefaultOptions == wOptionsEnd - wOptions

; modified for fast
DefaultOptions:
; wOptions: fast text speed, battle scene off, set
	db TEXT_DELAY_FAST | (1 << BATTLE_SCENE) | (1 << BATTLE_SHIFT)
; wSaveFileExists: no
	db FALSE
; wTextboxFrame: frame 1
	db FRAME_1
; wTextboxFlags: use text speed
	db 1 << FAST_TEXT_DELAY_F
; wGBPrinterBrightness: normal
	db GBPRINTER_NORMAL
; wOptions2: menu account off
	db 0 << MENU_ACCOUNT

	db $00
	db $00
.End
	assert DefaultOptions.End - DefaultOptions == wOptionsEnd - wOptions
