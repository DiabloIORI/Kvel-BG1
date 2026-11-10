BEGIN C02KVEL
BEGIN C02KVELJ
BEGIN C0KVNOB1

CHAIN IF WEIGHT #-1 ~AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)~ THEN C02KVEL KVEL-BD4700
~走到这条路上这么远，已回不了头了！~
DO ~SetGlobal("C0Kvel_kicked_bd4700","global",1)
                 SetGlobal("bd_joined","locals",0)~ EXIT

EXTEND_TOP BDSCHAEL 40 #1
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("C0KVEL")~ + ~克维拉林呢？我们还有一份契约在手。~ EXTERN BDSCHAEL SCHAEL-KVEL-START
END

CHAIN BDSCHAEL SCHAEL-KVEL-START
~是，那卓尔……他跟大公们签了约，以佣兵身份随远征队同行，所以你早晚能见着他。别担心——若你担心的是这个，他没忘了你。看来你的在场，是他肯合作的条件之一。~
= ~你若真想在今晚见他，就去精灵之歌酒馆。他……算是，在那儿当差。你见了就明白我什么意思。~
COPY_TRANS BDSCHAEL 40

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDStartScene","GLOBAL",0)~ THEN BDPOOL05 KVEL-SOD-START-SCENE
~嘿，这才叫我说的正经一顿饭！打这场乱子起，我都忘了吃顿正经饭是什么滋味！~
DO ~SetGlobal("C0KvelSoDStartScene","GLOBAL",1)~
== BDPOOL03 ~说得好，说得好！替我向新来的厨子致意，酒保！~
== BDBART01 ~我信他听了会很高兴。也许不会。以他那性子，多半不会。~
== C0KVNOB1 ~我倒想问，能不能见见你们新近雇的这位神秘厨子？我家里那位，我妻子唠叨了好一阵子。我信他们若肯在这儿干，要的工钱也不会太高。~
== BDBART01 ~先生，我不大确定我欣赏你这话里对我们工钱的暗示。而且我……不劝你跟他当面见。他不喜欢客人——光是看他，就可能吓着你。~
== C0KVNOB1 ~哦，废话。你当我是什么人？我若怕靠那些下等人太近脏了衣裳，就不会来这儿吃。来，让我去看看……~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C02KVC01")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDStartScene","GLOBAL",1)~ THEN BDBART01 KVEL-SOD-START-SCENE-2
~*叹气* 他就这么去了。我可是警告过他的。~
DO ~SetGlobal("C0KvelSoDStartScene","GLOBAL",2)~
== BDBART01 ~那位先生也没付账就跑了，小姐。要不要派人去追？~
== BDALYTH ~平日里我会说去……可这年头难，外头人堆里也难找他。这一回就放过他。他一周内还会回来。~
== BDBART01 ~明白。我记进账里，算他欠着……当然，带利息。~
== BDPOOL03 ~你说这是怎么回事？~
== BDPOOL05 ~不知道。也许他们里头有条龙在烤土豆。嘿嘿。我就爱看那些有钱人自己出丑。~
== BDPOOL03 ~你也想去看？~
== BDPOOL05 ~不去。少管闲事。走吧走吧，饭要凉了。~
DO ~ActionOverride("CUTSPY",DestroySelf())~ EXIT

