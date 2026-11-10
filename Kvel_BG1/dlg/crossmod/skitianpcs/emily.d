CHAIN IF ~InParty("X3mily")
See("X3mily")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Emily1","GLOBAL",0)~ THEN BC0KVEL C0KvelX3Emily1
~我看得出你在干什么，弓手。~
DO ~SetGlobal("C0KvelX3Emily1","GLOBAL",1)~
== X3MILYB ~什么？我……不知道你在说什么。~
== BC0KVEL ~保持距离，可仍在你好使的射程内。站在高处，好叫万一出了最坏的事，我对着你的弓处在劣势。~
== X3MILYB ~你太多疑了。我也许对着你有些不自在，可这不等于我总把你当可能的敌人看。~
== BC0KVEL ~可你似乎拦不住自己，哪怕只是下意识。~
== X3MILYB ~若这叫你这么难受，我可以试着不——~
== BC0KVEL ~这是明智的。你也许能活得更久。~
== X3MILYB ~也许，可我们若一直这样彼此相待，就永远成不了正经的盟友。我们地表人不是那样的。~
EXIT

CHAIN IF ~InParty("X3mily")
See("X3mily")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Emily1","GLOBAL",1)~ THEN X3MILYB C0KvelX3Emily2
~克维尔，我倒宁愿你别再这样戒备地看我。我已向你保证我对你没有敌意。~
DO ~SetGlobal("C0KvelX3Emily1","GLOBAL",2)~
== BC0KVEL ~我的观察并非出于不信。不过你倒许是显出了太容易信人。~
== X3MILYB ~我敬达库尔特家。他们是诚实的商人，我庄园不少出口都仰仗他们的生意。你是达库尔特家的朋友，这一点比我对一个卓尔的疑心更值得我信。~
== BC0KVEL ~那层往来已了结了。~
== X3MILYB ~也许，可这不改你护了他这些年这件事。我想不出你能一点都不在意。~
== BC0KVEL ~不管怎样，你别指望我把同样的忠心示给你。~
== X3MILYB ~不，可这至少给了我些指望。指望我们两个也能攒起些信任。那不算坏事，是吧？~
== BC0KVEL ~也许不是。可你有没有活得够久攒到那份信任，还难说。~
== X3MILYB ~这算挑战么？那就如此吧，我不会躲。~
EXIT