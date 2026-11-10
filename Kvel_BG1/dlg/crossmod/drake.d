CHAIN IF ~InParty("C0Drake")
See("C0Drake")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("C0Drake",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDrake1","GLOBAL",0)~ THEN BC0KVEL C0KvelDrake
~祭司，你不信我的时候比我料的长。我以为凭你的务实，会更谨慎些。~
DO ~SetGlobal("C0KvelDrake1","GLOBAL",1)~
== BC0DRAKE ~你哪怕稍有不同，我也许会。可我一见兵就认得出来，我在军里那些年，叫我很难不信与我同行的人。你若愿意，就当这是一点情分。~
== BC0KVEL ~至少这一点上我们相像。~
== BC0DRAKE ~哦，我倒不敢冒昧说我们都那么像。就我所见，你不是个有德之人。可你心里有指挥官的气性，那种肯为手下的人拼自己的命、也指望他们同样回报的气性。这一点，我敬。~
== BC0KVEL ~也许。不过别对我指望太多。我的动机没那么无私，不会为别人的蠢事把自己的命丢掉。~
== BC0DRAKE ~嘿。我也不指望你那样。我这一生见过的蠢烈士已经太多。但愿我今日身边站着的，没一个会进那份名单。~
EXIT