BEGIN ~A#FDRU~

BEGIN ~A#FSOR~

BEGIN ~A#FMURN~

IF ~Global("A#MURNRETURN","GLOBAL",2)~ THEN BEGIN MeetAgain
SAY @0 
IF ~~ THEN REPLY @1 GOTO Threat
IF ~~ THEN REPLY @2 GOTO Punish
IF ~~ THEN REPLY @3 GOTO Punish
IF ~~ THEN REPLY @4 GOTO Threat
IF ~~ THEN REPLY @5 GOTO Punish
IF ~~ THEN REPLY @6 GOTO Punish
IF ~NumInPartyGT(1)~ THEN REPLY @7 GOTO Threat
IF ~NumInParty(1)~ THEN REPLY @8 GOTO Threat
END

IF ~~ THEN BEGIN Threat
SAY @9
IF ~~ THEN REPLY @10 GOTO Finale
IF ~~ THEN REPLY @11 GOTO Finale
IF ~~ THEN REPLY @12 GOTO Finale
IF ~~ THEN REPLY @13 GOTO Finale
IF ~~ THEN REPLY @14 GOTO Finale
IF ~~ THEN REPLY @15 GOTO Finale
END

IF ~~ THEN BEGIN Punish
SAY @16
IF ~~ THEN REPLY @10 GOTO Finale
IF ~~ THEN REPLY @11 GOTO Finale
IF ~~ THEN REPLY @12 GOTO Finale
IF ~~ THEN REPLY @13 GOTO Finale
IF ~~ THEN REPLY @14 GOTO Finale
IF ~~ THEN REPLY @15 GOTO Finale
END

CHAIN IF ~~ THEN ~A#FMURN~ Finale
@17
DO ~SetGlobal("A#MURNRETURN","GLOBAL",3)~
== ~%ALORA_JOINED%~ IF ~InParty("ALORA")
!Dead("ALORA")
!StateCheck("ALORA",STATE_SLEEPING)~ THEN @18
== ~%FALDORN_JOINED%~ IF ~InParty("FALDORN")
!Dead("FALDORN")
!StateCheck("FALDORN",STATE_SLEEPING)~ THEN @19
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%")
!Dead("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",STATE_SLEEPING)~ THEN @20
== ~%XZAR_JOINED%~ IF ~InParty("XZAR")
!Dead("XZAR")
!StateCheck("XZAR",STATE_SLEEPING)~ THEN @21
== ~%TIAX_JOINED%~ IF ~InParty("TIAX")
!Dead("TIAX")
!StateCheck("TIAX",STATE_SLEEPING)~ THEN @22
== ~%KIVAN_JOINED%~ IF ~InParty("KIVAN")
!Dead("KIVAN")
!StateCheck("KIVAN",STATE_SLEEPING)~ THEN @23
== ~%QUAYLE_JOINED%~ IF ~InParty("QUAYLE")
!Dead("QUAYLE")
!StateCheck("QUAYLE",STATE_SLEEPING)~ THEN @24
== ~%VICONIA_JOINED%~ IF ~InParty("VICONIA")
!Dead("VICONIA")
!StateCheck("VICONIA",STATE_SLEEPING)~ THEN @25
== ~%DYNAHEIR_JOINED%~ IF ~InParty("DYNAHEIR")
!Dead("DYNAHEIR")
!StateCheck("DYNAHEIR",STATE_SLEEPING)~ THEN @26
== ~%MINSC_JOINED%~ IF ~InParty("MINSC")
!Dead("MINSC")
!StateCheck("MINSC",STATE_SLEEPING)~ THEN @27
== ~%EDWIN_JOINED%~ IF ~InParty("EDWIN")
!Dead("EDWIN")
!StateCheck("EDWIN",STATE_SLEEPING)~ THEN @28
== ~A#FSOR~ @29
== ~%GARRICK_JOINED%~ IF ~InParty("GARRICK")
!Dead("GARRICK")
!StateCheck("GARRICK",STATE_SLEEPING)~ THEN @30
== ~%XAN_JOINED%~ IF ~InParty("XAN")
!Dead("XAN")
!StateCheck("XAN",STATE_SLEEPING)~ THEN @31
== ~%SKIE_JOINED%~ IF ~InParty("SKIE")
!Dead("SKIE")
!StateCheck("SKIE",STATE_SLEEPING)~ THEN @32
== ~%KAGAIN_JOINED%~ IF ~InParty("KAGAIN")
!Dead("KAGAIN")
!StateCheck("KAGAIN",STATE_SLEEPING)~ THEN @33
== ~%CORAN_JOINED%~ IF ~InParty("CORAN")
!Dead("CORAN")
!StateCheck("CORAN",STATE_SLEEPING)~ THEN @34
== ~%AJANTIS_JOINED%~ IF ~InParty("AJANTIS")
!Dead("AJANTIS")
!StateCheck("AJANTIS",STATE_SLEEPING)~ THEN @35
== ~%JAHEIRA_JOINED%~ IF ~InParty("JAHEIRA")
!Dead("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)~ THEN @36
== ~A#FDRU~ @37
== ~%MONTARON_JOINED%~ IF ~InParty("MONTARON")
!Dead("MONTARON")
!StateCheck("MONTARON",STATE_SLEEPING)~ THEN @38
== ~%SAFANA_JOINED%~ IF ~InParty("SAFANA")
!Dead("SAFANA")
!StateCheck("SAFANA",STATE_SLEEPING)~ THEN @39
== ~%ELDOTH_JOINED%~ IF ~InParty("ELDOTH")
!Dead("ELDOTH")
!StateCheck("ELDOTH",STATE_SLEEPING)~ THEN @40
== ~%KHALID_JOINED%~ IF ~InParty("KHALID")
!Dead("KHALID")
!StateCheck("KHALID",STATE_SLEEPING)~ THEN @41
== ~%YESLICK_JOINED%~ IF ~InParty("YESLICK")
!Dead("YESLICK")
!StateCheck("YESLICK",STATE_SLEEPING)~ THEN @42
== ~%BRANWEN_JOINED%~ IF ~InParty("BRANWEN")
!Dead("BRANWEN")
!StateCheck("BRANWEN",STATE_SLEEPING)~ THEN @43
== ~%SHARTEEL_JOINED%~ IF ~InParty("SHARTEEL")
!Dead("SHARTEEL")
!StateCheck("SHARTEEL",STATE_SLEEPING)~ THEN @44
EXIT
