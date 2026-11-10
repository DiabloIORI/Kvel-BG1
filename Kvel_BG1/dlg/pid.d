CHAIN IF ~IsGabber(Player1)~ THEN C0KVELJ PID
~你有什么吩咐？~
END
  ++ ~我有话要问你。~ + PID-ASK
  ++ ~你的声音有点不对。~ + PID-STRINGFIX
  ++ ~眼下没什么。~ EXIT

CHAIN C0KVELJ PID-ASK
~问吧。我不许诺给答案。~
END
  + ~Global("C0KvelBG1Background","GLOBAL",1)
    Global("C0KvelBG1Blooding","GLOBAL",0)~ + ~你提过血礼。那是什么？~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                            IncrementGlobal("C0KvelBG1Blooding","GLOBAL",1)~ + PID-BLOODING
  + ~Global("C0KvelBG1Background","GLOBAL",1)
     Global("C0KvelBG1Blooding","GLOBAL",1)
     OR(3)
     Global("C0KvelBG1Blooding1","GLOBAL",0)
     Global("C0KvelBG1Blooding1","GLOBAL",0)
     Global("C0KvelBG1Blooding1","GLOBAL",0)~ + ~再说说血礼。~ + PID-BLOODING-Q
  + ~Global("C0KvelBG1Background","GLOBAL",1)
     Global("C0KvelBG1Eryndlyn","GLOBAL",0)~ + ~说说埃林德林。~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                            IncrementGlobal("C0KvelBG1Eryndlyn","GLOBAL",1)~ + PID-ERYNDLYN
  + ~Global("C0KvelAngeloTorture","GLOBAL",4)~ + ~你为什么任安杰洛折磨你？~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                           SetGlobal("C0KvelAngeloTorture","GLOBAL",5)~ + PID-TORTURE
  + ~Global("C0KvelDrizzt","GLOBAL",1)~ + ~你见过崔斯特。你怎么看他？~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                  SetGlobal("C0KvelDrizzt","GLOBAL",2)~ + PID-DRIZZT
  + ~Global("C0KvelPIDDrowLanguage","GLOBAL",0)~ + ~怎么我几乎从没听你说你自己的语言？~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                SetGlobal("C0KvelPIDDrowLanguage","GLOBAL",1)~ + PID-LANGUAGE
  + ~Global("C0KvelPIDMuscles","GLOBAL",0)~ + ~我没见过几个你这样的精灵。你该有六尺高，肌肉几乎像矮人。~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
   SetGlobal("C0KvelPIDMuscles","GLOBAL",1)~ + PID-MUSCLES
  + ~Global("C0KvelPIDCooking","GLOBAL",0)~ + ~我倒没想到你是讲究吃食的那类人。这背后有什么故事？~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                   SetGlobal("C0KvelPIDCooking","GLOBAL",1)~ + PID-COOKING
  + ~Global("C0KvelPIDMage","GLOBAL",0)~ + ~你以剑术为主，怎么学的奥术？~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                   SetGlobal("C0KvelPIDMage","GLOBAL",1)~ + PID-MAGIC
  + ~Global("C0KvelPIDThief","GLOBAL",0)~ + ~你对毒知道得不少。这知识你从哪儿来的？~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                   SetGlobal("C0KvelPIDThief","GLOBAL",1)~ + PID-THIEF
  + ~Global("C0KvelPIDEcthel","GLOBAL",0)~ + ~你和埃克瑟尔是怎么开始共事的？~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                  SetGlobal("C0KvelPIDEcthel","GLOBAL",1)~ + PID-ECTHEL
  + ~Global("C0KvelPIDHelmet","GLOBAL",0)~ + ~你怎么如今不总戴着全罩的头盔了？~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                           SetGlobal("C0KvelPIDHelmet","GLOBAL",1)~ + PID-HELMET
  + ~Global("C0KvelBG1Event","GLOBAL",13) Global("C0KvelPIDAndrosz","GLOBAL",0)~ + ~说说安德罗兹。~ DO ~IncrementGlobal("C0KvelBG1TalkOptions","GLOBAL",1)
                                                                                                                SetGlobal("C0KvelPIDAndrosz","GLOBAL",1)~ + PID-ANDROSZ
  + ~GlobalGT("C0KvelBG1TalkOptions","GLOBAL",7) Global("C0KvelBG1Talkative","GLOBAL",0)~ + ~你叫我吃惊，克维尔。我以为你在谈话上不会这么肯说。~ DO ~SetGlobal("C0KvelPIDAndrosz","GLOBAL",1)~ + PID-TALKATIVE
  ++ ~算了。我没什么要问的。~ EXIT

