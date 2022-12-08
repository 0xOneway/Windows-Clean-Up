@ECHO OFF

ECHO==========================
ECHO Clean Up / BSOD Fix
ECHO==========================

PAUSE

ECHO==========================
ECHO WINDOWS INFO
ECHO==========================

systeminfo | findstr /c:"OS Name"

systeminfo | findstr /c:"OS Version"

systeminfo | findstr /c:"System Type"

ECHO==========================
ECHO WOULD YOU LIKE TO PROCEED?
ECHO==========================

PAUSE

ECHO==========================
ECHO STARTING CLEANUP
ECHO==========================

DISM.exe /Online /Cleanup-image /Restorehealth

sfc /scannow


ECHO==========================
ECHO PROCESS COMPLETE
ECHO==========================

PAUSE

@ECHO ON
