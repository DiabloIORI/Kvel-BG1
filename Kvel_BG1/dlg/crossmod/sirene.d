CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSirene1","GLOBAL",0)~ THEN BC0SIREN C0KvelSirene
~你的疤不少，克维尔。你那些仗想必打得苦……也受了不少痛。~
DO ~SetGlobal("C0KvelSirene1","GLOBAL",1)~
== BC0KVEL ~卓尔对苦与痛并不陌生。我只是没那份虚荣去遮我皮上的印记。~
== BC0SIREN ~但愿情形不同。可你如今已逃出了那种日子。这不算给人指望么？~
== BC0KVEL ~我没你想的那般自由。你也不自由，凭你的信仰叫你担的那副担子。~
== BC0SIREN ~这我不能否认。可你身为我的同伴，该知道不管你自己的挣扎是什么，都不必一个人扛。~
== BC0KVEL ~有些担子不是那么容易分担的。你终有一日会明白，有些残酷的真事非得面对，身边站多少人都不打紧。~
== BC0SIREN ~……我知道。~
== BC0KVEL ~别再拿同情往自己身上加。我用不着它，它也于你无益。我不会在战阵上因你动摇的心志而送命。~
EXIT