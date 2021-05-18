goto END_LIB_CAST_MOONMAGE

##############################################################################
SPELLTAL:
# LIST THE OPTIONS AND VARIABLES
ECHO * ---- Syntax:.cast TYPE TARGET
ECHO * ---- 
ECHO * ---- BUFF: 
ECHO * ----       Seer, CoL, Psy, Contingency, WD
ECHO * ---- 
ECHO * ---- AUGMENTATION: 
ECHO * ----       AuS, PG, CV, RF, SHADOWS, Shadowling, GaF
ECHO * ---- 
ECHO * ---- LOCATE, GATE or TELEPORT:
ECHO * ----       CV, [FM, SM] LOCATE, [Moongate or Tele]
ECHO * ---- 
ECHO * ---- COMBAT:
ECHO * ----       PD, DO, Burn, TKT, TKS, Moonblade
ECHO * ---- 
ECHO * ---- DEBIL:
ECHO * ----       Calm, Sleep, Dazzle
ECHO * ---- 
ECHO * ---- OTHER:
ECHO * ----		TH, DG
ECHO * ---- 
goto end
##############################################################################

SPELLAUS:
# Prep 5 / 50
var message Casting Aura Sight
var manaMin 5
var manaAdd 40
var requireTarget 0
goto CAST

SPELLBURN:
# Prep 7 / 14
var message Casting Burn
var manaMin 12
var manaAdd 0
var requireTarget 0
var pausetime 2
var castType target
goto CAST

SPELLCOL:
# Cage of Light: Prep 15 / 34
var message Casting Cage of Light
var manaMin 15
var manaAdd 15
var requireTarget 1
goto CAST

SPELLCALM:
# Prep 1 / 10
var message Casting Calm
var manaMin 1
var manaAdd 7
var requireTarget 1
var pausetime 2
goto CAST

SPELLCV:
# Prep 1 / 73
var message Casting Clear Vision
var manaMin 1
var manaAdd 48
var requireTarget 0
goto CAST

SPELLCON:
SPELLCONT:
SPELLCONTIN:
SPELLCONTINGENCY:
# Prep 15 / 54 
var message Casting Contingency on $moon
var manaMin 15
var manaAdd 35
var requireTarget 1
goto CAST

SPELLDAZ:
SPELLDAZZLE:
# Prep 1 / 7
var message Casting Calm
var manaMin 1
var manaAdd 4
var requireTarget 1
var pausetime 2
goto CAST

SPELLDO:
# Prep 2 / 18
var message Casting Dinazen Olkar
var manaMin 2
var manaAdd 15
var requireTarget 0
var pausetime 2
var castType target
goto CAST

SPELLDG:
# Prep 15 / 54
var message Casting Distant Gaze
var manaMin 15
var manaAdd 35
var requireTarget 1
goto CAST

SPELLFM:
# Focus Moonbeam: Prep 1 / 100
var message Casting Focus Moonbeam
var manaMin 10
var manaAdd 48
var requireTarget 1
goto CAST

SPELLGAF:
# Prep 5 / 65
var message Casting Gauge Flow
var manaMin 5
var manaAdd 48
var requireTarget 0
goto CAST

SPELLLOC:
SPELLLOCATE:
# Prep 15 / 54
var message Casting Locate
var manaMin 15
var manaAdd 35
var requireTarget 1
goto CAST

SPELLMOONB:
SPELLMOONBL:
SPELLMOONBLADE:	
# Prep 15 / 54
var message Casting Moonblade
var manaMin 15
var manaAdd 35
var requireTarget 1
var pausetime 2
goto CAST

SPELLMOONGATE:	
# Prep 5 / 14
var message Casting Moongate
var manaMin 5
var manaAdd 6
var requireTarget 1
goto CAST

SPELLPD:
# Prep 2 / 18
var message Casting Partial Displacement
var manaMin 2
var manaAdd 15
var requireTarget 0
var pausetime 2
var castType target
goto CAST

SPELLPG:
# Prep 5 / 70
var message Casting Piercing Gaze
var manaMin 5
var manaAdd 48
var requireTarget 0
goto CAST

SPELLPSY:
# Prep 5 / 42
var message Casting Psychic Shield
var manaMin 5
var manaAdd 34
var requireTarget 0
goto CAST

SPELLRF:
# Prep 5 / 70
var message Casting Refractive Field
var manaMin 5
var manaAdd 48
var requireTarget 0
goto CAST

SPELLSHADOWL:
SPELLSHADOWLING:
# Prep 15 / 54
var message Casting Shadowling
var manaMin 15
var manaAdd 35
var requireTarget 0
goto CAST

SPELLSEER:
# Seer's Sense: Prep 15 / 45
var message Casting Seer's Sense
var manaMin 15
var manaAdd 26
var requireTarget 0
var pausetime 18
goto CAST

SPELLSM:
# Prep 15 / 54
var message Casting Shift Moonbeam
var manaMin 15
var manaAdd 35
var requireTarget 0
goto CAST

SPELLSLEEP:
# Prep 1 / 7
var message Casting Sleep
var manaMin 1
var manaAdd 4
var requireTarget 1
var pausetime 2
goto CAST

SPELLSHADOW:
SPELLSHADOWS:
# Prep 1 / 73
var message Casting Shadows
var manaMin 1
var manaAdd 48
var requireTarget 0
goto CAST

###
### Starlight Sphere 
###

SPELLTKS:
# Prep 15 / 29
var message Casting Telekinetic Storm
var manaMin 15
var manaAdd 10
var requireTarget 0
#var pausetime 
var castType target
goto CAST

SPELLTKT:
# Prep 1 / 26
var message Casting Telekinetic Throw
var manaMin 1
var manaAdd 20
var requireTarget 0
var pausetime 9
var castType target
goto CAST

SPELLTELE:
SPELLTELEPORT:
# Prep 5 / 70
var message Casting Teleport
var manaMin 18
var manaAdd 48
var requireTarget 1
goto CAST

SPELLTH:
SPELLTHOUGHT:
SPELLTHOUGHTCAST:
# Prep 15 / 54
var message Casting Thoughtcast
var manaMin 15
var manaAdd 35
var requireTarget 0
goto CAST

SPELLWD:
# Prep 5 / 42
var message Casting Whole Displacement
var manaMin 5
var manaAdd 35
var requireTarget 0
var pausetime 2
goto CAST

END_LIB_CAST_MOONMAGE: