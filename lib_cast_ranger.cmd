goto END_LIB_CAST_RANGER

##############################################################################
SPELLCIMI:
# LIST THE OPTIONS AND VARIABLES
ECHO * ---- Syntax:.cast TYPE TARGET
ECHO * ---- 
ECHO * ---- BUFF: 
ECHO * ----       INST, SOTT, STW
ECHO * ---- 
ECHO * ---- AUGMENTATION: 
ECHO * ----       Athleticism
ECHO * ---- 
ECHO * ---- TARGETED:
ECHO * ----       EC, Stampede
ECHO * ---- 
ECHO * ---- WARD:
ECHO * ----       EY
ECHO * ---- 

goto end
##############################################################################

SPELLATH:
SPELLATHL:
SPELLATHLET:
SPELLATHLETICISM:
# Prep 1 / 10
var message Casting Athleticism
var manaMin 9
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLCOMP:
SPELLCOMPOST:
# Prep 1 / 4
var message Casting Compost
var manaMin 4
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLEC:
# Prep 1 / 6
var message Casting Eagle's Cry
var manaMin 5
var manaAdd 0
var requireTarget 0
var castType target
var pausetime 2
goto CAST

SPELLEY:
# Prep 5 / 5
var message Casting Essence of Yew
var manaMin 5
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLINST:
SPELLINSTINCT:
# Prep 5 / 9
var message Casting Instinct
var manaMin 8
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLSTW:
# Prep 1 / 10
var message Casting See the Wind
var manaMin 9
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLSOTT:
# Prep 5 / 9
var message Casting Sense of the Tiger
var manaMin 8
var manaAdd 0
var requireTarget 0
#var pausetime 
goto CAST

SPELLSTAM:
SPELLSTAMP:
SPELLSTAMPEDE:
# Prep 2 / 4
var message Casting Stampede
var manaMin 3
var manaAdd 0
var requireTarget 0
var castType target
var pausetime 9
goto CAST

END_LIB_CAST_RANGER: