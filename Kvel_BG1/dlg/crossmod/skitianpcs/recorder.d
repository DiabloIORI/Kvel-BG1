CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Recorder1","GLOBAL",0)~ THEN X3RECB C0KvelX3Recorder1
~克维尔，你能跟我说说埃林德林么？~
DO ~SetGlobal("C0KvelX3Recorder1","GLOBAL",1)~
== BC0KVEL ~没有什么你会想知道的。~
== X3RECB ~我不赞同。我知道你厌恶你旧家那边的争权、教派争斗和没完没了的背叛。可人总该知道各色各样的史事，哪怕只为叫自己不去重蹈。~
== BC0KVEL ~而你想写一部详尽的卓尔堕落与恶行的记录，好叫别人安心，信自己永不会沉到那般深处？~
== X3RECB ~请别作这样无礼的揣测，克维尔。我只想记下真相。它是什么模样，不该由我来解。~
== BC0KVEL ~我不疑这个。去找个正经的史家换故事吧，学者。你想从我这儿得的准确记述，你得不到。~
EXIT

CHAIN IF ~InParty("X3Rec")
See("X3Rec")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Recorder2","GLOBAL",0)~ THEN X3RECB C0KvelX3Recorder2
~克维尔，你烹饪的本事丰厚，口味也精。你就没想过写一本食谱？~
DO ~SetGlobal("C0KvelX3Recorder2","GLOBAL",1)~
== BC0KVEL ~我的知识在我记性里够用了。~
== X3RECB ~可将来呢？这听着也许琐碎，可连这样的知识也能给世间添些欢喜。你能教别人的东西很多。~
== BC0KVEL ~也许有一天。等我放下这把刀的日子过去之后。~
== X3RECB ~哦？我倒不确定你真会考虑。看来这些本事于你比我想的还重。~
== BC0KVEL ~且看我有没有那个时间。不过你有一点说得对。我这一生这一点，是我少有的几样慰藉之一。~
== X3RECB ~那就更有理由叫别人也知道。而且在这过程中，他们能看见你值得的不只是惧怕。我不向你求什么。只是偶尔想一想。~
EXIT