PARAMETERS DECRYPT,ENDCYPT,isi
*===================================*
FUNCTION DECRYPT
*===================================*
parameter x_sampai, x_asal, x_oprid
FOR i = 1 TO x_sampai
	STORE ASC(SUBSTR(x_asal,i,1))-200-x_oprid TO j
	STORE MOD(j,254) TO j
	IF i=1
	ydecr=chr(j)
	ELSE
	ydecr=ydecr+chr(j)
	ENDIF
ENDFOR
RETURN ydecr

*===================================*
FUNCTION ENCrYPT
*===================================*
parameter x_sampai, x_asal, x_oprid
FOR i = 1 TO x_sampai
	STORE ASC(SUBSTR(x_asal,i,1))+200+x_oprid TO j
	STORE MOD(j,254) TO j
	IF i=1
	yencr=chr(j)
	ELSE
	yencr=yencr+chr(j)
	ENDIF
ENDFOR
RETURN yencr