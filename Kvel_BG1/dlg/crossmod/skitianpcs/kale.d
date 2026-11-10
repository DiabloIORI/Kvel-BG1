CHAIN IF ~InParty("X3Kale")
See("X3Kale")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Kale1","GLOBAL",0)~ THEN X3KALEB C0KvelX3Kale1
~你是个大个儿，配一把大剑。别人怎么样我不知道，伙计，可按我的标准，你算不错。~
DO ~SetGlobal("C0KvelX3Kale1","GLOBAL",1)~
== BC0KVEL ~你若的标准就到这里，我倒要疑你能活多久。~
== X3KALEB ~伙计，这就是为什么人人跟他们娘都对卓尔有意见。给你句好话，你回敬的谢意却是盼我死。~
== X3KALEB ~你这可不是给你同族画了幅好看的像，你知道么？~
== BC0KVEL ~你说完了么？~
== X3KALEB ~嘿。我才刚开始。你不信，可我觉得用不了多久我们就是好伙计，你跟我。~
== BC0KVEL ~哼。~
== X3KALEB ~喂，你往哪儿去？我们这正彼此熟悉，你别就这么走开。~
== BC0KVEL ~看着吧。~
== X3KALEB ~你以为你腿长些我就追不上？再想想，伙计！~
EXIT

CHAIN IF ~InParty("X3Kale")
See("X3Kale")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Kale2","GLOBAL",0)~ THEN X3KALEB C0KvelX3Kale2
~那——么，你吃的是哪种幽暗地域美味，才长得比你同族大这么多？我非得知道。~
DO ~SetGlobal("C0KvelX3Kale2","GLOBAL",1)~
== BC0KVEL ~半身人，你吃的饭跟我一样，也一样好。甚至更好。~
== X3KALEB ~你是说我胖么，伙计？我告诉你，吃干净头一盘，再吃第二盘，那是半身人的礼数。还有——~
== BC0KVEL ~你意思够了。~
== X3KALEB ~总之，像我说的……你确定没藏着什么秘密？没什么特别的食谱或吃法？~
== BC0KVEL ~没有。~
== X3KALEB ~天哪。有些人连试都不试就撞了大运。这世界有时候就是不公平，是不是？~
EXIT

CHAIN IF ~InParty("X3Kale")
See("X3Kale")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Kale3","GLOBAL",0)~ THEN X3KALEB C0KvelX3Kale3
~你打起来不差，克维尔。可你没派头，伙计。你冲上去时连句像样的战吼都没有。~
DO ~SetGlobal("C0KvelX3Kale3","GLOBAL",1)~
== BC0KVEL ~把打斗演成戏，毫无用处。胜就是胜。~
== X3KALEB ~赢本该是件痛快事。还有英雄气。你那样悄没声地摸来摸去，全不是那么回事。那些法术更是明摆着作弊。~
== BC0KVEL ~有闲裕把为活命而战变成一场逞勇的表演，那是特权。在一个每一步都得有用才能活的地方，你不会这样想。~
== X3KALEB ~那多闷。若活着的每一块都得像日夜干活，那还有什么意思？~
== BC0KVEL ~……~
== X3KALEB ~伙计，我看我现在明白你为什么走了。来吧，你不在幽暗地域了。在这上头，活得松快一点又不会要你的命。~
== BC0KVEL ~也许你不全错。可不知怎的，我疑心照你的活法过，不会比我逃出来的那种日子省力。~
EXIT