CHAIN IF ~InParty("C0Aura")
See("C0Aura")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDrake1","GLOBAL",0)~ THEN BC0AURA C0KvelAura
~克维尔，你背上绑的那件分节的木器……是钓竿，是不是？~
DO ~SetGlobal("C0KvelDrake1","GLOBAL",1)~
== BC0KVEL ~你认得它……这我倒没料到。它原不是为此造的，我改成了自己的用处。~
== BC0AURA ~你知道么，我是在渔镇长大的。我不吃鱼，可技法与器具还是学的。这是你喜欢做的事么？~
== BC0KVEL ~你可以这么看。钓鱼是有用的本事，本身也是个合意的消遣。~
== BC0AURA ~想不到你连钓竿都会自己设计！你若有个由头，我倒想看看你还能想出什么。~
== BC0KVEL ~哼。看着实用时，我也弄些新东西。我可没有你对未知那份着迷。~
== BC0AURA ~你觉得我哪天能试试那钓竿么？我想看看它比我惯用的那种强多少。说不定我还能改好一点！~
== BC0KVEL ~那不妥。你会被它的分量压弯腰。而它要钓的东西，多半会把你拖下海去。~
== BC0AURA ~哦。想想它看着是有点沉……那我扎营时就只看一看吧。我可不想被鱼拖了去。~
EXIT