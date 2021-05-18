goto END_LIB_CAST_BARD

##############################################################################
SPELLCASS:
# LIST THE OPTIONS AND VARIABLES
ECHO * ---- Syntax:.cast TYPE TARGET
ECHO * ---- 
ECHO * ---- AUGMENTATION: 
ECHO * ----       CARE (c), HODI (c), FAE (c), WOTM (c), ECRY
ECHO * ---- 
ECHO * ---- TARGETED:
ECHO * ----       BOS
ECHO * ---- 
ECHO * ---- WARDING & DEBIL:
ECHO * ----       AEWO (c - debil), DMRS (debil), GJ (c - ward)
ECHO * ---- 
ECHO * ---- OTHER:
ECHO * ----       AoT
ECHO * ---- 

goto end
##############################################################################

SPELLAEWO:
### Prep 2 / 2
var message Casting Aether Wolves (Attunement pool regeneration, DEBIL Immobilizes)
var manaMin 2
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLAOT:
SPELLAURA:
### Prep 1 / 10
var message Casting Aura of Tongues
var manaMin 1
var manaAdd 7
var requireTarget 0
#var pausetime 
goto CAST

SPELLBOS:
### Prep 2 / 2
var message Casting Breath of Storms (TARGET Single target TM damage)
var manaMin 2
var manaAdd 0
var requireTarget 1
#var pausetime 
goto CAST

SPELLCARE:
### Prep 2 / 3
var message Casting Caress of The Sun (Drying. Protects instruments)
var manaMin 2
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLDMRS:
### Prep 3 / 5
var message Casting Demrris' Resolve (DEBIL Area effect stun and knockdown)
var manaMin 4
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLECRY:
### Prep 1 / 8
var message Casting Eillie's Cry (Buff Performance, locate on death)
var manaMin 1
var manaAdd 5
var requireTarget 0
#var pausetime 
goto CAST

SPELLFAE:
### Prep 2 / 3
var message Casting Faenella's Grace (Improved learning)
var manaMin 2
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLGJ:
### Prep 5 / 5
var message Casting Glythtide's Joy (WARD Protection from TM)
var manaMin 5
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLHODI:
### Prep 5 / 6
var message Casting Hodierna's Lilt (Vitality heal, Fatigue heal, Spirit heal)
var manaMin 5
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLWOTM:
### Prep 5 / 8
var message Casting Whispers of the Muse (Buff highest craft skill)
var manaMin 5
var manaAdd 2
var requireTarget 0
#var pausetime 
goto CAST

END_LIB_CAST_BARD: