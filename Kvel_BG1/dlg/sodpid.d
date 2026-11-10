CHAIN IF ~IsGabber(Player1)~ THEN C02KVELJ PID
~说吧，可要说得有意义。~
END
  ++ ~我能问你几个问题么？~ + PID-ASK
  ++ ~你的声音有点不对。~ + PID-STRINGFIX
  ++ ~眼下没什么。~ EXIT

CHAIN C02KVELJ PID-ASK
~随你。~
END
  + ~Global("C0KvelSoDTrainedRecruits","GLOBAL",1)
     Global("C0KvelSoDInstructor","GLOBAL",0)~ + ~你是个能干的教习。我猜你在埃林德林也担过差不多的职分。~ DO ~IncrementGlobal("C0KvelSoDInstructor","GLOBAL",1)~ + PID-SOD-INSTRUCTOR
  + ~Global("C0KvelSoDChef","GLOBAL",0)~ + ~你怎么会来当精灵之歌酒馆的厨子？~ DO ~IncrementGlobal("C0KvelSoDChef","GLOBAL",1)~ + PID-SOD-CHEF
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)
     Global("C0KvelSoDAndroszAgain","GLOBAL",0)~ + ~下城区那回之后，你见过安德罗兹么？~ DO ~IncrementGlobal("C0KvelSoDAndroszAgain","GLOBAL",1)~ + PID-SOD-ANDROSZAGAIN
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)
     Global("C0KvelSoDEcthel","GLOBAL",0)~ + ~你跟埃克瑟尔还有往来么？~ DO ~IncrementGlobal("C0KvelSoDEcthel","GLOBAL",1)~ + PID-SOD-ECTHEL
  + ~Global("C0KvelSoDAndroszAlly","GLOBAL",1)
     Global("C0KvelSoDAndroszTalk","GLOBAL",0)~ + ~你怎么看再与安德罗兹并肩作战？~ DO ~IncrementGlobal("C0KvelSoDAndroszTalk","GLOBAL",1)~ + PID-SOD-ANDROSZ
  + ~Global("C0KvelSoDPoisonTalk","GLOBAL",2)
     Global("C0KvelSoDHealing","GLOBAL",0)~ + ~你这情形想必难熬。你多久疼一回？~ DO ~IncrementGlobal("C0KvelSoDRevenge","GLOBAL",1)~ + PID-SOD-HEALING
  + ~Global("C0KvelSoDPoisonTalk","GLOBAL",2)
     Global("C0KvelSoDRevenge","GLOBAL",0)~ + ~那你看自己的病没指望了。你想过报仇么？~ DO ~IncrementGlobal("C0KvelSoDRevenge","GLOBAL",1)~ + PID-SOD-REVENGE
  + ~Global("C0KvelSoDPoisonTalk","GLOBAL",2)
     Global("C0KvelSoDKnowsTear","GLOBAL",4)~ + ~你喝了极乐之泪以后，一直觉得如何？~ DO ~IncrementGlobal("C0KvelSoDKnowsTear","GLOBAL",5)~ + PID-SOD-TEAR
  ++ ~算了。我没什么要问的。~ EXIT

CHAIN C02KVELJ PID-SOD-INSTRUCTOR
~某种意义上是的。可不像这儿这么简单。卓尔更有劲头去为自己、而不是为别人行事。要他们信该为更大的目的冒命，哪怕出于务实，也是难事。~
= ~比起那些日子，这不过是弄清楚各人短处的事。我从前教过的许多人，没活到那一步。~
EXIT

CHAIN C02KVELJ PID-SOD-CHEF
~这其实不该这么叫人吃惊。酒馆的老板是我先前那位雇主的熟人。不管怎样，她看重自己的人脉，肯做个顺水人情给我个栖身处。~
= ~我实在不能受这样一份人情却毫无还报的法子。我能拿出的不多。厨子这个位分我有些经验，也是个能少惹人注意的位子。~
END
  ++ ~你看着也挺自在的。~ + PID-SOD-CHEF-1

CHAIN C02KVELJ PID-SOD-CHEF-1
~那个——还有这把刀——是我少有几样真拿得出手的本事。不从中寻些精进的慰藉，那是浪费。~
EXIT

CHAIN C02KVELJ PID-SOD-ANDROSZAGAIN
~没有。这……有点叫人不安，想到他还蠢到有心继续我们的对抗。可他没有我如今这份自由，他若至今还没再露面，那已经回了埃林德林也不奇怪。~
= ~不过……安德罗兹从来不能全然预料。而我如今担心的不只我自己，还有你。就发生的这一切看，我相信你也招了他的兴致。我若不再是个合用的靶子，他的注意下一个也许就转到你身上。~
= ~你该盼这事别成真。~
EXIT

CHAIN C02KVELJ PID-SOD-ECTHEL
~啧。他确是用心确保我就算想忘也忘不了他。你我在下城区那一战之后不久，埃克瑟尔就被召回了深水城。自圣战军的消息传到他耳里，他那些来信就没断过，也一猜就中。拿来点炉子倒合用。~
= ~他坚持要我守着那份以你名义签的修订契约。虽说大可不必。我若在该守信的时候没守信，也活不到今日。~
EXIT

