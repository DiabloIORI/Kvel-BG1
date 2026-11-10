CHAIN IF ~InParty("X3Vien")
See("X3Vien")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Vienxay1","GLOBAL",0)~ THEN X3VIENB C0KvelX3Vienxay1
~我定是受了咒。我的安危得靠一个卓尔，还是连精灵该有的那点清秀都没有的一个。至少他安静。~
DO ~SetGlobal("C0KvelX3Vienxay1","GLOBAL",1)~
== BC0KVEL ~哼。~
== X3VIENB ~我听见的是嗤笑么？我是在搜合适的赞词，虽则难找。~
== BC0KVEL ~你若想这同盟不生纷争，也许你也该学着安静。~
== X3VIENB ~我的职分是凭我的知识与阅历出主意。你的是站到前头，当一面合用的盾。最好还站得离我远些。~
== BC0KVEL ~你凭出身而生的优越感，于你没半点好处。就我得知的你在同族里的位分看，这甚至有失分寸。~
== X3VIENB ~你个暗精灵，又自以为知道我什么？你对我们的一切理解，都被多年的灌输和“你族类应得什么”的妄念坏了。你以为护一个真精灵是辱没了你？~
== BC0KVEL ~不是。你受的那份厌恶是挣来的。跟我们肤色的差别没多大干系。~
== X3VIENB ~彼此彼此。我倒更喜欢你安静的时候。你每说一句，我就更不喜欢你一分。~
EXIT

CHAIN IF ~InParty("X3Vien")
See("X3Vien")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Vienxay2","GLOBAL",0)~ THEN X3VIENB C0KvelX3Vienxay2
~我看你歇息时总埋头那些书，卓尔。真叫我吃惊。我倒没想到一副这般粗蛮相貌的人，会是人类学问的行家。~
DO ~SetGlobal("C0KvelX3Vienxay2","GLOBAL",1)~
== BC0KVEL ~同样叫我吃惊的是，你这位法师，似乎看不出自己也该这么做的价值。~
== X3VIENB ~算了吧。一卷讲魔法秘奥的书，我还看得出价值。可人类地界的历史、史上的人物、烹饪？这些东西于我有什么用？~
== BC0KVEL ~你看轻这等知识，可你既被流放在这片地界，也许终有一日得靠它。~
== X3VIENB ~真荒唐。你以为我会落到认了自己眼下这境地？永聚岛是我的家，我*一定*要回到我该在的地方。~
== BC0KVEL ~那我们差的不只是来历，而是两个世界。跟你不同，我已与自己的处境和解了。你尽管继续挣。那不会给你带来安宁。~
== X3VIENB ~你凭什么评判我？我眼前只看见一个没人要的、没骨头的野种。回去读你那些稚气的书吧。你不会懂一个有更大野心者的心思。~
EXIT