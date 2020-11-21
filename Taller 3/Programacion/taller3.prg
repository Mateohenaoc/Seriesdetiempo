wf m 2001m1 2020m8
genr cambiopi=@pc(pi)
group g1 @expand(@month)
equation punto1.ls cambiopi ar(1) ar(2) ar(3) ar(4) ar(6) ar(12) ma(1) g1 @d(import(-1)) @d(import(-2))
equation punto2.ls cambiopi ar(1) ar(2) ar(3) ar(4) ar(6) ar(12) g1 @d(import(-1)) @d(import(-2))
equation punto3.ls cambiopi ar(1) ar(2) ar(3) ar(4) ar(6) ar(11) ar(12) ma(1) g1 @d(import(-1)) @d(import(-2))
equation punto3c.ls cambiopi ar(1) ar(2) ar(3) ar(4) ar(6) ar(10) ar(11) ar(12) ma(1) g1 @d(import(-1)) @d(import(-2))
genr difimport=@d(import)
genr inf=@pc(ipc)
equation punto3.ls cambiopi ar(1) ar(2) ar(3) ar(4) ar(6) ar(12) g1 inf(-1) inf(-2)
equation punto2.ls cambiopi ar(1) ar(2) ar(3) ar(4) ar(6) ar(12) g1 (@d(IPC(-1)))  (@d(ipc(-2)))


equation punto3b.ls cambiopi ar(1) ar(2) ar(3) ar(4) ar(6) ar(12) g1 @d(import(-1)) @d(import(-2))
equation puntoimp.ls difimport ar(1) ar(2) ar(3) ar(12) 
equation punto3c.ls cambiopi ar(1) ar(4) ar(6) ar(12) g1 @d(import(-1)) @d(import(-2))
equation punto3d.ls cambiopi ar(1) ar(4) ar(6) ar(12) g1 difimportf(-1) difimportf(-2)
equation punto3e.ls pi ar(1) ar(4) ar(6) ar(12) g1 difimportf(-1) difimportf(-2)

wf m 2001m11 2020m09
genr iccd=@d(icc)
iccd.stats
genr citd=@pc(desempleo)
citd.spectral
equation punto4b.ls iccd ar(2) ar(3) ar(6) ar(12) citd(-1) citd(-2)
equation punto4ca.ls citd ar(4) ar(12)
equation punto4c.ls icc ar(2) ar(3) ar(6) ar(12) citdpredi(-1) citdpredi(-2)
equation punto4pcc.ls iccd ar(2) ar(3) ar(6) ar(12) citdpredi(-1) citdpredi(-2)

wf m 2001m1 2020m08
genr cptd=@pc(td)
cptd.spectral
group g1 @expand(@month)
equation punto5.ls cptd ar(2) ar(4) ar(10) ar(12) g1 (@d(export(-1))) (@d(export(-2)))
genr exportd=@d(export)
equation exporteq.ls exportd ar(1) ar(7) ar(12) ma(1)
equation punto5td.ls td ar(2) ar(4) ar(10) ar(12) g1 exportdpredict(-1) exportdpredict(-2)
equation punto5cptd.ls cptd ar(2) ar(4) ar(10) ar(12) g1 exportdpredict(-1) exportdpredict(-2)