CHAIN C02KVELJ PID-SOD-ANDROSZ
~那是明智的决断。两军对上时，安德罗兹会起大作用。~
END
  ++ ~是，可你怎么看？他是你旧日的对手。~ + PID-SOD-ANDROSZ-1
  ++ ~说得过去。~ + PID-SOD-ANDROSZ-2

CHAIN C02KVELJ PID-SOD-ANDROSZ-1
~那对抗一向是达目的的手段。安德罗兹不会认，可我从我们旧日那点情分里得的，一向比他多。于他，我不过是磨刀的路子；于我，他是我在险地里活命的恩主。~
= ~安德罗兹有貌有才，那叫他得天独厚。我除了一身天生的力气，什么都没得着。若没有一个有劲头看我活着的人，我在埃林德林活不长久。~
= ~如今，靠他不再必要了。他也许为自己的好胜来追我，可我没那份力气，也没那份兴致去奉陪他。~
EXTERN C02KVELJ PID-SOD-ANDROSZ-2

CHAIN C02KVELJ PID-SOD-ANDROSZ-2
~不过，能劝动安德罗兹为别人的事去战，已够叫人佩服。他一向只按自己的兴头行事。也许是你身上有什么叫他着迷。~
EXIT

CHAIN C02KVELJ PID-SOD-HEALING
~天天。近来还越来越勤。~
END
  ++ ~你怎么就能这么忍着过？~ + PID-SOD-HEALING-1
  ++ ~你的病没治好的可能？~ + PID-SOD-HEALING-1
  ++ ~我明白了。我另问些别的。~ + PID-ASK

CHAIN C02KVELJ PID-SOD-HEALING-1
~有更要紧的事。~
END
  ++ ~比保住你自己的命还紧要？~ + PID-SOD-HEALING-2
  ++ ~说得过去。命是你的，你自己过。~ + PID-ASK

CHAIN C02KVELJ PID-SOD-HEALING-2
~让我问你一句，<CHARNAME>，好叫我们都明白些。你若染上一种治不好的病，注定要结果你的命，那日子不过一场赌……而你选择去追任何治好的指望……不惜用任何手段，不管多脏。末了，你的力气只落个败，死终究还是把你带走。~
= ~你会觉得这一生过得值么？那不会是一场绝望与拼命的活么？你会称心，还是盼自己把剩下的时间用在能给你安宁的法子上？~
END
  ++ ~我还是会试。~ + PID-SOD-HEALING-3
  ++ ~我愿意帮你。~ + PID-SOD-HEALING-3
  ++ ~我不确定。~ + PID-SOD-HEALING-3

CHAIN C02KVELJ PID-SOD-HEALING-3
~我不冒昧评判你的选择对不对。那由你定。可那不过是个选择——我只是挑了我自己的，明知道比起另一个，我更喜欢它。~
= ~你也许不懂。我自出生就在为活命挣扎，可从没看见活着有什么真价值。等我当作理所当然的东西被夺了，我相信该是时候去找我自己的价值，按我更愿意的样子把剩下的时间过完。~
= ~你也许觉得这是放弃。可我当作一种抗。有人替我选了这个命数，要我的结局满是苦与痛。我拒。我要照自己的意思继续活，哪怕时间少得可怜。~
EXIT

CHAIN C02KVELJ PID-SOD-REVENGE
~那你觉得我该向谁报仇？~
= ~制毒的人死在别人手里了。我该凭一点疑心去向扎尔伊昂主母报仇么？向我自己的母亲，奥达伊尔家的主母？~
= ~也许两个都有份，就我所知。也许埃林德林和这世界没了他们更好。我若有时日与资源谋划，甚至也许能干成那桩荒唐事，把两个都杀了。我知道他们的事、他们的家、他们的软肋。并非不可能。~
= ~可就算那样，我真能指望做什么？我能救谁？我能斩断卓尔那周而复始的恨与狂么——正是它把这毒加在我身上？像我这样的卓尔有成千上万，<CHARNAME>。唯一的差别，是我蒙眷顾有了活下来的本事。~
= ~而我打算尽量用这份天赋。让卓尔照旧下去，直到某一天，一个、两个，或者一百个有那份心、也有那份法去改他们的人来到这世上。那是他们该扮的份。不是我的。~
EXIT

CHAIN C02KVELJ PID-SOD-TEAR
~这打紧么？它也许给我挣了几年，若真有那么多。~
END
  ++ ~就跟我说吧。~ + PID-SOD-TEAR-1
  ++ ~只要它减了你的痛，那就值。~ + PID-SOD-TEAR-1
  ++ ~我猜没有。~ + PID-SOD-TEAR-1

CHAIN C02KVELJ PID-SOD-TEAR-1
~若这算点慰藉：我如今歇得安稳些了。我甚至能常睡常醒，而不觉得非得清一清自己的血。~
= ~值不值……我个人不大在乎。觉着的痛少了，这自然是极大的宽慰，可我拒绝把它当作某种虚假的指望。~
= ~至少我使起来能更得力些。我许没有从前的力气，可阅历足以补上。~
END

CHAIN C02KVELJ PID-STRINGFIX
~一滴冷杉露就能轻易解决这个。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVFIX")~ EXIT