
GENR CPCFH=@PC(CFH)
GENR CPPERECEDEROS=@PC(PERECEDEROS)
GENR CPPROCESADOS=@PC(PROCESADOS)

CPPROCESADOS.LINE
CPPERECEDEROS.line
CPCFH.LINE 
'punto b
genr danomalia=@d(anomaliA)
danomalia.line
anomalia.line
danomalia.correl
group g1 @expand(@month)

equation arima.ls anomalia ar(3) 

'punto c


