BEGIN C0KVELJ

// ALYTH

CHAIN IF WEIGHT #-1 ~InParty("C0Kvel")
Global("C0KvelBG1Alyth","GLOBAL",0)~ THEN ALYTH KvelAlyth
~看来这雇佣剑客如今是你的担子了。埃克瑟尔一向对自己的投注太过用情，可我至少得赞他一句：没落个全赔。~
DO ~SetGlobal("C0KvelBG1Alyth","GLOBAL",1)~
== ALYTH ~你若觉得往后办事有这卓尔在旁不便，就把他送回来。看达库尔特家的情面，我至少能给他个遮蔽，不叫世人看见。~
== C0KVELJ ~多谢你的盛意。~
== ALYTH ~不过别以为我赞同你待那孩子的方式，克维拉林。我希望换了你新雇主，会不一样。~
EXIT

// ANGEL

CHAIN IF WEIGHT #-1 ~Global("C0KvelPetrinesCat","GLOBAL",1)~ THEN C0KVELJ KvelAngel
~那想必是那姑娘的猫。~
DO ~SetGlobal("C0KvelPetrinesCat","GLOBAL",2)~
= ~……~
= ~嘘。嘘……~
END
  ++ ~你在干什么？~ + KvelAngel.1
  ++ ~我倒没想到你会喜欢猫。~ + KvelAngel.2
  ++ ~别这样。你看着好笑。~ + KvelAngel.1

CHAIN C0KVELJ KvelAngel.1
~这小东西又怕又乱。主人不见，加上被人虐待，叫它不信旁人。~
EXTERN C0KVELJ KvelAngel.3

CHAIN C0KVELJ KvelAngel.2
~猫是灵巧的活物，记形貌与感觉都牢。信人慢，可信了就不会错。~
EXTERN C0KVELJ KvelAngel.3

CHAIN C0KVELJ KvelAngel.3
~来，这一小片肉该能填你的饥。这儿没人害你……~
= ~去找它安心的东西，<CHARNAME>。它多半带着那姑娘的气味，能叫它安下来。~
END
  ++ ~我们不该把这猫带上么？~ EXTERN C0KVELJ KvelAngel.4
  ++ ~好吧。~ EXIT

CHAIN C0KVELJ KvelAngel.4
~不。让它自由行动。等我们把那姑娘的戒指带到它跟前，它自会找到她。~
EXIT

// ANGELO

EXTEND_TOP ANGELO 1
 IF ~InParty("C0KVEL") !InParty("Sharteel")~ THEN EXTERN C0KVELJ C0KvelAngeloC7
END

EXTEND_TOP ANGELO 9
 IF ~InParty("C0KVEL") !InParty("Sharteel")~ THEN EXTERN C0KVELJ C0KvelAngeloC7
END