CHAIN IF WEIGHT #-1 ~!InParty("C0KVEL")
AreaCheck("BD0109")
Global("C0KvelSoDStartScene","GLOBAL",2)~ THEN BDSCHAEL KVEL-SOD-START-SCENE-3
~好吧，这也算一桩事。~
DO ~SetGlobal("C0KvelSoDStartScene","GLOBAL",3)~
== BDSCHAEL IF ~BeenInParty("C0KVEL")~ THEN ~看这反应，你大概能猜出厨房里是谁。我自己听见时都不信自己的耳朵。~
== BDSCHAEL IF ~BeenInParty("C0KVEL")~ THEN ~我等你们俩赶上来。只是别耽搁太久。~
EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("BD0109") Global("C0KvelSoDStart","GLOBAL",0)~ THEN C02KVEL KVEL-SOD-START
~你若要吃饭，就在柜台点单。闯进厨房不会让你早些吃上。~
DO ~SetGlobal("C0KvelSoDStart","GLOBAL",1)~
END
  + ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("C0KVEL")~ + ~就算是我也不行么，克维尔？~ DO ~SetGlobal("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02KVEL KVEL-SOD-START-OLD-1
  + ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("C0KVEL")~ + ~我不是来吃饭的，我是来求你帮忙的。~ DO ~SetGlobal("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02KVEL KVEL-SOD-START-OLD-2
  + ~!BeenInParty("C0KVEL")~ + ~你……是个卓尔厨子？~ EXTERN C02KVEL KVEL-SOD-START-NEW-1
  + ~!BeenInParty("C0KVEL")~ + ~抱歉。我这就出去。~ EXIT

CHAIN C02KVEL KVEL-SOD-START-OLD-1
~我从不特殊照顾。~
EXTERN C02KVEL KVEL-SOD-START-OLD-3

CHAIN C02KVEL KVEL-SOD-START-OLD-2
~……~
EXTERN C02KVEL KVEL-SOD-START-OLD-3

CHAIN C02KVEL KVEL-SOD-START-OLD-3
~听说你要随军去打那场圣战。~
END
  ++ ~没错。我希望你跟我一起去。~ + KVEL-SOD-START-NEW-7
  ++ ~我本想叙叙旧，可你似乎很享受眼下这份差事……~ + KVEL-SOD-START-OLD-4

CHAIN C02KVEL KVEL-SOD-START-OLD-4
~不必。我已预备好动身。我们有一份先前写好的契约，加上我新与大公们签的那份。~
END
  ++ ~那好，跟我走。~ + KVEL-SOD-START-NEW-7
  ++ ~就这么简单？真痛快。走吧。~ + KVEL-SOD-START-NEW-7
  ++ ~其实我来只是告诉你，你若想在这儿多留一阵也行。我一个人没事。~ + KVEL-SOD-START-NEW-8

CHAIN C02KVEL KVEL-SOD-START-NEW-1
~若你担心，我在此做工是获准的。~
= ~不过你若想学着先前那个蠢货，扯着嗓子尖叫着跑出这楼，也请便。~
END
  ++ ~没这么夸张。我只是吃了一惊。~ + KVEL-SOD-START-NEW-2
  ++ ~可你看上去更像个佣兵，不像个仆役。你在这儿做什么？~ + KVEL-SOD-START-NEW-3
  ++ ~我不尖叫，但我也不扰你。告辞。~ EXIT

CHAIN C02KVEL KVEL-SOD-START-NEW-2
~你说完就走。这一批吃食还要备。我不喜欢被打扰。~
END
  ++ ~等等。我在找能干的人，随我去打那场圣战。你看着很能干。~ + KVEL-SOD-START-NEW-4
  ++ ~我不扰你，你接着忙。~ EXIT
  ++ ~你这无礼叫我为难，这一回我饶了你。我走了。~ EXIT

CHAIN C02KVEL KVEL-SOD-START-NEW-3
~打发时间。~
EXTERN C02KVEL KVEL-SOD-START-NEW-2

CHAIN C02KVEL KVEL-SOD-START-NEW-4
~你反对那场圣战？~
= ~明白了。如今看着你，我懂了。你定是<CHARNAME>，杀萨拉沃克的那位。~
END
  ++ ~连你也知道我？~ + KVEL-SOD-START-NEW-5
  ++ ~那是不是说，你愿与我共事？~ + KVEL-SOD-START-NEW-6

CHAIN C02KVEL KVEL-SOD-START-NEW-5
~你的名号在这城里几乎无人不知。而我曾有……旧敌与铁王座有关。不过他们如今都已了结。~
EXTERN C02KVEL KVEL-SOD-START-NEW-6

CHAIN C02KVEL KVEL-SOD-START-NEW-6
~也许我们能成盟友。我平日更愿有纸面约定，可我同大公们签的那份契约也够了。~
= ~你可知道，把一个卓尔收进队里意味着什么？~
END
  ++ ~这会影响我的名声，我信。可你看来够强，值得这点折损。~ + KVEL-SOD-START-NEW-7
  ++ ~这么一想，也许这不是什么好主意。~ + KVEL-SOD-START-NEW-8

CHAIN C02KVEL KVEL-SOD-START-NEW-7
~……~
== C02KVEL ~好。稍候。~
== C02KVEL ~……~ [C0KVSF5]
== C02KVEL ~…… ……~ [C0KVSF6]
== C02KVEL ~…… …… ……~ [C0KVSF7]
== C02KVEL ~你。剩下的你照管。~
== BDPOOL12 ~什——等等，你要走？~
== C02KVEL ~我以为你会松口气。~
== BDPOOL12 ~不，我——呃，唉，好吧——别管我怎么想，你不能说走就走！难道要我一人在店里撑下来？他们可都把胃口吊起来了！~
== C02KVEL ~你能活下来。~
== BDPOOL12 ~等等！你不能就这么随时走……我是说，那些——啊！天哪，锅烧糊了！哦哦哦……！~
== C02KVEL ~我的东西都在手边。可以走了。~
DO ~SetGlobal("C0KvelSoDJoined","GLOBAL",1) JoinParty()~ EXIT

CHAIN C02KVEL KVEL-SOD-START-NEW-8
~那就没什么可谈的。走吧。~
EXIT

CHAIN C02KVEL KVEL-SOD-START-NEW-9
~好。我在此的条件，就包括助你办成任何必要之事。带路。~
DO ~SetGlobal("C0KvelSoDJoined","GLOBAL",1) JoinParty()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDStart","GLOBAL",1) Global("C0KvelSoDJoined","GLOBAL",0)~ THEN C02KVEL KVEL-SOD-START
~你要什么？~
END
  + ~AreaCheck("BD0109")~ + ~我希望你跟我走。我打那场圣战时，身边需要盟友。~ + KVEL-SOD-START-NEW-7
  + ~!AreaCheck("BD0109")~ + ~我希望你跟我走。我打那场圣战时，身边需要盟友。~ + KVEL-SOD-START-NEW-9
  ++ ~没什么。我不扰你。~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("bd_joined","locals",0)~ THEN C02KVEL KVEL-SOD-PROLOGUE
~你若觉得分开更划算，我就分开，尽管我不赞同。~
END
  ++ ~我知道自己在做什么。就在这儿等。~ + KVEL-SOD-PROLOGUE-1
  + ~GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("C0KVEL")~ + ~回营地去。没你也行。~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + KVEL-SOD-PROLOGUE-1
  ++ ~你说得对。留下吧。~ + KVEL-SOD-PROLOGUE-2

CHAIN C02KVEL KVEL-SOD-PROLOGUE-1
~那就这样。~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02KVEL KVEL-SOD-PROLOGUE-2
~随你。~
DO ~JoinParty()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDJoined","GLOBAL",1) Global("bd_joined","locals",0)~ THEN C02KVEL KVEL-SOD-PROLOGUE2
~你还需要我效力么？~
END
  ++ ~需要。~ + KVEL-SOD-PROLOGUE-2
  ++ ~还不到时候。~ + KVEL-SOD-PROLOGUE-1