CHAIN C0KVELJ PID-BLOODING
~那是卓尔少年成年的礼。你被送进幽暗地域的隧道里，随行一个被掳的地表人，只带你自选的一件兵器护身。~
= ~没有规矩，不管明说还是别的，除了活下来，并把你杀死的凭据带回给你主母。败了，你横竖都得死。~
END
  ++ ~这听着凶残得可怕。~ + PID-BLOODING-1
  ++ ~那谁是预定的猎物？卓尔还是地表人？~ + PID-BLOODING-2
  ++ ~听着有道理。杀或被杀。早点学到这一课也好。~ + PID-BLOODING-1

CHAIN C0KVELJ PID-BLOODING-1
~无疑。卓尔把血礼当作自己能在这残酷社会活下来的凭证。没人会去想它要他们付什么代价，或者值不值。~
EXTERN C0KVELJ PID-BLOODING-3

CHAIN C0KVELJ PID-BLOODING-2
~这得看那卓尔的本事。没那份为活命去杀的狠劲的，就不该指望活。~
EXTERN C0KVELJ PID-BLOODING-3

CHAIN C0KVELJ PID-BLOODING-3
~可说到底，从那条隧道里出来的是什么，从来不打紧。几乎无可避免地，里头的两个都死了。~
EXIT

CHAIN C0KVELJ PID-BLOODING-Q
~好，虽说你听了也许不欢喜。~
END
  + ~Global("C0KvelBG1Blooding1","GLOBAL",0)~ + ~所有卓尔都得经血礼么？~ DO ~SetGlobal("C0KvelBG1Blooding1","GLOBAL",1)~ + PID-BLOODING-Q1
  + ~Global("C0KvelBG1Blooding2","GLOBAL",0)~ + ~你的血礼是什么样的？~ DO ~SetGlobal("C0KvelBG1Blooding2","GLOBAL",1)~ + PID-BLOODING-Q2
  + ~Global("C0KvelBG1Blooding3","GLOBAL",0)~ + ~你提过血礼之前就已杀过人。能说给我听么？~ DO ~SetGlobal("C0KvelBG1Blooding3","GLOBAL",1)~ + PID-BLOODING-Q3

CHAIN C0KVELJ PID-BLOODING-Q1
~这是该有的。可有些有权势的家族会……免去他们看出有潜力的少年卓尔。自然不是出于怜悯，而是他们务实到觉得这卓尔值得留命，不叫他去掺那般凶险的礼。~
= ~免不了这个，就更常见的是：偏爱某个孩子的卓尔，会在猎杀前给他们些……未获准许的好处。自然，少有完全躲过主母眼睛的，可只要她们觉得那作弊的法子够高明，也就装没看见。~
= ~可我，没得过这样的恩典。我家族的主母肯在产床上留我一命，就算我的运气。~
EXIT

CHAIN C0KVELJ PID-BLOODING-Q2
~血礼之前我就已与杀戮和解了，不过是情势所迫，不是自己挑的。所以我进幽暗地域深处时，对自己不得不做的事并无惧意，只想着活命的成算。~
= ~我要猎的是个矮人，从前上幽暗与地表平原那边一场仗里掳来的。过了壮年，一只眼瞎了，可仍强壮，不可小看。我们头一日将尽时撞上了。那时我带去那把刀已在砍一只钩恐兽的外壳时崩了，手里只剩刀柄剩的那点。他只握着一块磨出尖的石头。~
= ~我又疲又丧，最要紧的是饿得不成样子，我毫不怀疑我那猎物也一样。我们俩都没那份心思打，也没那个底气在如今这状态里冒死的险，于是彼此逃开，像达成了一场不言的约。~
= ~接下来两日，我采食、猎捕、设陷阱，然后才歇，好叫万一那矮人趁我不备来下手时能警醒我。可我一直没见着他，直到我不耐烦了，去探那些洞窟，想把这累人的猎事做个了结。~
= ~末了我找着他，坐在近处一条河边，看模样全然没有防备。他手里一根用刻骨与蛛丝做的临时钓竿，一边哼着，一边一条一条地把鱼拉上来。~
= ~我倒想这矮人是不是个傻子。他无疑要死在这儿了，不管他备多少吃食——他不知道，还是不在乎？我不信这个，所以没去接那看着正好的机会。我只是看着。不多时，我看得够久，把他的手法每一处都记住了。他全程没离那位置，于是我转身回了我的营地，他也没反应。~
= ~第二日，我回到他钓鱼那处，却见他被一只洞穴巨渔的钳子压在底下，正挣着命跟那钳爪搏，徒劳地想救自己。我不愿让那东西夺了我的猎物，就攻了上去，把断剑扎进它眼里，逼它退了。~
= ~之后，那矮人与我对视，我们都知道躲不掉的事来了。我们打了。我没有兵器，他已然受伤力竭。我们俩在绝望难看的扭打里挣扎，都想抓住活命。~
= ~末了我勉强胜了。我正要瘸着走开，听见他咳了一声，才知他还活着。他抬手指——用中指，因为我割了他的食指当杀的凭据——不是指我，而是指旁边那堆将熄的火，上头烤着串好的鱼。~
= ~我们听不懂彼此的话，可我懂他想要最后一顿饭。对手身上已无半点威胁的意思，我就依了他。我拿了一条鱼给自己，把另一条送到那矮人嘴边。~
= ~那鱼做得差，也没什么味，可仍比那几日我吃过的任何东西都好。而我看着那矮人连骨带肉吞自己那份时，觉得那于他像是天底下最出奇的美味。然后，他终于没了声息。~
= ~那一日我带着许多疑问离开那些洞窟。那矮人为什么选这样度过最后几日，他对我这杀他的人是什么感觉，或者他吃死前最后一顿饭时在想什么。而知道别的卓尔只把这类念头当作软弱的迹象，我把它深埋在心里，此后一生都未曾说出。~
= ~这就是我血礼的故事，<CHARNAME>。我不常说故事，可卓尔的本性就是这样，他们那残酷把戏的受害者也是。你看见的我，不过是个走运活下来的人，这些年，这一点从没变过。~
EXIT

CHAIN C0KVELJ PID-BLOODING-Q3
~随你，虽说这算不上什么大故事。~
= ~你自己看得清楚，我比多数精灵都高大壮实。自少年时就是如此，也正因如此，我在手边那些操练兵器里总觉不趁手，因为那些都是给比我小的孩子造的。~
= ~可我知道有一件兵器能合我。我兄长泰利昂那把半手剑，我在操练场上见他一回回使过。虽说怕他报复，我还是忍不住趁他不在闯进他房里，把那剑拿走了。~
= ~我本想趁人没发觉就放回去，可我沉在那剑的配重与分量里，越看越称手，怎么也舍不得放。末了泰利昂找着我，为这偷窃暴怒。~
= ~他打我。那是我头一回跟一个年纪与阅历都远高于我的卓尔交手。那时能护我的只有手里这把剑，被击倒几回之后，我看除了信它别无选择。~
= ~我闭上眼，本能地摆出一个练过许久的架势。我不信我兄长料到了。等我敢再睁眼时，他在盲目的暴怒里冲上了自己的剑锋，把自己穿了个透。我本只想威胁他停手，可我却杀了他。~
= ~主母相信我是以高超的本事杀了他，因此宽恕了我这弑亲之举，还把我亡兄的产业全给了我。可那一日终了，我找着最近的一处深坑，把那沾血的剑扔了下去。我再没法让自己去看它一眼。~
EXIT

CHAIN C0KVELJ PID-ERYNDLYN
~埃林德林与别的卓尔城不同。我们不受罗丝的女祭司们把持，别的教派的信徒——最显的是污泥之主格乌纳杜尔与蒙面之主维瑞恩——掌着同等的权柄。~
= ~然而，把着城内资源、学识与法器流入的是那些商团，所以某种意义上真正统治的是他们。于是城里的权势按财富与生意人脉分派，主母们比起祭司，倒更近于商团领主。~
= ~这并不叫这城少些凶险。真要说，恰恰相反。在一位主母的臣服之下，不管多不久长，总还能见着点齐心的模样。在埃林德林，你得寻着庇护你的人，不然就死。就这么简单。~
EXIT

CHAIN C0KVELJ PID-TORTURE
~我记得，若不是我把他的注意引开，他当场就会杀我们中一个。而这之所以必要，全因为任我们被抓了。~
END
  ++ ~我以为我们会受公平裁断。~ + PID-TORTURE-1
  ++ ~那你自己的命呢？~ + PID-TORTURE-2
  ++ ~你说得对。是我的错。~ + PID-TORTURE-3

CHAIN C0KVELJ PID-TORTURE-1
~我懂人类信裁断公平那一套，可照眼前的情形，你的举动是蠢的。~
EXTERN C0KVELJ PID-TORTURE-3

CHAIN C0KVELJ PID-TORTURE-2
~这不是我头一回把自己当饵、露在险处去达目的。可我从没掺过这么蠢的目的。~
EXTERN C0KVELJ PID-TORTURE-3

CHAIN C0KVELJ PID-TORTURE-3
~你是我的雇主，轮不到我来评判你。可你最好明白你举动的全部后果，不管它看着多出于好意。~
EXIT

CHAIN C0KVELJ PID-DRIZZT
~我不能否认，他是个走运的卓尔。可只有他后半生，才真算他自己挣来的。~
END
  ++ ~这话什么意思？~ + PID-DRIZZT-1

CHAIN C0KVELJ PID-DRIZZT-1
~我还给我家族在埃林德林当差时，曾为些买卖去过魔索布莱。崔斯特·杜垩登那故事是一段被压下的史事，可我还是知道了一些，而并非所有卓尔——尤其卓尔男性——都会在压低的声音里咒着他的名。~
= ~他连在地表人里都成了公认的英雄，可少有真懂他这一生被发的是什么牌。他蒙机缘眷顾：本该去死时被母亲放过，生对了父亲，被对的那个姐姐养大，又被教了对的东西，好活下来却没丢了自己。~
= ~一个稍有运气的卓尔也许得着一样，或者几样这样的眷顾。可大体上，抗拒蜘蛛女王枷锁的卓尔，少有被发这样一手牌的。更多时候，他们死了，也被人忘了。~
EXIT

CHAIN C0KVELJ PID-LANGUAGE
~我此刻说的就是我自己的语言。那也是你的语言。~
END
  ++ ~我指的是卓尔语。~ + PID-LANGUAGE-1
  ++ ~所以必要时你会说卓尔语？~ + PID-LANGUAGE-2
  ++ ~说得过去。~ EXIT

CHAIN C0KVELJ PID-LANGUAGE-1
~我若说，你能从我的话里听出什么来么？~
END
  ++ ~不能，可我觉得别的语言有意思。~ + PID-LANGUAGE-3
  ++ ~那你若跟一个卓尔说话呢？~ + PID-LANGUAGE-2
  ++ ~你退回母语时，就没一点自在么？~ + PID-LANGUAGE-4

CHAIN C0KVELJ PID-LANGUAGE-2
~若哪一日我稀罕到非得跟另一个卓尔谈、而不是拔刀，那我就看有这个可能。~
EXIT

CHAIN C0KVELJ PID-LANGUAGE-3
~那去找个语言学者。他们无疑觉得谈话更有意思。~
EXIT

CHAIN C0KVELJ PID-LANGUAGE-4
~我在地表住了七年。那些年里，我几乎全靠通用语的知识过活，而卓尔语只是一段记忆。我对它能有什么情分？~
END
  + ~InParty("VICONIA")~ + ~维康妮亚似乎还很依赖它。~ + PID-LANGUAGE-5
  ++ ~所以你会跟一个只懂卓尔语的人说卓尔语？~ + PID-LANGUAGE-2
  ++ ~我相信学语言本身就有价值。~ + PID-LANGUAGE-3
  ++ ~你这话有理。就到这儿吧。~ EXIT

CHAIN C0KVELJ PID-LANGUAGE-5
~她还在自欺地活着。~
EXIT

CHAIN C0KVELJ PID-MUSCLES
~这不常见。甚至可说闻所未闻。可并非不可能。而它稀罕，正合我利。~
= ~少有卓尔凭他们身量的限制，能使我这般的巨剑。许多卓尔就因这天生的劣势死在我手里。~
EXIT 

CHAIN C0KVELJ PID-COOKING
~住在一个任何人都会拿吃食去毒对手的地方，学这门手艺，总比手边老备着几瓶解毒药好。~
= ~这么想着，把烹饪当一门本事就没什么理由不可。它跟剑术一样复杂，也一样要紧。~
EXIT 

CHAIN C0KVELJ PID-MAGIC
~所有卓尔都该学通魔法的基础。要不要把这知识养成更深的技艺，由他们自己挑。~
= ~有些人不必马上，只要他们保持头脑利落，从对的源头学起。~
EXIT 

CHAIN C0KVELJ PID-THIEF
~在埃林德林，不懂些毒的知识就别想活——不管是制毒，还是防住各色各样的毒。~
= ~不然，你的死不但躲不掉，还会痛得钻心。多数蠢到结下某些仇家的卓尔，会怕到不敢吃饭。有些连喘气都不敢自在。~
EXIT 

CHAIN C0KVELJ PID-ECTHEL
~我们……彼此各欠一份情。单凭那不够保我的忠心，可我能确认他靠得住——就我弄明白这点的快法看，他在地表人里算稀罕。~
= ~那种蠢到诚实的，有他的用处。~
EXIT 

CHAIN C0KVELJ PID-HELMET
~我先前那位雇主要求如此。你不需要。~
END
  ++ ~你知道么，有你在此，我的名声仍在受损。~ + PID-HELMET-1
  ++ ~所以那从来不是为了护你自己？~ + PID-HELMET-2
  ++ ~我若给你一顶新头盔呢？~ + PID-HELMET-3

CHAIN C0KVELJ PID-HELMET-1
~可它碍你的事，也碍不到一个寻常商人那个地步。你能活。~
EXIT

CHAIN C0KVELJ PID-HELMET-2
~那头盔是种防备，好叫我的效力拖到命数许我拖的时候。不管我布多少手段确保没别人发现我的身份，我知道那总会发生。而它发生了。~
EXIT

CHAIN C0KVELJ PID-HELMET-3
~打起来我当然戴。可别指望我一直戴着。你真觉得那顶旧盔有一丁点舒服？~
EXIT

CHAIN C0KVELJ PID-ANDROSZ
~安德罗兹是扎尔伊昂家的次子，埃林德林第六家……就我记得的。卓尔家族的位次变得跟地表的季节一样勤。~
= ~我相信他如今是武器教习，那叫他成了这家男性里最强的剑客。我也不疑他也许是埃林德林最强的剑客。~
= ~按地表人的标准，我想你可以当他是我朋友，虽说他把我们的关系当作一场无尽的对抗。可我如今没那份兴致去奉陪他……所以，也许我们之间也没剩多少朋友的情分了。~
EXIT

CHAIN C0KVELJ PID-TALKATIVE
~别把这当成我爱说话。我只是渐渐明白：关于我自己的事，除非能被用来对付我，否则藏着没什么好处。~
END
  ++ ~说出来也没什么好处。~ + PID-TALKATIVE-1
  ++ ~我倒以为卓尔会觉得任何东西都能拿来对付自己。~ + PID-TALKATIVE-2
  ++ ~那是不是说，你信我？~ + PID-TALKATIVE-3

CHAIN C0KVELJ PID-TALKATIVE-1
~这一点你错了。就算最微不足道的一句话也能露许多事。比如：你觉得指出我这份看着的软肋是有目的的。~
EXIT

CHAIN C0KVELJ PID-TALKATIVE-2
~凡是自保，都带着险。那些只信自己的蠢货就栽在这儿。你把一切都攥在近处，只叫自己露在别人替你看见的软肋上。~
EXIT

CHAIN C0KVELJ PID-TALKATIVE-3
~我信你到这个地步：肯给你我认为你会拿去利于我、而不是害我的消息。这不等于我全然信你。~
EXIT

CHAIN C0KVELJ PID-STRINGFIX
~一滴冷杉露就能轻易解决这个。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVFIX")~ EXIT