CHAIN C0KVELJ C0KvelAngeloC7
~哈。哈哈……~
== ANGELO ~你个卓尔，觉得什么好笑？~
== C0KVELJ ~自我有记忆起，就总听人说：软弱的地表人见不得血，更软弱的那些见得了，却不敢自己流血。~
== ANGELO ~你想说什么？趁我还有工夫，说出来。你很快就要死了。~
== C0KVELJ ~……软骨头里最软的……~
== ANGELO ~什么？大声些，好让我听见。我甚至大方得可以往你跟前凑一凑。~
DO ~SetGlobal("C0KvelAngelo","GLOBAL",1)
StartCutSceneMode()
MoveToPoint([1006.696])
Wait(1)
ActionOverride("C0KVEL",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelAngelo","GLOBAL",1)~ THEN C0KVELJ C0KvelAngeloC7Spit
~*啐*~
== ANGELO ~呃——！~
== C0KVELJ ~反应也慢。~
== ANGELO ~我本该赞你这份硬气，若它没把我惹到极处的话。~
DO ~SetGlobal("C0KvelAngeloTorture","GLOBAL",1)~
== ANGELO ~你以为我怕亲自动手见血？好。来人，把这卓尔带下楼去。等我们……彼此熟悉的时候，我倒想给我们的客人看看几件我最爱的纪念物。~
END
  ++ ~克维尔，你干什么？！~ EXTERN C0KVELJ C0KvelAngeloC7.1
  ++ ~（不作声）~ EXTERN ANGELO 4

CHAIN C0KVELJ C0KvelAngeloC7.1
~*低声* 什么都别说，别插手。你们自己寻条出路。出去了我再找你们。~
EXTERN ANGELO 4

// BENTLEY

CHAIN IF WEIGHT #-1 ~InParty("C0Kvel")
Global("C0KvelBG1Bentley","GLOBAL",0)~ THEN BENTLY KvelBentley
~什——一个卓尔？手放在我看得见的地方，你要就这样闯进来当这儿是你家，我可不许你惹出什么乱子！~
DO ~SetGlobal("C0KvelBG1Bentley","GLOBAL",1)~
== C0KVELJ ~……也许这头盔起的作用比原想的要好。~
== BENTLY ~等等，我看你这身形有点眼熟。你是埃克瑟尔的护卫，是不是？呸，我一向觉得你看着鬼祟，如今知道为什么了。埃克瑟尔说他把命托给你，所以你在这儿可以待着，只要你身边有个管得着你的人。~
COPY_TRANS BENTLY 0

// BHEREN

EXTEND_TOP BHEREN 0
 IF ~InParty("C0KVEL")~ THEN EXTERN C0KVELJ C0KvelBheren
END

EXTEND_TOP BHEREN 1
 IF ~InParty("C0KVEL")~ THEN EXTERN C0KVELJ C0KvelBheren
END

CHAIN C0KvelJ C0KvelBheren
~……~
END
  ++ ~我看见你的手往兵器上动了。~ EXTERN C0KVELJ C0KvelBheren.1
  ++ ~冷静。我们不能就这么杀了他。~ EXTERN C0KVELJ C0KvelBheren.1

CHAIN C0KvelJ C0KvelBheren.1
~我……失了分寸。我只是觉得，无端虐待孩童和无力自卫的生灵，实在可鄙。~
EXIT

// DRIZZT

INTERJECT DRIZZT 0 C0KvelDrizzt
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~那卓尔游侠崔斯特·杜垩登，出身魔索布莱城那个败落的家族。地表这般辽阔，我倒没想过会亲眼碰上他。~
END
  ++ ~我们要帮他一把么？~ EXTERN C0KVELJ C0KvelDrizzt-1
  ++ ~我猜你对他知道得不少。~ EXTERN C0KVELJ C0KvelDrizzt-2
  ++ ~你觉得我们该怎么办？~ EXTERN C0KVELJ C0KvelDrizzt-1

CHAIN C0KVELJ C0KvelDrizzt-1
~随你看着办。只要你不去碍他，他总能活下来。他是卓尔，可我们并无旧交。~
EXTERN DRIZZT C0KvelDrizzt-3

CHAIN C0KVELJ C0KvelDrizzt-2
~他的过去我听过，想法也如你所料。可这不是说这个的时候。~
EXTERN C0KVELJ C0KvelDrizzt-1

CHAIN DRIZZT C0KvelDrizzt-3
~你怎么看，陌生人？我该拿你当朋友、敌人，还是都不是？~
COPY_TRANS DRIZZT 0

I_C_T DRIZZT 10 C0KvelDrizzt2
== DRIZZT IF ~InParty("C0Kvel")~ THEN ~不过我倒想与你这位同伴说两句话，我看他也是个卓尔，若他肯的话。~
== C0KVELJ ~……~
== C0KVELJ ~*叹气* 那就说吧，若要紧的话。~
== DRIZZT ~我看你通用语的遣词与口音都练得极熟。若不是看清了你的脸，我认不出你是我同族。我猜你在地表也过了些年头？~
== C0KVELJ ~说得对。~
== DRIZZT ~这倒叫人安心。卓尔能在地表活下来的本就极少，能寻着自己想要的日子过活的更少。我盼你至今还顺。~
== C0KVELJ ~我不得不舍弃了许多。可地表不坏。人类是可以弄懂的，况且有了阅历，就懂得了卓尔该怎么与他们打交道。只要我手里还有刀，活命便不是做不到的事。~
== DRIZZT ~确也，你的本事极精。不，我看得出你曾经更强。你出了什么事，朋友？~
== C0KVELJ ~不打紧。~
== DRIZZT ~自然，这不干我的事，可我不信这样的变化会不打紧。我若有那个闲裕，倒不反对与你友好地试几招。~
== C0KVELJ ~不只你一个这么想。那你的时间最好还是金贵些。我只会叫你失望。~
== DRIZZT ~不管你是什么缘由，那都是你自己的。不过我希望你能听我一句——有个朋友，路会好走些。同为如今把地表当家的卓尔，我祝你往后顺遂。~
== DRIZZT ~再会。~
END

// ECTHEL STORE

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",25) NumTimesTalkedTo(0)~ THEN C0KVNP01 ECTHEL-STORE
~你在这儿，<CHARNAME>。~
== C0KVNP01 IF ~InParty("C0KVEL")~ THEN ~我看克维尔——或者说，我猜如今该叫克维尔——也跟你在一起。~
== C0KVELJ IF ~InParty("C0KVEL")~ THEN ~快些说，<CHARNAME>，趁他还没决定开始翻旧账。~
== C0KVNP01 IF ~InParty("C0KVEL")~ THEN ~哇。我不再是他雇主了，他连装都不装了。倒也不是他真能骗得过我。~
== C0KVNP01 ~我眼下在本地商人这儿安顿下来了。不算完满的法子，可该能叫我一阵子不进铁王座的眼。我还弄到些真值钱的货。~
EXTERN C0KVNP01 ECTHEL-STORE-1

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",25) !NumTimesTalkedTo(0)~ THEN C0KVNP01 ECTHEL-STORE-1
~你若路上要买些什么有用的，可以看看，我按上价卖你。~
END
  ++ ~给我看看你有些什么。~ DO ~StartStore("C0KVST01",LastTalkedToBy(Myself))~ EXIT
  ++ ~多谢你，埃克瑟尔，可我眼下不缺。~ EXIT

// ELMINSTER

INTERJECT ELMINS4 4 C0KvelElminsterDop
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~<CHARNAME>，你不至于瞎到这个地步，栽在这么粗的骗局里。我不会随你走进这蠢陷阱。你们这些偷脸的变形者吓不住我。该死就去死！~
EXTERN ELMINS4 5

// FLAMING FIST

EXTEND_TOP FFHUNT 0
 IF ~InParty("C0KVEL") Global("C0KvelFlamingFistC7Kill","GLOBAL",0)~ THEN EXTERN C0KVELJ C0KvelFlamingFistC7
END

CHAIN C0KVELJ C0KvelFlamingFistC7
~情形凶险，<CHARNAME>。照我们这处境，我无法想象放下兵器后我们的命还能安稳，可在这儿公然开打，只会叫更多地表人与我们为敌。~
END
  ++ ~你能不惊动任何人把他们了结么？~ EXTERN C0KVELJ C0KvelFlamingFistC7-1
  ++ ~不打紧。这事我应付得来。~ EXTERN FFHUNT C0KvelFlamingFistC7-0

CHAIN FFHUNT C0KvelFlamingFistC7-0
~放下兵器，我保证在你有机会申辩之前不会伤你！~
COPY_TRANS FFHUNT 0

CHAIN C0KVELJ C0KvelFlamingFistC7-1
~了结他们不难……可我疑心留不下他的命。他们太警醒，也备好了抵抗。我若出手，就得又快又致命。而且我只能指望这一回奏效——往后的巡逻队多半会更防备。~
= ~由你定。你要我除掉这些兵，还是我们该打或该逃，只要活下来，我不争。可我不建议投降。~
END
  ++ ~动手。虽可惜，可我不能让任何事拦住我。~ + C0KvelFlamingFistC7-2
  ++ ~这些人的性命我不在乎。快杀了他。~ + C0KvelFlamingFistC7-2
  ++ ~别。我来处理。~ EXTERN FFHUNT C0KvelFlamingFistC7-0

CHAIN C0KVELJ C0KvelFlamingFistC7-2
~这就办。~
DO ~SetGlobal("C0KvelFlamingFistC7Kill","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
FadeToColor([30.0],0)
MoveToObject("FFHUNT")
PlaySound("GAM_41A")
Wait(2)
EndCutSceneMode()
FadeFromColor([30.0],0)~ EXIT

// MARKETPLACE

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1MarketplaceTalk","GLOBAL",1)~ THEN C0KVELJ KVEL-MARKET
~我看这是城里的主市集。~
DO ~SetGlobal("C0KvelBG1MarketplaceTalk","GLOBAL",2)~
END
  ++ ~正是。~ + KVEL-MARKET-1
  ++ ~你听着格外有兴趣。~ + KVEL-MARKET-1
  ++ ~那又怎样？~ + KVEL-MARKET-1

CHAIN C0KVELJ KVEL-MARKET-1
~在这儿等一会儿。我不会太久。~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
Wait(4)
FadeFromColor([30.0],0)
FaceObject(Player1)
Wait(3)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1MarketplaceTalk","GLOBAL",2)~ THEN C0KVELJ KVEL-MARKET2
~我寻着我要的东西了。~
DO ~SetGlobal("C0KvelBG1MarketplaceTalk","GLOBAL",3)~
END
  ++ ~你买了什么？~ + KVEL-MARKET2-1
  ++ ~好，走吧。~ EXIT

CHAIN C0KVELJ KVEL-MARKET2-1
~……香料。~
END
  ++ ~做饭的香料？~ + KVEL-MARKET2-2
  ++ ~就这个？~ + KVEL-MARKET2-2
  ++ ~我倒以为你在找更紧要的东西。~ + KVEL-MARKET2-3
  ++ ~明白了。那，走吧。~ EXIT

CHAIN C0KVELJ KVEL-MARKET2-2
~多数时候，我在野外采材料。不过有些东西在人类手里更好弄。它们……比别的法子合意。~
END
  ++ ~我听说你做菜有本事，可没想到这是你个人的喜好。~ + KVEL-MARKET2-4
  ++ ~等等，你就拿块布蒙着脸走进食市？人家不问么？~ + KVEL-MARKET2-5
  ++ ~这倒是。若这意味着往后几天我们的饭更好吃，我不抱怨。~ + KVEL-MARKET2-6

CHAIN C0KVELJ KVEL-MARKET2-3
~你这话不是没道理。这并非必要。可是……~
EXTERN C0KVELJ KVEL-MARKET2-2

CHAIN C0KVELJ KVEL-MARKET2-4
~自己做吃食是有用的本事。更安全，也常常是必需的。就此而言，能精进就没什么理由不精进。~
EXTERN C0KVELJ KVEL-MARKET2-6

CHAIN C0KVELJ KVEL-MARKET2-5
~自然有人起疑。可我只消随口几句，露一点烹饪的见识，就叫那摊主分了神，买卖也就成了。这也是我在地表这些年学来的一样有用本事。~
EXTERN C0KVELJ KVEL-MARKET2-6

CHAIN C0KVELJ KVEL-MARKET2-6
~耽误你时间，对不住。我们可以走了。~
EXIT

// PHANDALYN

INTERJECT PHANDA 0 C0KvelPhandalyn
== C0KVELJ IF ~InParty("C0KVEL")~ THEN ~真是荒唐，竟这样冲动行事。~
== C0KVELJ ~这一个蠢货我轻易就能制住——悄无声息，不取性命，再把他丢在暗角。也许他醒来就忘了看见什么。就算不忘，他真去找，也多半找不着我们。~
END
  ++ ~去吧。只是别真伤了他。~ EXTERN C0KVELJ C0KvelPhandalyn-1
  ++ ~我倒是想杀了这蠢货，可不杀大概更好。给他一记结结实实的重手。~ EXTERN C0KVELJ C0KvelPhandalyn-1
  ++ ~不必。我倒盼着有机会杀个行善的家伙。~ EXTERN PHANDA C0KvelPhandalyn-2

CHAIN C0KVELJ C0KvelPhandalyn-1
~好。~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([30.0],0)
MoveToObject("PHANDA")
Wait(1)
PlaySound("HIT_03A1")
PlaySound("FLAMN06")
ActionOverride("PHANDA",DestroySelf())
Wait(1)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
SmallWait(5)
PlaySound("WAL_02")
Wait(4)
FadeFromColor([30.0],0)
FaceObject(Player1)
Wait(3)
StartDialogNoSet(Player1)~ EXIT

CHAIN PHANDA C0KvelPhandalyn-2
~凡庇护黑暗使者者，死！~
COPY_TRANS PHANDA 0

CHAIN IF WEIGHT #-1 ~Global("C0KvelPhandalyn","GLOBAL",1)~ THEN C0KVELJ C0KvelPhandalyn2
~他一时半刻醒不来。我们可以走了。~
DO ~SetGlobal("C0KvelPhandalyn","GLOBAL",2)~
END
  ++ ~你确定没杀他？~ + C0KvelPhandalyn2.1
  ++ ~干得好。往后这种事就交给你办。~ EXIT

CHAIN C0KVELJ C0KvelPhandalyn2.1
~这人迟早会掉进自己的坟里。我看没必要催他上路。~
EXIT

// OUTDOORS

CHAIN IF WEIGHT #-1 ~Global("C0KvelOutsideFirstTime","GLOBAL",1)~ THEN C0KVELJ KVEL-OUTDOOR
~太阳……~
= ~我倒忘了，没有我旧那顶头盔去面对它，是多么难得的事。~
DO ~SetGlobal("C0KvelOutsideFirstTime","GLOBAL",2)~
END
  ++ ~然后呢？~ + KVEL-OUTDOOR-1
  ++ ~别抱怨了。~ + KVEL-OUTDOOR-2
  ++ ~若有帮助，我们可以找人照样再做一顶。~ + KVEL-OUTDOOR-3

CHAIN C0KVELJ KVEL-OUTDOOR-1
~也不用了。我就这么活着。走吧。~
EXIT

CHAIN C0KVELJ KVEL-OUTDOOR-2
~我不再提了。从今往后，这是我的担子。~
EXIT

CHAIN C0KVELJ KVEL-OUTDOOR-3
~不必了。那顶盔是用来防人的，不是防头顶的光。如今不必了。~
EXIT

// OXLEY

CHAIN IF WEIGHT #-1 ~Global("C0KvelDeadOxley","GLOBAL",2)~ THEN C0KVELJ KVEL-OXLEY
~这死人……埃克瑟尔的老对头，奥克斯利。看来他活过了自己的用处。~
DO ~SetGlobal("C0KvelDeadOxley","GLOBAL",3)~
END
  ++ ~那个威胁过你、后来又想买下你的商人。~ + KVEL-OXLEY-1
  ++ ~我猜他是被杀了，好让人顶他的身份。~ + KVEL-OXLEY-1
  ++ ~如今不过又一具尸首。别往心里去。~ EXIT

CHAIN C0KVELJ KVEL-OXLEY-1
~他的短视与贪心够明显。无疑叫他容易被人摆弄，也更容易被丢弃。~
= ~我若接了他那个价，无疑也得面对同样的结局。~
END
  ++ ~所以你就拒了他？忠心跟这事没关系？~ + KVEL-OXLEY-2
  ++ ~我看你不会像这软骨头一样轻易死掉。~ + KVEL-OXLEY-3

CHAIN C0KVELJ KVEL-OXLEY-2
~不打紧。~
END
  ++ ~我看有关系。我得知道自己能靠得住你。~ + KVEL-OXLEY-4
  ++ ~好，当我没说。~ EXIT

CHAIN C0KVELJ KVEL-OXLEY-3
~认出陷阱，总比试着从里头爬出来好。~
EXTERN C0KVELJ KVEL-OXLEY-5

CHAIN C0KVELJ KVEL-OXLEY-4
~只要你不再犯同样糟的决定，你就没理由害怕。~
EXTERN C0KVELJ KVEL-OXLEY-5

CHAIN C0KVELJ KVEL-OXLEY-5
~不管怎样，我指这死蠢货出来是有缘由的——他别处都不打紧。~
= ~你看见这些刀痕了么？不平，还带弧，像弯刀的路数。~
END
  ++ ~像袭击你的那个卓尔刺客？~ + KVEL-OXLEY-6
  ++ ~怎么，你是说崔斯特大老远跑来杀了这人？~ + KVEL-OXLEY-7
  ++ ~那又怎样？使弯刀的人多得是。~ + KVEL-OXLEY-7

CHAIN C0KVELJ KVEL-OXLEY-6
~是。这是同一样兵器留下的。仿卓尔工艺的弯刀。~
EXTERN C0KVELJ KVEL-OXLEY-8

CHAIN C0KVELJ KVEL-OXLEY-7
~这不是寻常刀留下的。卓尔工艺，至少是仿的。真卓尔弯刀在日光下熬不住。~
EXTERN C0KVELJ KVEL-OXLEY-8

CHAIN C0KVELJ KVEL-OXLEY-8
~差别不大，可同样的伤我看过太多回，看得出。~
= ~这商人跟卓尔有牵连。或者更可能，有卓尔与铁王座往来。我疑心他们根本没把这具体的蠢货放在心上。~
END
  ++ ~卓尔为什么要跟人类的帮会往来？~ + KVEL-OXLEY-9
  ++ ~所以他和卓尔有些关系。可他们为着什么杀了他？~ + KVEL-OXLEY-10
  ++ ~我们没工夫猜。往前走。~ + KVEL-OXLEY-11

CHAIN C0KVELJ KVEL-OXLEY-9
~魔索布莱、乌斯特·纳萨这样的卓尔城确不会。可若是埃林德林的卓尔，甚至切德·纳萨德的……那就另说了。~
== %VICONIA_JOINED% IF ~InParty("Viconia")~ THEN ~那我算什么，jaluk？剁碎的卓尔肉？~
== BAELOTHJ IF ~InParty("Baeloth")~ THEN ~说得不错，我眼下的盟约不过是权宜，替代那些更合意的可能。~
== C0KVELJ IF ~OR(2) InParty("Viconia") InParty("Baeloth")~ THEN ~眼前这一位，背后没有家族可倚，不算数。~
== C0KVELJ ~在罗丝信徒眼睛少些的地方，卓尔会从更实在的路数上求权。财富与人脉……而那些务实的，只看见跟同样不讲道义的帮会来往有赚头。哪怕对方是地表人。~
== C0KVELJ ~我提过先前那卓尔刺客是扎尔伊昂家的。那是埃林德林的一家，有强横的商人伙伴。与铁王座这样的帮会往来显得诱人，这并非闻所未闻。~
END
  ++ ~而这人是他们的中间人，或者差不多的角色。可为什么杀他？~ + KVEL-OXLEY-10
  ++ ~我们没工夫猜。往前走。~ + KVEL-OXLEY-11

CHAIN C0KVELJ KVEL-OXLEY-10
~谁知道。也许他得罪了他们。也许他上头的人觉得他死了比活着有用。我懒得去扒那些弄权者扭曲的心思，不管是卓尔还是人类。~
= ~我唯一知道的是，卓尔如今可能是我们的敌人。而这是极险的事。~
EXTERN C0KVELJ KVEL-OXLEY-11

CHAIN C0KVELJ KVEL-OXLEY-11
~若真有卓尔成了威胁，不管冲你还是冲我，你最好还是当心。~
EXIT

// SPIDER'S BANE

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1SpidersBane","GLOBAL",1)~ THEN C0KVELJ KVEL-SPIDERBANE
~“蜘蛛之祸”？~
DO ~SetGlobal("C0KvelBG1SpidersBane","GLOBAL",2)~
= ~……哈。~
END
  ++ ~有什么好笑的？~ EXTERN C0KVELJ KVEL-SPIDERBANE-1
  ++ ~我猜一个卓尔使这剑，定是怪事。~ EXTERN C0KVELJ KVEL-SPIDERBANE-2
  ++ ~你喜欢这剑就好。那用起来该不难。~ EXIT

CHAIN C0KVELJ KVEL-SPIDERBANE-1
~我只是在想，这要在任何一个卓尔城里，光是碰一碰这等亵渎之物，就得丢一只手，要不就被变成蛛化精灵。~
EXTERN C0KVELJ KVEL-SPIDERBANE-3

CHAIN C0KVELJ KVEL-SPIDERBANE-2
~这讽刺我当然明白。你把这刀递给我时，想到这个了么？~
EXTERN C0KVELJ KVEL-SPIDERBANE-3

CHAIN C0KVELJ KVEL-SPIDERBANE-3
~不打紧。这是件能用的兵器，我没怨言。~
EXIT

// INTERJECTIONS

I_C_T ALATOS 0 C0KvelAlatos
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~我也宁愿避开敌意，可我发现把兵器放在近手处，是防这一类东西更合意的震慑。~
END

I_C_T BAELOTH 6 C0KvelBaeloth
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~啧。我听过这一位的些传闻，还有他那座野蛮的斗场。趁他还浑然不觉地吹嘘下去，我们最好走。不然，就用我们能用的法子叫他闭嘴。~
== BAELOTH ~恕我，你刚才在说话？我太忙着沉进自己的声音里了。是，你现在可以说了。不过记得先跪下。~
END

I_C_T2 DELTAN2 0 C0KvelDukeEltan
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~走运的是这位大公势力够大，确保一场猝死会闹出乱子。这毒发作得慢。只要医治得当，他能活。~
END

I_C_T2 DESRET 3 C0KvelDesreta
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~多荒唐的理。人若不在性命里求意义，反倒轻易把它当废物丢开，那就让这些蠢货如愿吧。~
END

I_C_T2 DUN 1 C0KvelDun
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~我眼前看见某位蠢熟人的将来。~
== DUN ~唉，不管他们是谁，若能从我犯的错里学到些东西，那我这一生也算做了一件好事。那么，你还有别的想问么？~
END

INTERJECT GRETEK 0 C0KvelGretek
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~幽暗地域的碎骨帮……你们这些怯懦的崽子为了保自己的皮，背了与朋友会的约，把他们的使者丢下任其嗜血的对手处置。你们留下的烂摊子要我亲自来收拾，这笔账我欠你们不少。~
== GRETEK ~什么？！谁敢诽谤碎骨帮！~
== C0KVELJ ~我猜你还记得我，格雷泰克？我看你的伤好了，吹嘘的本事也翻了一倍。看来你还没学着教训。~
== GRETEK ~是你！伙计们，早该把旧账清了。把这卓尔和他那些同伙剁成块，喂狗！~
COPY_TRANS GRETEK 1

I_C_T LUCKY 0 C0KvelLuckyAello
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~埃克瑟尔蠢到差点在那儿买了什么东西。我差点就任他去担自己那蠢劲的后果。我盼你不会重犯他的错。~
END

I_C_T SLYTHE 2 C0KvelSlythe
== C0KVELJ IF ~InParty("C0Kvel")~ THEN ~可笑的饶舌货。把这两个了结了，好补上听这些废话白费的时间。~
END

EXTEND_BOTTOM ZHALIM 0 1 2
 IF ~IsValidForPartyDialog("C0Kvel")~ THEN EXTERN C0KVELJ C0KvelZhalimar
END

CHAIN C0KVELJ C0KvelZhalimar
~你们的名字很快就比风里的灰尘还轻。~
== ZHALIM ~恰恰相反，因为这会是你们最后听见的话，奥达伊尔的剑。或者你以为我们蠢到不知道你自己的来历？~
== C0KVELJ ~……！~
== ZHALIM ~哦，是。我们碰过你这一类，从你的神色看，你似乎已经领过他们的款待。可惜我们要在此取你的命，而你那位挑战者只能失望地回家去。上，兄弟们！~
EXIT

EXTEND_BOTTOM GANTOL 1 5 7
 IF ~IsValidForPartyDialog("C0Kvel")~ THEN EXTERN C0KVELJ C0KvelGantolandan
END

CHAIN C0KVELJ C0KvelGantolandan
~……哼。~
DO ~SetGlobal("C0KvelGantolandan","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
MoveToObject("GANTOL")
Wait(1)
ForceSpellRES("C0KVSP09","GANTOL")
Wait(2)
DisplayStringHead("GANTOL",%gantolandan_1%)
Wait(1)
StartDialogNoSet(Myself)~ EXIT

EXTEND_BOTTOM KIRINHAL 0
 IF ~IsGabber("C0Kvel")~ THEN EXTERN C0KVELJ C0KvelKirinhale
END

CHAIN C0KVELJ C0KvelKirinhale
~你的力气白费在我身上了，塔纳里。你的把戏我知道，你那点诡计没用。~
EXTERN KIRINHAL 2

CHAIN IF WEIGHT #-1 ~Global("C0KvelGantolandan","GLOBAL",1)~ THEN C0KVELJ C0KvelGantolandan2
~想不到我还得费心干这种小偷小摸的活。这一剂灰荆棘叶能叫你安分够久。~
= ~那么，该把这事了结了。~
DO ~SetGlobal("C0KvelGantolandan","GLOBAL",2)~
EXIT

EXTEND_BOTTOM %eet_neb% 5
 IF ~IsValidForPartyDialog("C0Kvel")~ THEN EXTERN C0KVELJ C0KvelNeb
END

CHAIN C0KVELJ C0KvelNeb
~……~
== %eet_neb% ~嘿嘿……觉得憋屈，是不是？别担心，我们可以——*呃咯*！~
== C0KVELJ ~……~
== %eet_neb% ~*咯！*……*呃啊！*~
== C0KVELJ ~这疯谜题有个简单得多的解法。你把知道的都说出来。不然，我拧断你的脖子。什么都不会损失。~
== %eet_neb% ~*嗯嗯嗯！*……嘿……*嗯！*~
== C0KVELJ ~你最好趁还能喘气的时候想清楚。~
END
  ++ ~（什么也不做）~ + C0KvelNeb.3
  ++ ~了结他。这渣滓活该。~ + C0KvelNeb.1
  ++ ~住手，克维尔。我们也许还得靠他出去。~ + C0KvelNeb.2

CHAIN C0KVELJ C0KvelNeb.1
~乐意之至。~
EXTERN C0KVELJ C0KvelNeb.3

CHAIN C0KVELJ C0KvelNeb.2
~……~
= ~……哼。~
== %eet_neb% ~*咳* *干呕* 嘿，嘿……只是小小……小小玩一玩，嗯？没伤着什么。这游戏我们能玩一整天……~
EXIT

CHAIN C0KVELJ C0KvelNeb.3
~……~
== %eet_neb% ~*咕噜* 我——我说——*呛住*……我……我说……~
== C0KVELJ ~……你今日是条走运的虫。~
== %eet_neb% ~*咳* *喘*……我——我……~
EXTERN %eet_neb% 17

// TALK 1

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Talk1","GLOBAL",2)~ THEN C0KVELJ KVEL-TALK1
~那么，我在新雇主手下的头一日。又一次变化。五年之久过后，也许这样最好。~
= ~我希望你别指望多么热络的接待。我如今只誓为你效力，别的什么都没有。~
DO ~SetGlobal("C0KvelBG1Talk1","GLOBAL",3)~
END
  ++ ~你待所有雇主都这样？~ + KVEL-TALK1-1
  ++ ~说起来，你对埃克瑟尔倒挺和气。~ + KVEL-TALK1-2
  ++ ~我不养仆从，也不养雇佣兵。我们既共事，我更愿把你当个人来信。~ + KVEL-TALK1-3
  ++ ~好。我更喜欢不拿废话耗我时间的盟友。~ + KVEL-TALK1-4

CHAIN C0KVELJ KVEL-TALK1-1
~需要。~
EXTERN C0KVELJ KVEL-TALK1-5

CHAIN C0KVELJ KVEL-TALK1-2
~你看见的是一个来日无多的男人的多情。我们的契约了结，于他也更好。~
EXTERN C0KVELJ KVEL-TALK1-5

CHAIN C0KVELJ KVEL-TALK1-3
~我可以向你保证我的诚意，可单凭话能有多少分量？我们并肩打过，如今又因机缘共事。若情形稍偏一点，我们根本不会相识。~
EXTERN C0KVELJ KVEL-TALK1-5

CHAIN C0KVELJ KVEL-TALK1-4
~那我们彼此明白了。~
EXIT

CHAIN C0KVELJ KVEL-TALK1-5
~你把信任放在一个卓尔、一个陌生人身上。你明白这意味着什么么，<CHARNAME>？~
END
  ++ ~不明白。所以我才要多知道些你的事，好寻个理由信你。~ + KVEL-TALK1-6
  ++ ~我知道你是卓尔，可这不等于我不信你……除非你给我个理由。~ + KVEL-TALK1-7
  ++ ~听起来你对这新差事也没那么笃定。~ + KVEL-TALK1-8
  ++ ~我唯一知道的是你打得一手好仗，我正用得上你这样的人。~ + KVEL-TALK1-9

CHAIN C0KVELJ KVEL-TALK1-6
~这是个说得过去的起点。好。你需要知道的我尽说。~
EXTERN C0KVELJ KVEL-TALK1-10

CHAIN C0KVELJ KVEL-TALK1-7
~信任不该无条件给予。可你似乎至少明白：要信一个人，总得先知道他些什么。既如此，我就正经介绍一下自己，好叫你对我是个什么不存幻想。~
EXTERN C0KVELJ KVEL-TALK1-10

CHAIN C0KVELJ KVEL-TALK1-8
~我的感觉如今不打紧。我唯一想知道的是，你可准备好把命交在我手里的可能。~
END
  ++ ~如你所说，我们彼此几乎不识。可正因为如此，我才想多了解你。~ + KVEL-TALK1-6
  ++ ~我还不能全然信你。可我也还没有理由不信你。~ + KVEL-TALK1-7
  ++ ~只要你能打，那些细枝末节我倒不在乎。~ + KVEL-TALK1-9

CHAIN C0KVELJ KVEL-TALK1-9
~真简单……既如此，我就做你手里一件兵器。可有些事，连我也护不了你。~
EXIT

CHAIN C0KVELJ KVEL-TALK1-10
~我是克维拉林。我生在幽暗地域的埃林德林城。我的家族曾是奥达伊尔，一个不大的势力。我长到与第一把剑一般高那日提起了它，八岁时杀了头一个有灵性的对手，远在血礼之前。自我有记忆起，我就受着战技的操练。~
DO ~SetGlobal("C0KvelBG1Background","GLOBAL",1)~ 
= ~七年前，我冒着死罪逃到地表，把刀卖给任何肯出价的人。第二年之后，埃克瑟尔找着我、雇了我，我为他效力到我们契约终了。如今，我凭一句话的分量为你效力。~
= ~到此，我把对任何一个寻我效力的地表人说过的话都对你说过了。你怎么看这些，怎么看我的分量，由你。~
EXIT

// TALK 2

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Talk2","GLOBAL",1)~ THEN C0KVELJ KVEL-TALK2
~我看你还没睡，<CHARNAME>。~
DO ~SetGlobal("C0KvelBG1Talk2","GLOBAL",2)~
END
  + ~Race(Player1,ELF)~ + ~我们是精灵。冥想是我们恢复一日劳苦的法子。你也不冥想么？~ + KVEL-TALK2-ELF
  ++ ~我还不困，想看看你在做什么。~ + KVEL-TALK2-1
  ++ ~你也没睡。~ + KVEL-TALK2-1
  ++ ~你在读什么？~ + KVEL-TALK2-1
  ++ ~我正要去睡。~ + KVEL-TALK2-0

CHAIN C0KVELJ KVEL-TALK2-ELF
~……~
= ~自我头一回到地表，就再没进入过冥想。~
END
  ++ ~这通常是心神或身子有病的征兆。你没事吧？~ + KVEL-TALK2-ELF-1
  ++ ~我听说许多卓尔更难进入冥想。你也是这样么？~ + KVEL-TALK2-ELF-2
  ++ ~说得过去。那你眼下在做什么？~ + KVEL-TALK2-1

CHAIN C0KVELJ KVEL-TALK2-ELF-1
~不打紧。你只须知道，我这身子还壮实得足够给你当雇佣剑客，需要多久都行。~
EXTERN C0KVELJ KVEL-TALK2-1

CHAIN C0KVELJ KVEL-TALK2-ELF-2
~你听说的不算假。可我这情形……不同。这不干你的事。~
EXTERN C0KVELJ KVEL-TALK2-1

CHAIN C0KVELJ KVEL-TALK2-0
~嗯。那我回去读书。~
EXIT

CHAIN C0KVELJ KVEL-TALK2-1
~我在熟习人类地界上些常见的典籍。自我到地表，这已成了我的习惯，起初是为弄通通用语，好活命。~
= ~久而久之，我看你也许可以说这成了更私人的兴趣。以我的来历，我满以为会在这里了此一生，那不妨多懂些你们的文章与风俗。~
END
  + ~GlobalLT("chapter","GLOBAL",%tutu_chapter_6%)~ + ~你喜欢读书？那我该引你去我老家烛堡看看。~ + KVEL-TALK2-2
  ++ ~那你如今在读哪一本？我也许知道。~ + KVEL-TALK2-3
  + ~!InParty("Viconia")~ + ~我倒以为你会看轻地表人和我们的做法。~ + KVEL-TALK2-4
  + ~InParty("Viconia")~ + ~我倒以为你会看轻地表人和我们的做法。~ + KVEL-TALK2-5
  
CHAIN C0KVELJ KVEL-TALK2-2
~那座大图书馆。是，连我也知道它的名声。埃克瑟尔常表示想去一趟，可它那寻常的入门价，连他也总出不起。不过它配不配那名头，也许得看它对这类书估多少价。~
EXTERN C0KVELJ KVEL-TALK2-3

CHAIN C0KVELJ KVEL-TALK2-3
~你也许会觉得这一本跟我一样有趣。这是一份关于卓尔的“史”录，出自一个地表文士之手，那人一辈子无疑一个卓尔都没见过。《沦落》……把往昔写成这副模样，多荒唐。~
= ~不过书页里写着一条无可争辩的真事，只是它没给该有的分量。卓尔最大的敌人从来不是他们的表亲、矮人、人类……不，他们最大的祸事，全是自己招的。~
= ~我猜就算纸上每个字都是胡话，对卓尔那份底下的惧怕与忌惮却是真的。~
END
  ++ ~那卓尔的史实是什么，若不照这书上说的？~ + KVEL-TALK2-6
  ++ ~卓尔那叫人惧怕的名声，不是没有来由。~ + KVEL-TALK2-7
  ++ ~我看多数的族类被逼到墙角，都有变成那样的可能。~ + KVEL-TALK2-8
  ++ ~别说书了。我在烛堡那些年读得够多。我去睡了。~ + KVEL-TALK2-0

CHAIN C0KVELJ KVEL-TALK2-4
~无疑，我在地表见过些全然可鄙之辈。可话又说回来，我若说卓尔里没有这样的，那也是蠢。我们并不比上头那些人更不易沾那些恶习，只是浸得更深……不管这类书怎么说。~
EXTERN C0KVELJ KVEL-TALK2-3

CHAIN C0KVELJ KVEL-TALK2-5
~就像我们那位堕落的女祭司？她那般挣扎着丢不掉的那些特权，我没经历过。她受的苦比我重，可多半是她自己招的。~
EXTERN C0KVELJ KVEL-TALK2-4

CHAIN C0KVELJ KVEL-TALK2-6
~去问个学者。倒不是你在卓尔里找得着什么有名号的，可西方的精灵也许肯与你聊，若你哪天碰上他们。~
EXTERN C0KVELJ KVEL-TALK2-9

CHAIN C0KVELJ KVEL-TALK2-7
~这一点，少有比我更清楚的。~
EXTERN C0KVELJ KVEL-TALK2-9

CHAIN C0KVELJ KVEL-TALK2-8
~你没说错。也许我该当地表人是得天独厚的，可这并不全然是坏事。只要它能叫你不去走卓尔的老路。~
EXTERN C0KVELJ KVEL-TALK2-9

CHAIN C0KVELJ KVEL-TALK2-9
~卓尔的沦落该不该得，我说不了。我不是史家。可我见过我的族类，抱着那信念——残忍与自私是活命的唯一法子——变得多疑，反倒毁了自己。怪不得他们纵有那般势力，在黑暗里住了这许多年，却一直没往前走一步。~
= ~你倒会想，总有人终会学到。可蜘蛛女王嗜好混乱，哪怕要她那些发誓效忠的人一同败落。于是我们继续像傀儡一样在她线上起舞，为了取乐彼此毁杀，没个尽头。~
= ~至少这些记录没把卓尔那段黑史写进去。也许是点小仁慈，可到底是仁慈。~
= ~这些书我读完了，<CHARNAME>。你若觉得有趣就自己读，可别拿它当全然的真。下一回，我宁愿读些更实用的。~
= ~也许一本食谱会耐看。你若碰见就留意。就当这是我在向你讨的一桩稀罕人情。~
DO ~GiveItemCreate("BOOK38",Player1,1,0,0)
GiveItemCreate("BOOK39",Player1,1,0,0)
RestParty()~ EXIT

// TALK 3

CHAIN IF WEIGHT #-1 ~!NumInPartyGT(3)
Global("C0KvelBG1Talk3","GLOBAL",1)~ THEN C0KVELJ KVEL-TALK3
~这一路上，你选来同行的人不多。~
DO ~SetGlobal("C0KvelBG1Talk3","GLOBAL",2)~
= ~也许你觉得单凭我的刀就够保你的命。虽说我守信，可我只能按我能耐的范围尽力。~
EXTERN C0KVELJ KVEL-TALK3-1

CHAIN IF WEIGHT #-1 ~NumInPartyGT(3)
Global("C0KvelBG1Talk3","GLOBAL",1)~ THEN C0KVELJ KVEL-TALK3
~你聚了一伙杂七杂八的人。~
DO ~SetGlobal("C0KvelBG1Talk3","GLOBAL",2)~
= ~我希望你觉得他们每一个都值得信，因为你的命随时可能靠他们。我的安危既与你相系，这话我是为着我们两个说的。~
EXTERN C0KVELJ KVEL-TALK3-1

CHAIN C0KVELJ KVEL-TALK3-1
~领头不是简单事。身边的同伴太少，或者太多不值得信的，都会招来早死。~
END
  ++ ~一个卓尔懂什么领头与信任？~ + KVEL-TALK3-2
  ++ ~我挑盟友一向仔细。这一头你不必操心。~ + KVEL-TALK3-3
  ++ ~信任自己的领头，也同样要紧。~ + KVEL-TALK3-4
  ++ ~这会儿不是谈这种事的时候。~ + KVEL-TALK3-0

CHAIN C0KVELJ KVEL-TALK3-0
~随你。我只希望我的话至少留在你心里。~
EXIT

CHAIN C0KVELJ KVEL-TALK3-2
~你问这话不算全错。可我明白的比你以为的多。许多卓尔认为往上爬的路得用对手的血来涂，可齐心也一样有力量。~
EXTERN C0KVELJ KVEL-TALK3-5

CHAIN C0KVELJ KVEL-TALK3-3
~我不疑这个。你能在这样短的时间里成这许多事，就是你眼力的明证。~
EXTERN C0KVELJ KVEL-TALK3-5

CHAIN C0KVELJ KVEL-TALK3-4
~受教了。~
EXTERN C0KVELJ KVEL-TALK3-5

CHAIN C0KVELJ KVEL-TALK3-5
~我不是要疑你领头的本事。你辨人意图、寻可能助你之人的直觉与本事，无可置疑。若不是这样，你活不到今日。~
= ~我这方面的本事不大。我的经验是一个指挥官和他那一排兵。别样的领头法子我少有经验，也不当那是我的长处。~
END
  ++ ~你从前带过兵？我猜是在埃林德林那些年。~ + KVEL-TALK3-6
  ++ ~我不信带民兵所需的领头本事就比带一支冒险队伍差多少。~ + KVEL-TALK3-7
  ++ ~一个卓尔指挥官得会些什么？~ + KVEL-TALK3-8

CHAIN C0KVELJ KVEL-TALK3-6
~那是我这种处境里的卓尔能想到的最高位分了。是个要紧的差事，可没什么往上爬的野心。~
EXTERN C0KVELJ KVEL-TALK3-8

CHAIN C0KVELJ KVEL-TALK3-7
~差得够多。领头与下属的关系，跟同行同伴之间该有的，差得远。~
EXTERN C0KVELJ KVEL-TALK3-8

CHAIN C0KVELJ KVEL-TALK3-8
~多数卓尔我说不了。可身为指挥官，我得把我手下的人塑成我家族活命所需的那类人。可卓尔——尤其卓尔男性——只在家族能保自己安稳时才看重家族。~
= ~为些小由头就背叛，在卓尔里不算意外，可照我的位分，那是我得以任何手段压住的威胁。我不能要求手下把同伴的命看得与自己的一样重，可我能灌给他们一个信念：同处一位的人也能成盟友，而依靠盟友也许就是他们活命的路。~
= ~这对许多卓尔是难懂、甚至懂不了的课。可对我这样的人，若不寻着少数能替我看我所看不见之事的可靠之人，就没有别的法子叫我立得住，去对抗埃林德林的欺诈与无情。~
= ~这一点上，我相信我们领头的法子是相像的。你首先该问的是：你能信谁的眼替你看顾，以及你自己缺哪些本事。你若答得上来，也许还能成。不然……~
= ~我当然会尽力，那是该我的。可别指望单凭我的刀就叫你永远活着。~
EXIT

// DRADEEL

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1TalkDradeel","GLOBAL",2)~ THEN C0KVELJ KVEL-TALK-DRADEEL
~我倒想不到一个落到这般境地的人，会把心思放在记自己做菜的尝试上。~
= ~那些年的孤居无疑磨坏了他的心神。不过也许轮不到我来说。~
= ~这些食谱的尝试，往好里说像生手，往坏里说荒唐。不过有些东西也许还值得一试……~
= ~……哼。除了末页。那页简直不值写它的那张羊皮纸。~
EXIT