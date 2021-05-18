goto END_LIB_CAST_SHARED

##############################################################################
SPELLSHARE:
SPELLSHARED:
# LIST THE OPTIONS AND VARIABLES
ECHO * ---- Syntax:.cast TYPE TARGET
ECHO * ---- 
ECHO * ---- Burden - DEBIL
ECHO * ---- Ease Burden (EASE) - AUG
ECHO * ---- Manifest Force (MAF) - WARD
ECHO * ---- Strange Arrow (STRA) - TARGETED
ECHO * ---- 

goto end
##############################################################################

#Set special variables. Manually add if desired.
#if "$charactername" = "Taliciah" then 
#if "$charactername" = "Cassilea" then goto CASSILEA_VARS
#if "$charactername" = "Henna" then goto HENNA_VARS
#if "$charactername" = "Cimiarinen" then goto CIMIARINEN_VARS
#if "$charactername" = "Ceretfilniva" then goto CERETFILNIVA_VARS

SPELLBURDEN:
### Default Prep 1 / ?
var message Casting Burden
var manaMin 1
var manaAdd 0
var requireTarget 1
#var pausetime 
goto CAST

SPELLEASE:
### Default Prep 1 / ?
var message Casting Ease Burden
var manaMin 1
var manaAdd 0
if "$charactername" = "Cassilea" then { 	
	var manaMin 2
	var manaAdd 6
	}
var requireTarget
#var pausetime 
goto CAST

SPELLMAF:
### Default Prep 1 / ?
var message Casting Manifest Force
var manaMin 1
var manaAdd 0
var requireTarget
#var pausetime 
goto CAST

SPELLSTRA:
### Default Prep 1 / ?
var message Casting Strange Arrow
var manaMin 1
var manaAdd 0
var requireTarget 1
#var pausetime 
goto CAST

END_LIB_CAST_SHARED: