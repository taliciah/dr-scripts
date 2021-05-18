############### INCLUDES ##############
include lib_functions.cmd
include lib_characters.cmd
include lib_cast_moonmage.cmd
include lib_cast_ranger.cmd
include lib_cast_bard.cmd
include lib_cast_shared.cmd

###
### Test Moon Mage spells: Focus Moonbeam, Shift Moonbeam, Moongate, Teleport, Locate, Moonblade
###

############### VARIABLES ##############
# variable %1 = name of spell(s) to cast
# variable %2 = target or moon (katamba, xibar, yavash) OR 'min' 
#variable %2 = if 'min', skip harnessing from cambrinth

### Default variables
var pausetime 12
var requireTarget 1
var castType prep
var minOnly 0

### spellType
if_1 {
	var spellType %1
	}
else {
	var spellType help
	}

### spellTarget  --- ^(?:k|kat|katamba)
if_2 {
	var spellTarget %2
	if matchre("%2", "^k$|^kat$|^katamba$") then {
			var spellTarget Katamba
			}
	if matchre("%2", "^x$|^xib$|^xibar$") then {
			var spellTarget Xibar
			}
	if matchre("%2", "^y$|^yav$|^yavash$") then {
			var spellTarget Xibar
			}
	}
	
### minOnly - if set, do not harness cambrinth
if_2 {
	if matchre("%2", "^min$") then var minOnly 1
	}
if_3 {
	if matchre("%3", "^min$") then var minOnly 1
	}

goto SPELL%spellType

##############################################################################
SPELLHELP:
# LIST THE OPTIONS AND VARIABLES
var message Syntax:.cast -SPELLNAME -TARGET/MOON -MIN (to skip cambrinth)
gosub print
goto end
##############################################################################

CAST:
pause .5
gosub print
pause .5

### Is a target required? Have you specified a target?
if %requireTarget > 0 then {
	if_2 {
		# all is good, continue
		}
	else {
		var message WAIT! You must choose a target (or moon) for your spell
		gosub print
		goto end
		}
	}

### Prep the spell	
pause .5
send %castType %spellType %manaMin
pause 1

### Using cambrinth?
if ((%manaAdd > 0) AND (%minOnly = 0)) then {
	send charge my %cambrinth %manaAdd
	pause 10
	send invoke my %cambrinth %manaAdd
	}
else {
	pause 10
	}

### Wait 
WAIT:
save %pausetime
gosub subWAIT

### Cast the spell
send cast %spellTarget
pause 2
var message Cast is complete
gosub print
goto END

########## SUB ROUTINES ##########

subWAIT:
pause %s
return

########## COMPOUND SPELLS ##########
SPELLBUFF:
#var spellCount 3

END:
# if spellcount = 0
# 		exit
# else	
# 		goto SPELL%spellType