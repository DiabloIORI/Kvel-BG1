BEGIN C02KVC01
BEGIN C02KVC02
BEGIN C02KVC03
BEGIN C02KVC04
BEGIN C02ANDRO

// ANDROSZ

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszEvent","GLOBAL",1)~ THEN C02KVELJ KVEL-ANDROSZ
~住手！~
DO ~SetGlobal("C0KvelSoDAndroszEvent","GLOBAL",2)~
== C02KVELJ ~提高警惕，别动。~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~有什么好怕的？不过一具死尸。~ EXTERN C02KVELJ KVEL-ANDROSZ-1
  + ~!Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~有什么好怕的？不过一具死尸。~ EXTERN C02KVELJ KVEL-ANDROSZ-5

CHAIN C02KVELJ KVEL-ANDROSZ-1
~安德罗兹来过。这个圣战者是​​他杀的。~
END
  ++ ~你光看一具尸体怎么知道？~ EXTERN C02KVELJ KVEL-ANDROSZ-2
  ++ ~安德罗兹？你那个对头，卓尔剑客？~ EXTERN C02KVELJ KVEL-ANDROSZ-2
  ++ ~那又怎样？我不记得他对我们有敌意。~ EXTERN C02KVELJ KVEL-ANDROSZ-3

CHAIN C02KVELJ KVEL-ANDROSZ-2
~这圣战者被杀得又快又静，近旁的同伴竟一个都没察觉。凭这一点，加上伤口的纹路，我几乎可以肯定是他。~
EXTERN C02KVELJ KVEL-ANDROSZ-3

CHAIN C02KVELJ KVEL-ANDROSZ-3
~安德罗兹不只是个敌人，没那么简单。可我没法断定他就在附近是要做什么，而我不信这纯属巧合。小心。~
END
  ++ ~他显然没在看着我们，不然早动手了。~ EXTERN C02KVELJ KVEL-ANDROSZ-4
  ++ ~那你猜他现在在哪？~ EXTERN C02KVELJ KVEL-ANDROSZ-4

CHAIN C02KVELJ KVEL-ANDROSZ-4
~从这里出去只有一条路。就算是他，也躲不过那么多圣战者而不惊动。他一定在这些隧道的更深处。~
== C02KVELJ ~保持警惕。安德罗兹不会无缘无故杀人，可你若给了他理由，你还没明白就会死。~
EXIT

CHAIN C02KVELJ KVEL-ANDROSZ-5
~我认得这圣战者尸首上的刀痕。是一个叫安德罗兹的卓尔下的手。~
END
  ++ ~我看得出杀这人的是个好手，可你光凭几道伤口怎么就确定？~ EXTERN C02KVELJ KVEL-ANDROSZ-6
  ++ ~这安德罗兹是谁？~ EXTERN C02KVELJ KVEL-ANDROSZ-6
  ++ ~那这是坏事么？~ EXTERN C02KVELJ KVEL-ANDROSZ-7

CHAIN C02KVELJ KVEL-ANDROSZ-6
~安德罗兹是埃林德林人，与我同城。他曾是……一个对头，但不是卓尔之间那种寻常的对头。他是剑术上的天才，我从前与他比过许多回，为的是彼此长进。~
= ~自从我离开幽暗地域，我的剑术已见生疏；而我到地表后只见过安德罗兹一回，我知道他的本事只更利了。你能结下的对头里，少有比他更危险的。不过……~
EXTERN C02KVELJ KVEL-ANDROSZ-7

CHAIN C02KVELJ KVEL-ANDROSZ-7
~安德罗兹……不寻常。他有野心，但不是别的卓尔那种。他此生唯一的目标是把自己练到极致，正因如此他才看中我做对手，我们之间也有了一份……类似约定。~
END
  ++ ~你从前有那么强？~ EXTERN C02KVELJ KVEL-ANDROSZ-8
  ++ ~那他也许不是敌人？~ EXTERN C02KVELJ KVEL-ANDROSZ-9

CHAIN C02KVELJ KVEL-ANDROSZ-8
~……那是很久以前了。自我把性命献给剑术的那些日子以来，发生了太多事。~
EXTERN C02KVELJ KVEL-ANDROSZ-9

CHAIN C02KVELJ KVEL-ANDROSZ-9
~若我们遇上安德罗兹，我没法替他保证什么。他若对你起了兴致，也许什么也不做，也许会试你一试。我唯一确定的是：他出现在这里，与我加入你们，绝不是巧。~
EXTERN C02KVELJ KVEL-ANDROSZ-4

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszEvent","GLOBAL",3)~ THEN C02KVC04 KVEL-ANDROSZ2
~就是他！是这个卓尔杀了我们的人！~
DO ~SetGlobal("C0KvelSoDAndroszEvent","GLOBAL",4)~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~他来了。~
== C02ANDRO ~好吧……那也许是真，可我向你保证，我当时别无选择。我实在与你们地表人无怨。我们能不能谈一谈？~
== C02KVC01 ~你当我们是好骗的？把他带去赫弗南，死活不论。务必别让忠于光辉女士的人听到风声。~
== C02ANDRO ~*叹气* 地表人真难缠。~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride("C02KVC01",MoveToObject("C02ANDRO"))
ActionOverride("C02KVC02",MoveToObject("C02ANDRO"))
ActionOverride("C02KVC03",MoveToObject("C02ANDRO"))
FadeToColor([30.0],0)
Wait(2)
ApplyDamagePercent("C02KVC01",110,SLASHING)
Kill("C02KVC01")
SmallWait(5)
ApplyDamagePercent("C02KVC02",110,SLASHING)
Kill("C02KVC02")
SmallWait(5)
ApplyDamagePercent("C02KVC03",110,SLASHING)
Kill("C02KVC03")
SmallWait(5)
ApplyDamagePercent("C02KVC04",110,SLASHING)
Kill("C02KVC04")
JumpToPoint([1234.2370])
FadeFromColor([30.0],0)
Wait(3)
FaceObject(Player1)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszEvent","GLOBAL",4)~ THEN C02ANDRO KVEL-ANDROSZ3
~啊，这不是<CHARNAME>么。向你致意，abbil，实在抱歉让你目睹这桩遗憾的麻烦。~
DO ~SetGlobal("C0KvelSoDAndroszEvent","GLOBAL",5)~
END
IF ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ3-1
IF ~!Global("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ3-2

CHAIN C02ANDRO KVEL-ANDROSZ3-0
~如你所愿，abbil。不受欢迎之处，我不去扰。再会。~
EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-1
~看来我们每次相遇，前头总有一场不幸的战斗。先是令兄占，被我杀了，如今又是这个。~
EXTERN C02ANDRO KVEL-ANDROSZ3-3

CHAIN C02ANDRO KVEL-ANDROSZ3-2
~你脸上那是惊讶我知道你么？唉，不管怎样，希望你别太疑我。我家族，埃林德林的扎尔伊昂贵族之家，与铁王座有往来。我还见过令兄萨拉沃克，只是他邀我参与他所求的那一战，我最终谢绝了。~
EXTERN C02ANDRO KVEL-ANDROSZ3-3

CHAIN C02ANDRO KVEL-ANDROSZ3-3
~不过，你也许不信，我原只想在暗处看看你和我那对手克维拉林的进展。被这些……圣战者发现——虽说他们也许不止于此——不得不封他们的口，并非我的本意。~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~<CHARNAME>，就这一点，他的话你至少可以信一半。暗中观察向是安德罗兹的长处，可要说不起眼，那就不是了。~
== C02ANDRO IF ~InParty("C0Kvel")~ THEN ~克维尔，你伤我心了。说的是真话，可这刀口也不浅。这类事我一向交给你，哪怕你长得比我大。~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~你来只为看戏？这回连几招都不试？~ EXTERN C02ANDRO KVEL-ANDROSZ3-4
  + ~!Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~你认识克维尔？我猜是对头？~ EXTERN C02ANDRO KVEL-ANDROSZ3-5
  ++ ~已经够多人在暗处跟着我了。我不喜欢再多一个。~ EXTERN C02ANDRO KVEL-ANDROSZ3-0

CHAIN C02ANDRO KVEL-ANDROSZ3-4
~克维拉林的本事我亲眼见过，它已告诉了我这些。总有一日我会再对他拔剑，可这一刻还太早。~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~那也得假定到了“合适”的时候，我还愿意奉陪。~
== C02ANDRO IF ~InParty("C0Kvel")~ THEN ~等时候到了，我再跟你辩这个，我的朋友。~
END
  IF ~!PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-8
  IF ~PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-9

CHAIN C02ANDRO KVEL-ANDROSZ3-5
~正是，安德罗兹·扎尔伊昂，我埃林德林贵族之家的武器教习，也是西芙斯拉·扎尔伊昂主母唯一活下来的儿子。若不是我得以和平前来，我本愿早些结识你。~
== C02ANDRO IF ~InParty("C0Kvel")~ THEN ~至于我与克维拉林的旧事，你那忠心的卓尔，嗯……这么说吧，我们是最老的朋友。~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~所谓“朋友”，是从不放过任何一次公然互杀的机会。~
== C02ANDRO IF ~InParty("C0Kvel")~ THEN ~这不就是卓尔的本性么？用刀剑向你挑战，而不是背后捅刀，已是最高形式的敬意。~
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~……这我无法反驳。~
END
  + ~InParty("C0Kvel")~ + ~好啊，我很高兴你们俩能在这儿见上一面，可我们不是来游山玩水的。~ EXTERN C02ANDRO KVEL-ANDROSZ3-6
  ++ ~若你不是自称与我旧敌有关，我倒会说是幸会。~ EXTERN C02ANDRO KVEL-ANDROSZ3-7
  ++ ~暗处盯着我的人已经够多够怪了。趁我还没杀你，滚出去。~ EXTERN C02ANDRO KVEL-ANDROSZ3-0

CHAIN C02ANDRO KVEL-ANDROSZ3-6
~当然，当然。你是神之子，要办的急事自然比我多得多，我确信。你我素不相识，可你既然是我朋友的朋友，我愿你此行顺利。~
END
  IF ~!PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-8
  IF ~PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-9

CHAIN C02ANDRO KVEL-ANDROSZ3-7
~我向你保证，<CHARNAME>，在我听闻你名号的这段短时间里，我从未对你怀过半点私怨。埃林德林是座商人之城，我们不时与地表人做买卖。你我道路相交，纯属偶合。而你既是克维拉林的指挥官，这眼前的乱局里，我最好的祝愿就与你同在。~
END
  IF ~!PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-8
  IF ~PartyHasItem("BDMISC04")~ EXTERN C02ANDRO KVEL-ANDROSZ3-9

CHAIN C02ANDRO KVEL-ANDROSZ3-8
~请把这个当作我诚意的凭证。我信这是这些圣战者的身份标记。于我无用，可你若要混进他们的队伍，它无疑会派上用场。~
DO ~GiveItemCreate("BDMISC04",Player1,1,0,0)~
EXTERN C02ANDRO KVEL-ANDROSZ3-9

CHAIN C02ANDRO KVEL-ANDROSZ3-9
~那么，我不再耽误你的宝贵时间。说到这里，我方才与一位……透明的朋友有过一番颇有意思的交谈，若她认为你配得上她的出现，那也许会合你的意。一句忠告——有时，反抗才是该走的路。祝你在将临的这场大战中好运。~
END
  + ~InParty("C0Kvel")~ + ~等等，安德罗兹。你可有兴趣帮我们？~ EXTERN C02KVELJ KVEL-ANDROSZ3-JOIN
  ++ ~这话到底是什么意思？~ EXTERN C02ANDRO KVEL-ANDROSZ3-10
  ++ ~那……就此别过吧。~  EXTERN C02ANDRO KVEL-ANDROSZ3-11
  + ~InParty("C0Kvel")~ + ~别以为你能走得掉，卓尔。留下，打！~ EXTERN C02KVELJ KVEL-ANDROSZ3-12
  + ~!InParty("C0Kvel")~ + ~别以为你能走得掉，卓尔。留下，打！~ EXTERN C02ANDRO KVEL-ANDROSZ3-13

CHAIN C02ANDRO KVEL-ANDROSZ3-10
~依眼前的情形，这该已够明白了。我毫不怀疑你知道该做什么。Aluve。~
DO ~EscapeArea()~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-11
~Aluve，<CHARNAME>。你若与克维拉林继续同行，我毫不怀疑我们还会再见。~
DO ~EscapeArea()~ EXIT

CHAIN C02KVELJ KVEL-ANDROSZ3-12
~别这样，<CHARNAME>。那会是你最后悔的一件事。~
== C02ANDRO ~我们之间，克维拉林行事一向更明智。我不愿让可能成为盟友者的血染了我这双剑。那么，再会。~
DO ~EscapeArea()~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-13
~请息怒，<CHARNAME>。我不愿让可能成为盟友者的血染了我这双剑。那么，再会。~
DO ~EscapeArea()~ EXIT

CHAIN C02KVELJ KVEL-ANDROSZ3-JOIN
~哦……？~
== C02ANDRO ~这可是个极出人意料的请求。虽说我觉得你这桩事有意思，可让我的行迹在地表显露，我以为对我不利。我凭什么把双剑押进这场仗？~
END
  + ~OR(2)
     CheckStatGT(Player1,15,INT)
     CheckStatGT(Player1,15,WIS)~ + ~不管你做什么，克维尔都会与我并肩而战。这场仗凶险。而我知道你盼他活着。~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-1
  + ~OR(2)
     CheckStatGT(Player1,15,CHR)~ + ~那么，也许我好好求一句就够了？~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-2
  ++ ~我没什么好理由求你。当我没说过。~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-3

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-1
~这话有道理，确实。虽说我毫不怀疑克维尔的本事，可在这样大的战场上，从来没有万全。~
END
  IF ~GlobalGT("bd_sdd318_drow_teens","bd5100",3)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-4
  IF ~!GlobalGT("bd_sdd318_drow_teens","bd5100",3) CheckStatGT(Player1,17,CHR)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-5
  IF ~!GlobalGT("bd_sdd318_drow_teens","bd5100",3) !CheckStatGT(Player1,17,CHR)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-6

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-2
~哈！对多数卓尔而言，客气只会让你更不可信。不过我也明白，地表人更讲坦诚温和的往来。~
END
  IF ~GlobalGT("bd_sdd318_drow_teens","bd5100",3)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-4
  IF ~!GlobalGT("bd_sdd318_drow_teens","bd5100",3) CheckStatGT(Player1,17,CHR)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-5
  IF ~!GlobalGT("bd_sdd318_drow_teens","bd5100",3) !CheckStatGT(Player1,17,CHR)~ EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-6

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-3
~唉，虽说我未必与你并肩，我仍真心祝你和克维拉林安好。Aluve，朋友们。~
DO ~EscapeArea()~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-4
~其实，我该告诉你，我碰上了一对痴傻的年轻卓尔恋人。自然，他们被我的出现吓坏了，不过我很轻易就安抚了他们。他们给我讲的故事可真有意思。~
= ~<CHARNAME>，你叫我一惊。少有人肯让卓尔就这么活着、去寻自己的运数。多数卓尔会为此咒你，可我要为你这个决定致敬。~
EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-7

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-5
~我觉得你极有意思，<CHARNAME>，不只是因为你是克维拉林的领头人。也许跟着你能得些什么，至少跟一小段。~
EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-7

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-6
~你的话很有说服力，可惜我恐难从命。虽说我愿再一次与克维拉林并肩，可我恐有些风险，实在不值一冒。~
EXTERN C02ANDRO KVEL-ANDROSZ3-JOIN-3

CHAIN C02ANDRO KVEL-ANDROSZ3-JOIN-7
~好极了！你已得了我的兴致，也得了我的同盟。到时候，你会在战场上见到我。~
= ~我知道你的人在何处扎营，我也许会去那里，向你的盟友表明我的归属——当然，要有个合适的伪装。我盼着再与你和克维拉林并肩一战。~
= ~那么，在那之前，我还要做些准备。再会，我们不久就会再见。~
DO ~SetGlobal("C0KvelSoDAndroszAlly","GLOBAL",1) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszAlly","GLOBAL",1) Global("C0KvelSoDAndroszMeet","GLOBAL",0)~ THEN C02ANDRO KVEL-ANDROSZ3
~啊，你在这儿，abbil。~
DO ~SetGlobal("C0KvelSoDAndroszMeet","GLOBAL",1)~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~这顶头盔，是我前不久命人打造的。这式样是不是很叫人怀旧？~
== C02KVELJ IF ~InParty("C0KVEL")~ THEN ~真有意思。~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~哎呀，来吧。这东西确实难看，戴着也绝不舒服，于我的打法全不合适。你竟忍了这么久，我敬你。不过我也看得出好处。连太阳的刺眼都弱了几分。~
== C02ANDRO ~我改了容貌，混进营地并不太难。就算遮着脸，只凭对你这位“博德之门英雄”的一点了解，我也换来了些试探性的自由。自然，我毫不怀疑自己仍被人盯着，可只要我不做出叫人起疑的举动，就该无须担忧。~
== C02ANDRO ~开战之后，让我看看你能做到什么，<CHARNAME>，我也会让你看看，为何安德罗兹·扎尔伊昂的双剑在埃林德林无人能敌。~
END
  IF ~Class(Player1,FIGHTER_ALL)~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR
  IF ~!Class(Player1,FIGHTER_ALL)~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-SPAR
~不过……~
== C02KVELJ IF ~InParty("C0KVEL")~ THEN ~我不喜欢你眼里那个神色，安德罗兹。~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~偶尔也松一松你的警惕，克维尔。我刚看见一个熟透的机会，若放过就可惜了。~
== C02ANDRO ~<CHARNAME>，你天生就是为战而生的<PRO_MANWOMAN>。你与克维拉林和我一样，走的是武士之路。可愿来个友好的切磋？我看再没有更好的时机。~
END
  ++ ~我能信你会公平比试么？~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-1
  ++ ~我倒不会推掉一试身手的机会。~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-2
  ++ ~我没兴趣。~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-3

CHAIN C02ANDRO KVEL-ANDROSZ3-SPAR-1
~这可太无礼了。我像是会使诈的人？克维拉林可以为我的品性作保。~
== C02KVELJ IF ~See("C0KVEL")~ THEN ~无可奉告。~
== C02ANDRO ~再说，在一场不为活命的比试里使诈，所得甚少。我会像一名有荣誉的武士那样打，这话我给你保证。~
END
  ++ ~那就来比一场吧。~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-2
  ++ ~我没兴趣。~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-3
  ++ ~也许以后。我还没准备好。~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-3

CHAIN C02ANDRO KVEL-ANDROSZ3-SPAR-2
~太好了，abbil。不过我们得找个合适的场地，这地方有这么多旁人，不成。我也宁愿摘了这顶头盔再打。我们找个绝不会被打扰的地方。我知道一处。~
DO ~SetGlobal("C0KvelSoDAndroszSpar","GLOBAL",1)
StartCutSceneMode()
StartCutScene("C02KVC04")~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ3-SPAR-3
~如你所愿。一切顺利。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszSpar","GLOBAL",1)~ THEN C02ANDRO KVEL-ANDROSZ4
~规矩很简单，也算宽。你爱用什么兵器、什么战法都行，只是你若懂魔法，我请你不要使。我们打到一方再也撑不住为止。~
== C02ANDRO ~那么，来吧。<CHARNAME>，我盼着看你能做到什么！~
DO ~SetGlobal("C0KvelSoDAndroszSpar","GLOBAL",2)
ApplySpellRES("C02KVSP1",Player1)
ApplySpellRES("C02KVSP2",Player2)
ApplySpellRES("C02KVSP2",Player3)
ApplySpellRES("C02KVSP2",Player4)
ApplySpellRES("C02KVSP2",Player5)
ApplySpellRES("C02KVSP2",Player6)
Enemy()
Spell(Myself,KENSAI_KIA)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszPCLost","GLOBAL",1)
Global("C0KvelSoDAndroszSpar","GLOBAL",3)~ THEN C02ANDRO KVEL-ANDROSZ-SPAR-LOSE
~Ultrinnan！我看这场胜利归我了。~
END
IF ~!HPPercentLT(Myself,90)~ DO ~AddXPObject(Player1,50)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-REKT
IF ~HPPercentLT(Myself,90) !HPPercentLT(Myself,75)~ DO ~AddXPObject(Player1,800)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-HP90
IF ~HPPercentLT(Myself,75) !HPPercentLT(Myself,50)~ DO ~AddXPObject(Player1,2000)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-HP75
IF ~HPPercentLT(Myself,50) !HPPercentLT(Myself,25)~ DO ~AddXPObject(Player1,5000)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-HP50
IF ~HPPercentLT(Myself,25)~ DO ~AddXPObject(Player1,7000)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-HP25

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-REKT
~看来这一战对你是不幸。也许是我没留手，也许是你今日不在最佳状态。不管怎样……~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-HP90
~我恐是没留足手，为此我向你致歉。不过你也打出了几记漂亮的招。~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-HP75
~这一场打得好。虽说我阅历占优，可我感觉你才刚开始够到自己的极限。你的前程里有大事等着你。~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-HP50
~好久没有对手能这样逼我了。打得真好，abbil。这般年纪就有这份本事，多数卓尔都要眼红。~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-HP25
~虽说把这称作胜利也许算宽厚……倘若运气稍偏一点，认输的怕就是我了。<CHARNAME>，你实在叫我吃惊。~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDAndroszPCWon","GLOBAL",1)
Global("C0KvelSoDAndroszSpar","GLOBAL",3)~ THEN C02ANDRO KVEL-ANDROSZ-SPAR-WIN
~够了——我认输。胜利归你，<CHARNAME>……打得真好。~
DO ~AddXPObject(Player1,8000)~
== C02ANDRO ~看来我没高估你的本事。虽说你出身平平，天分却极高。我也许留了手，可一对一被人压过，仍是极惊人的事。~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL
~不管结果如何，以我自己的双剑领教过你的招法之后，我觉得我已懂了你。多谢你。这一场不虚此行。~
END
  ++ ~我也这么想。~ + KVEL-ANDROSZ-SPAR-FINAL-1
  + ~Global("C0KvelSoDAndroszPCLost","GLOBAL",1)~ + ~有朝一日我还要再比一场。~ + KVEL-ANDROSZ-SPAR-FINAL-2
  + ~Global("C0KvelSoDAndroszPCWon","GLOBAL",1)~ + ~你被击败了，倒还挺自信。~ + KVEL-ANDROSZ-SPAR-FINAL-3
  ++ ~我看我们在此已待得太久。我还有要事。~ + KVEL-ANDROSZ-SPAR-FINAL-1

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-1
~多谢你肯拨出时间，容我这自私的请求。虽说克维拉林不再愿意好好地跟我对练，我高兴的是，仍有值得一战的对手让我磨砺技艺。~
DO ~SetGlobal("C0KvelSoDAndroszSpar","GLOBAL",4)~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~克维尔，方才那一番过招，就没让你血里起一丝丝激荡？~
== C02KVELJ IF ~InParty("C0KVEL")~ THEN ~不。~
== C02ANDRO IF ~InParty("C0KVEL")~ THEN ~我看我们这位共同的朋友是在自己骗自己。~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-4

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-2
~当然。定个时间地点。只要我还能动，我就接你的挑战。~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-1

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-3
~唉，我若是求胜而不求一场正经的切磋，也许就不至于……罢了，谁知道下一场会怎样。~
EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-1

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-4
~我知道你必有要事在身，我不再占你的时间。~
END
IF ~Global("C0KvelSoDAndroszPCWon","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-REWARD
IF ~!Global("C0KvelSoDAndroszPCWon","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C02KVC06")~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ-SPAR-FINAL-REWARD
~不过，我觉得不该不给胜者一份像样的酬谢便就此分手。我随身之物里称得上珍贵的没有几件，除了我这双舍不得离手的剑，可自然有一样宝贝，我有的是。~
DO ~ApplySpellRES("C02KVSP4",Player1) AddJournalEntry(%kvel_sod_journal_entry_reward%,USER)~
== C02ANDRO ~虽说你我路数不同，我到底是个武器教习，能教你的战技多得很。回程路上，我把从自己操练中得来的些要紧心得说给你听……~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C02KVC06")~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalLT("bd_plot","GLOBAL",394)
Global("C0KvelSoDAndroszAlly","GLOBAL",1)
Global("C0KvelSoDAndroszMeet","GLOBAL",1)
OR(2)
GlobalLT("C0KvelSoDAndroszSpar","GLOBAL",1)
GlobalGT("C0KvelSoDAndroszSpar","GLOBAL",3)~ THEN C02ANDRO KVEL-ANDROSZ5
~你有什么想要的么，abbil？~
END
  + ~OR(3)
  Global("C0KvelSoDAndroszQuestion1","GLOBAL",0)
  Global("C0KvelSoDAndroszQuestion2","GLOBAL",0)
  Global("C0KvelSoDAndroszQuestion3","GLOBAL",0)~ + ~我能问你几个问题么？~ EXTERN C02ANDRO KVEL-ANDROSZ5-Q
  + ~Class(Player1,FIGHTER_ALL)~ + ~你还愿意切磋么？我现在准备好了。~ EXTERN C02ANDRO KVEL-ANDROSZ3-SPAR-2
  ++ ~此刻不行。~ EXIT

CHAIN C02ANDRO KVEL-ANDROSZ5-Q
~当然。我确信，我能当个比克维拉林更好的谈话对象。~
END
  + ~Global("C0KvelSoDAndroszQuestion1","GLOBAL",0)~ + ~你和克维拉林是怎么相识的？~ DO ~SetGlobal("C0KvelSoDAndroszQuestion1","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ5-Q-1
  + ~Global("C0KvelSoDAndroszQuestion2","GLOBAL",0)~ + ~说说你的城，埃林德林。~ DO ~SetGlobal("C0KvelSoDAndroszQuestion2","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ5-Q-2
  + ~Global("C0KvelSoDAndroszQuestion3","GLOBAL",0)~ + ~身为一个专精剑术的卓尔，你对崔斯特·杜垩登知道些什么？~ DO ~SetGlobal("C0KvelSoDAndroszQuestion3","GLOBAL",1)~ EXTERN C02ANDRO KVEL-ANDROSZ5-Q-3

CHAIN C02ANDRO KVEL-ANDROSZ5-Q-1
~我猜他只跟你说了一点点。幸好我不是他，我乐意说得更细些。~
= ~先说些因由……你可知，埃林德林并没有真正的武艺教习之所？魔索布莱城有武技之塔，乌斯特·纳萨有战士会……可我们城里那些个势力，谁也不肯让出一个地方，让有志的武者聚到一处磨砺本事。~
= ~因此，真正有本事的卓尔武士寥寥无几，而他们虽不明说，却被更务实的各家族主母看得比女祭司还重。我年少时就觉察了自己的兵器天分，很快就成了母亲眼中胜过我几个兄弟的人。我甚至得了免去“血礼”的恩典，那是极少才给的。~
= ~可就算是天才，没有足够的挑战、没有相当的对手，也终会磨钝锋芒。我早年为家族当武士，杀的多是生嫩的卓尔和无脑的野兽。那很乏味，我也觉得自己毫无长进。直到我遇上了克维拉林。~
= ~那时我母亲把剿灭一个叫奥达伊尔的小家族交给我——那家似乎得了些值得一提的势力，可能成隐患。我对对手没抱多大指望，大半也都如我所料……直到我碰上一个挨了我第二三击还不倒的对手。~
= ~一名武士，许是比我高出两头，壮得我都怀疑自己在跟一个卓尔打。我阅历与操练占优，可他那身量与巨剑的长度，是我从未遇过的阻碍。我们一招换一招，谁也压不过谁。~
= ~最后，那个敌对的家族还是打退了我们的兵。我太自信，带的兵太少。那是记忆中头一回，主母对我大发雷霆。我只靠提议与刚被我们攻打的那家结盟，才压下了她的怒。为了作证，我把那位值得一战的对手克维拉林带进扎尔伊昂家族的大厅，在全族与我族面前，于台上与他对决。~
= ~那一战极为壮丽。像一场舞，我双剑出手，他以巨剑相应。一合到两合，到五合，再到十合、二十合……后来我数不清了。当时无疑是我更强，尽管只强一点。可无论我在他身上割了多少道，他就是不倒。~
= ~于是到末了，我们谁也举不起兵器了，便判作平手。可我相信那一日我们都赢了。因为我们寻到了一样无价之物：一个能与之把技艺磨到极致、彼此相当的对手，而在这场无情却又根本诚实的比试里，我们之间结下了一份不言的信任。~
= ~也许到头来还是太过。我一直想知道，我母亲是否忌惮我们的同盟，我那年少的弟弟给克维拉林下毒，是否出自她的命令……可如今都不打紧了。我高兴的是，克维拉林还活着，还好好的。总有一日，我们会有一场正经的、最后的试炼。~
EXIT

CHAIN C02ANDRO KVEL-ANDROSZ5-Q-2
~唉……那会是个很啰嗦的故事。我讲个简短的，只留相干的。~
= ~我们的城与别的卓尔城来历不同。埃林德林是由那些在罗丝初被逐出席尔达林时想要夺回失地的卓尔所建，起于米耶里塔，那是一片古时暗精灵居住过的土地。~
= ~因为建城之人从未完全奉行蜘蛛女王的教义，别的势力便得以立足，把此地塑成今日的模样。格乌纳杜尔的子嗣、维瑞恩的蒙面仆从，而最要紧的是把着商路的商团领主……还有杰兹瑞德·乔尔辛，那个由男性创立、誓要根除罗丝对我等卓尔影响的刺客公会。~
= ~我们城里的内斗，比任何别的城都烈，卓尔家族建起来多快，散得就有多快。你可以确信，那是个极乱的地方。说实话，地表日子里的许多安稳，我是敬的——尽管我看到人类有多么被动。~
= ~可也正因如此，连男性也能大受看重，只要他们能给主母献上非凡的本事。凭我埃林德林头号剑客的位分，我得以享有更多自由，这是任何社会里的卓尔男性都要眼红的。~
EXIT

CHAIN C02ANDRO KVEL-ANDROSZ5-Q-3
~魔索布莱城的卓尔叛徒。确实，我知道他的名声，也知道他的一些来历。~
= ~我们从未见过，可我一向崇敬他的父亲，那位传奇的武器教习扎克纳梵。可惜少有卓尔肯提他的名字，而地表人根本不知道他的传承。不过他的子嗣承了他的教诲与路数，这也……差不多够了。~
= ~卓尔一向认为，要登顶就得丢掉软弱的情感，拥抱我族天生的残忍。扎克纳梵·杜垩登没有，他的儿子也没有，可他们却成了卓尔社会里数一数二的传奇剑客。~
= ~也许正因如此，我也愚蠢地信着一条相似的路。可我有没有机会走上它……那还说不准。~
EXIT

CHAIN IF ~GlobalLT("bd_plot","global",450)
Dead("bdashati")
Global("C0KvelSoDAndroszPostBattle","GLOBAL",0)~ THEN C02ANDRO ANDROSZ-POSTBATTLE
~唉，那一场打得真叫人血脉贲张，等它真正结束，会是一场痛快的胜利。~
DO ~SetGlobal("C0KvelSoDAndroszPostBattle","GLOBAL",1)~
== C02ANDRO ~我的份已尽了，abbil，我相信余下的要靠你。虽说我愿看到最后，可我想，此刻退场对各方都更好。~
== C02ANDRO ~若能，务必保克维拉林平安。我信我们总有再见的一日。~
DO ~EscapeArea()~ EXIT

// ALYTH

CHAIN IF WEIGHT #-1 ~InParty("C0KVEL")
Global("C0KvelSoDAlythTalk","GLOBAL",0)~ THEN BDALYTH KVEL-ALYTH
~克维拉林，我看你已收拾停当，准备走了。~
DO ~SetGlobal("C0KvelSoDAlythTalk","GLOBAL",1)~
== C02KVELJ ~这该叫你称心才是。~
== BDALYTH ~别这样。我与达库尔特商会关系不错。埃克瑟尔要我在你需要时给你落脚处，我照办了，一句怨言也没有。~
== C02KVELJ ~这一点我痛切地清楚。总之……多谢你的慷慨。我定会好好报答你。~
== BDALYTH ~除了那些冲着新菜单来的客人，你可以这样报答我：把那场圣战打垮，让一切恢复如常。一路平安。~
EXIT

// ASHATIEL

I_C_T BDASHATI 5 C0KvelAshatiel
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~用一场决斗来定你那些仆从的生死？自信与傲慢之间，真只隔一线。若只需如此，那这挑战我接着便是。~
== BDASHATI ~从我眼前滚开，暗精灵。我不接受任何人替代神子。单凭你在此，就已显出<PRO_HISHER>品性不端。~
END

// BRIDGEFORT

I_C_T BDKHALIJ 33 C0KvelBridgeFortBetrayal
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~你和那卓尔也没什么两样，为了一时的方便牺牲这么多。~
END

// CLOVISTA

EXTEND_TOP BDCLOVIS 3 #3
+ ~InParty("C0Kvel")~ + ~克维尔，我看你在摇头。你怎么想？~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN C02KVELJ KVEL-CLOVISTA
END

CHAIN C02KVELJ KVEL-CLOVISTA
~在战阵里身高的劣势是补不回来的。我打过太多自以为凭速度与反应就能够着我弱点的矮小对手。他们只是把自己送进了死路。~
DO ~SetGlobal("C0KvelSoDTrainedRecruits","GLOBAL",1)~
== BDCLOVIS ~那、那我不是没辙了？~
== C02KVELJ ~想想这差距给了你什么好处。往低处打，大汉要反应更慢。这一课我也是从经验里学的。~
EXTERN BDCLOVIS 5

// DANINE

EXTEND_TOP BDDANINE 3 #3
+ ~InParty("C0Kvel")~ + ~克维尔，你怎么看？你熟那些更取巧的打法。~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_danine_skill","global",2)~ EXTERN C02KVELJ KVEL-DANINE
END

CHAIN C02KVELJ KVEL-DANINE
~多余的动作太多。这一个反应够快，打得也好。她只须学会怎么逼出机会，再利落出手。~
DO ~SetGlobal("C0KvelSoDTrainedRecruits","GLOBAL",1)~ EXTERN BDDANINE 6

// DARNAS

I_C_T BDDARNAS 5 C0KvelDarnas
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~对自己拼上性命所为何事，全然没有准备。这一切何其荒唐。~
END

// DARSKHELIN

I_C_T BDDARSKH 0 C0KvelDarskhelin
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~灵吸怪……该死。~
== C02KVELJ ~我少有比此刻更痛切地盼自己是错的。~
END

// GARROLD

EXTEND_TOP BDGARROL 1 #3
+ ~InParty("C0Kvel")~ + ~克维尔，你能给这年轻人些老手的指点么？~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_garrold_skill","global",2)~ EXTERN C02KVELJ KVEL-GARROLD
END

CHAIN C02KVELJ KVEL-GARROLD
~……~
DO ~SetGlobal("C0KvelSoDTrainedRecruits","GLOBAL",1)~
== C02KVELJ ~这一个我帮不了。~
== BDGARROL ~*叹气* 我就知道。我没指望了，是不是？~
END
  ++ ~他只是悲观。我信他不是这个意思。~ EXTERN C02KVELJ KVEL-GARROLD-1
  ++ ~你说帮不了他，是什么意思？~ EXTERN C02KVELJ KVEL-GARROLD-1
  ++ ~你听见了。你不是打斗的料。~ EXTERN C02KVELJ KVEL-GARROLD-1

CHAIN C02KVELJ KVEL-GARROLD-1
~从他那些谨慎的出手，我看得出他脑子利，身子却平平。他天生是个法师，不是兵。我有眼力看得出这个，却没本事教他。~
== C02KVELJ ~凭我从前那一行，我对深水城战法师的路数有些了解。他们该来教他。~
EXTERN BDGARROL 3

// HELVDAR

I_C_T BDHELVDA 3 C0KvelHelvdar
== C02KVELJ IF ~InParty("C0Kvel") GlobalGT("C0KvelSoDDrinkTalk","GLOBAL",0)~ THEN ~这话说得太轻了。~
== BDHELVDA ~唉，不管怎样我玩得痛快。你也不算坏，卓尔，看你灌那些瓶子，活像个真矮人。~
== BDHELVDA ~哪天我带你去喝正经的矮人酒，再看谁站着，嗯？~
END

INTERJECT BDHELVDA 26 C0KvelHelvdarPersuade
== C02KVELJ IF ~InParty("C0Kvel") GlobalGT("C0KvelSoDDrinkTalk","GLOBAL",0)~ THEN ~矮人，我猜那也包括你在我们这场友好的拼酒里输给我这件事？~
== BDHELVDA ~那不算！你入局前，我肚里已灌了至少十几杯！~
== C02KVELJ ~我确信，等别的兵听说你趴在地上流口水，他们会同情你的。~
== BDHELVDA ~呃，别这样糟践我的好名声，精灵！行，行……~
EXTERN BDHELVDA 27

// HALASAN

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDTrainingQuest","GLOBAL",1)~ THEN C02KVELJ KVEL-TRAINING
~这教习的操练法子不划算。~
DO ~SetGlobal("C0KvelSoDTrainingQuest","GLOBAL",2)~
== C02KVELJ ~她只拿他们当寻常兵看，辨不出各人的短处。照这样下去，他们上了战场只会成累赘。~
END
  ++ ~克维尔，你操练过兵么？~ EXTERN C02KVELJ KVEL-TRAINING-1
  ++ ~我记得你是个老练的兵。能给这些新兵些指点么？~ EXTERN C02KVELJ KVEL-TRAINING-2
  ++ ~看着。我马上把这帮人调教成形。~ EXIT

CHAIN C02KVELJ KVEL-TRAINING-1
~埃林德林寻常卓尔兵的水准……顶多算差。一个老练的武士，尤其是能把本事有效传下去的那种，任何家族都极看重。~
= ~我在幽暗地域那许多年，当然不是凭相貌或位分才被准许活下来的。~
END
  ++ ~那你能不能给这些人他们需要的指引？~ EXTERN C02KVELJ KVEL-TRAINING-2
  ++ ~你就在后头站着看。我自己来把这些新丁训成熟手。~ EXIT

CHAIN C02KVELJ KVEL-TRAINING-2
~你若看不出教这些短命的准武士该怎么入手，我就按需给些指点。这不会独自赢下这场仗，但他们也许能活下来。~
EXIT

// HESTER

EXTEND_TOP BDHESTER 6 7 #3
+ ~InParty("C0Kvel")~ + ~克维尔，你似乎对这事有想法。~ EXTERN C02KVELJ KVEL-HESTER
END

CHAIN C02KVELJ KVEL-HESTER
~出列，新兵。~
== BDHESTER ~好、好吧……~
DO ~SetGlobal("C0KvelSoDHester","GLOBAL",1)
StartCutSceneMode()
MoveToObject("C0KVEL")
ActionOverride("C0KVEL",ApplyDamage("BDHESTER",1,CRUSHING))
ActionOverride("C0KVEL",SetSequence(SEQ_ATTACK_SLASH))
SetSequence(SEQ_DIE)
Wait(2)
SetSequence(SEQ_AWAKE)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDHester","GLOBAL",1)~ THEN BDHESTER KVEL-HESTER2
~哎哟……~
DO ~SetGlobal("C0KvelSoDTrainedRecruits","GLOBAL",1)~
== C02KVELJ ~你倒了。为什么倒？~
== BDHESTER ~因、因为……你打我。~
== C02KVELJ ~那你为何没对我的出手有反应？~
== BDHESTER ~我……我没料到。~
== C02KVELJ ~你没料到我会打你，因为你料不到我忽然成了你的敌人。于是我不费气力就把你打倒了。~
== C02KVELJ ~你躲在战阵的本能之外太久了，连它认都认不出。若这是真打，你已死了。~
== BDHESTER ~那……那我该怎么办？~
== C02KVELJ ~接纳你的敌人。直面他们。死不会因为你怕它就退开。逃也救不了你。唯有明白这一点，你才真活着。~
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_hester_skill","global",2)~
== BDHESTER ~我——我想我现在懂了。我越是想避死，就越没准备好，伤得也越重。多谢你。我想我能专心了。~
DO ~AddJournalEntry(61857,QUEST)
SetGlobal("BD_TRAINED_HESTER","BD3000",1)
IncrementGlobal("BD_TROOPS_TRAINED","BD3000",1)
MoveToPointNoInterrupt([198.882])
Face(W)~ EXIT

// IRINA

EXTEND_BOTTOM BDIRINA 22
 IF ~IsValidForPartyDialog("C0Kvel")~ THEN EXTERN C02KVELJ KVEL-IRINA
END

CHAIN C02KVELJ KVEL-IRINA
~哼。你操心的就这些？这么点小事就把你慌成这样，你还敢自认是厨房的头儿？~
== BDIRINA ~哦，你懂什么？你不过是新来的下手——别以为你是那种人，我就该怕你！不久之前，我可还是你正经的上头呢！~
== C02KVELJ ~哼。我既逢眼下这般境况，趁我还在此，理该出些力。不过要不要，<CHARNAME>，由你定。~
END
  ++ ~何不呢。你心里有法子么？~ + KVEL-IRINA-1
  + ~Class(LastTalkedToBy,MAGE_ALL)~ + ~我是个有些本事的法师。我许能把一桶寻常酒变成宝石红酒。~ EXTERN BDIRINA 39
  + ~!Class(LastTalkedToBy,SHAMAN)
Class(LastTalkedToBy,DRUID_ALL)~ + ~身为德鲁伊，我懂得这类饮品的性子。我也许能把寻常酒变成宝石红酒。~ EXTERN BDIRINA 39
  + ~Race(LastTalkedToBy,DWARF)~ + ~喝宝石红的人，就算好酒自己灌进他们喉咙，他们也认不出来！让我给你看看什么叫真正的酒。~ EXTERN BDIRINA 36
  ++ ~我们没工夫扯这个。~ EXTERN BDIRINA 27

CHAIN C02KVELJ KVEL-IRINA-1
~酿酒不是我的专长。可我也有些见识，我料我知道的几种酒，合此地人类的口味。对他们大概够满意了。~
== BDIRINA ~你在说什么？什么样的酒？~
== C02KVELJ ~先取一桶寻常红酒，能酿多陈就取多陈。倒进锅里架火。依次加肉桂、糖、泰拉斯香料、黑蜂蜜、干灰耳菇和黑翼菇，每样之间恰好等三分钟。~
== C02KVELJ ~全程保温，最好配那道新做的白鱼。那道菜你该记得。~
EXTERN BDIRINA 37

// KAELET

EXTEND_BOTTOM BDKAELET 3
+ ~InParty("C0Kvel")~ + ~克维尔，你在地表待了些年，有什么指点么？~ EXTERN C02KVELJ KVEL-KAELET
END

CHAIN C02KVELJ KVEL-KAELET
~你定是说笑。我成了的事，单凭它本身不足为据，何况我还多些年的阅历。~
EXTERN BDKAELET KVEL-KAELET-1

CHAIN BDKAELET KVEL-KAELET-1
~你是个*丑*卓尔，是不是？你那位主母是跟兽人怀的你么？~
== C02KVELJ ~……~
== BDUMAR ~凯莱特？你也许不该说这话……那眼神要能杀人……~
== BDKAELET ~……对、对不起。~
== C02KVELJ ~这态度在地表走不远。别人回你的，未必只是一记眼神这般仁慈。在一个你一无所知的险恶世道里，你这份情谊能带你走多远？~
== BDKAELET ~那……~
== C02KVELJ ~话说回来，就算你再等一年、或一百年，这也不会变。你不如趁还来得及，现在就想清楚这趟私奔值不值。~
== BDUMAR ~也许他说得有理……凯莱特，我没法向你保证回去之后我什么事都不会出。我们若真打算逃走、在地表过活，现在就得定下。~
== BDKAELET ~唉。我一向讨厌做决定、担责任。这也是我从没想过当祭司的缘由。我既然定了要走，那就走。~
== C02KVELJ ~好。~
== C02KVELJ ~他们也许能活。成算不算好。可并非不可能。~
== BDKAELET ~好！我们这就走，乌玛尔！~
END
  + ~Global("bd_sdd318_drows_hostile","bd5100",1)~ + ~那就上路吧。追你们的那个战团，我已杀了。~ EXTERN BDKAELET 13
  ++ ~我们还得想好怎么跟沙普尔说。~ EXTERN BDKAELET 11
  + ~CheckStatGT(Player1,13,CHR)~ + ~我不能任你们走进黑暗里去送死。你们得回家去——这是该做的事。~ EXTERN BDUMAR 8
  + ~!CheckStatGT(Player1,13,CHR)~ + ~我不能任你们走进黑暗里去送死。你们得回家去——这是该做的事。~ EXTERN BDUMAR 10
  + ~Global("bd_sdd318_plot","bd5100",3)
Global("bd_sdd318_drows_hostile","bd5100",0)
CheckStatGT(Player1,13,STR)~ + ~不，你们不会。因为你们现在就回沙普尔那儿去。别哭了，去北边的洞窟，她在那里等着。~ EXTERN BDUMAR 8
  + ~Global("bd_sdd318_plot","bd5100",3)
Global("bd_sdd318_drows_hostile","bd5100",0)
!CheckStatGT(Player1,13,STR)~ + ~不，你们不会。因为你们现在就回沙普尔那儿去。别哭了，去北边的洞窟，她在那里等着。~ EXTERN BDUMAR 10
  ++ ~我原指望你说服他们，不是怂恿他们。~ EXTERN C02KVELJ KVEL-KAELET-2

CHAIN C02KVELJ KVEL-KAELET-2
~你问我意见，我给了。我离开幽暗地域时，什么牵绊也没带。他们有没有牵绊，是他们的事。~
EXTERN BDUMAR 10

// KORLASZ

I_C_T2 BDKORLAS 5 C0KvelKorlasz
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~说够了。了结吧。~
END

// LLUIS

EXTEND_BOTTOM BDLLUIS 5
+ ~InParty("C0Kvel")~ + ~克维尔？这事你来办，行么？~ EXTERN C02KVELJ KVEL-THREATEN
END

CHAIN C02KVELJ KVEL-THREATEN
~*叹气* 威吓。~
== C02KVELJ ~当真？~
END
  ++ ~来吧。会好玩的。~ EXTERN C02KVELJ KVEL-THREATEN-1
  ++ ~我信你惯了干这种事。~ EXTERN C02KVELJ KVEL-THREATEN-2
  ++ ~我是说，你若不想……~ EXTERN C02KVELJ KVEL-THREATEN-3

CHAIN C02KVELJ KVEL-THREATEN-1
~我不赞同。不过这样也许能让接下来的打斗少些累人。~
EXTERN BDLLUIS KVEL-THREATEN-4

CHAIN C02KVELJ KVEL-THREATEN-2
~你没说错。我来做，可这招用旧了。~
EXTERN BDLLUIS KVEL-THREATEN-4

CHAIN C02KVELJ KVEL-THREATEN-3
~不。这不难。我只是厌了每回都用同一个套路。~
EXTERN BDLLUIS KVEL-THREATEN-4

CHAIN BDLLUIS KVEL-THREATEN-4
~你们在那边嘀咕什么？~
== BDASERY ~等等。看！那个大个儿，他是个卓——卓——卓……~
== C02KVELJ ~跑，也许还能活。~
EXTERN BDASERY 1

// MORLIS

EXTEND_TOP BDMORLIS 4 #5
+ ~InParty("C0Kvel")~ + ~有话要说么，克维尔？你对这一个似乎格外失望。~ EXTERN C02KVELJ KVEL-MORLIS
END

CHAIN C02KVELJ KVEL-MORLIS
~你让我想起我从前认识的一个武士。招式不同，可每一击背后的那股劲儿是一样的。暴烈、凶蛮、嗜血。~
DO ~SetGlobal("C0KvelSoDTrainedRecruits","GLOBAL",1)~
== BDMORLIS ~那……你是说我像那样？我——我一向觉得杀戮于我自然而然……~
== C02KVELJ ~这一点上，你们也相像。~
== BDMORLIS ~这武士如今在哪？若有可能，我想有朝一日见见他。~
== C02KVELJ ~他死了。我在他那满是怒火的挥砍里寻着破绽，杀了他。~
== BDMORLIS ~哦。~
== BDMORLIS ~我想打。我想杀我的敌人。可我不想死……若有什么更好的打法，我想学。~
== C02KVELJ ~怒气能护你。但只有你把它当作淬过的兵器使，而非闭着眼乱挥。该杀就杀，可永远别忘了你在杀什么，以及它会怎么回应你的刀。~
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_morlis_skill","global",2)~
== BDMORLIS ~那……像这样？~
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",1)
ActionOverride("BDTAIELD",FaceObject("BDMORLIS"))
FaceObject("BDTAIELD")
SpellRES("SPCL321",Myself)
Wait(1)
SetSequence(SEQ_ATTACK_SLASH)
SmallWait(8)
ApplySpellRES("BDMORLIS","BDTAIELD")
Wait(1)
StartDialogNoSet(LastTalkedToBy)~ EXIT

// MYCONIDS

EXTEND_BOTTOM BDMYCELD 8 9
 IF ~IsValidForPartyDialog("C0Kvel")~ THEN EXTERN C02KVELJ KVEL-MYCONID
END

CHAIN C02KVELJ KVEL-MYCONID
~凭我从前在幽暗地域的几次遭逢，我对菌人有几分了解。他们的语言靠身姿与气味表达。这一个怒了。我们想必是踩到了它们族类的安息之地。~
DO ~SetGlobal("C0KvelSoDMyconid","GLOBAL",1)~ COPY_TRANS BDMYCELD 1

EXTEND_BOTTOM BDMYCELD 2
 IF ~Global("C0KvelSoDMyconid","GLOBAL",1)~ THEN EXTERN C02KVELJ KVEL-MYCONID-1
END

EXTEND_BOTTOM BDMYCELD 3
 IF ~Global("C0KvelSoDMyconid","GLOBAL",1)~ THEN EXTERN C02KVELJ KVEL-MYCONID-2
END

CHAIN C02KVELJ KVEL-MYCONID-1
~很快就打紧了。~
EXTERN BDMYCELD 11 

CHAIN C02KVELJ KVEL-MYCONID-2
~它不在意。~
EXTERN BDMYCELD 11 

// NEOTHELID

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDNeothelidDead","GLOBAL",1)~ THEN C02KVELJ KVEL-NEOTHELID
~Oloth pholor udossa...~
DO ~SetGlobal("C0KvelSoDNeothelidDead","GLOBAL",2)~
= ~不，它不可能……不在这儿。~
END
  ++ ~你没事吧，克维尔？~ + KVEL-NEOTHELID-1
  ++ ~你刚才说卓尔语了。这下我知道事情糟了。~ + KVEL-NEOTHELID-1
  ++ ~你知道那是什么么？~ + KVEL-NEOTHELID-2

CHAIN C02KVELJ KVEL-NEOTHELID-1
~这不可能……不会在这种地方……~
EXTERN C02KVELJ KVEL-NEOTHELID-3

CHAIN C02KVELJ KVEL-NEOTHELID-2
~我从未与那样的东西交过手……可我许是见过一只，很久以前……但愿我只是看错了。~
EXTERN C02KVELJ KVEL-NEOTHELID-3

CHAIN C02KVELJ KVEL-NEOTHELID-3
~<CHARNAME>，你若还有半点信仰，就祷告吧。向你的神，或任何神祷告，祷告我眼下的惧怕都是错的。~
EXIT

// TAIELD

EXTEND_TOP BDTAIELD 1 #3
+ ~InParty("C0Kvel")~ + ~克维尔，你觉得能给些指点么？~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_taield_skill","global",2)~ EXTERN C02KVELJ KVEL-TAIELD
END

CHAIN C02KVELJ KVEL-TAIELD
~他不是个差劲的打手，只是缺了那份信念。~
DO ~SetGlobal("C0KvelSoDTrainedRecruits","GLOBAL",1)~
== C02KVELJ ~看着我，半精灵。你看见了什么？~
== BDTAIELD ~这是个陷阱问题么？~
== C02KVELJ ~答我。~
== BDTAIELD ~你……唉，先生。你是个卓尔。~
== C02KVELJ ~对。我是卓尔。我在地表这些年，这世上从没忘了我是个卓尔。可我还是选择在此而战，明知我与众不同，也永远会被看作不同。~
== BDTAIELD ~这……~
== C02KVELJ ~可你不一样。你身边的人类，不会像你看他们那样看你不同。而在战场上，他们唯一怕的，是没法把性命托给你。你要把这副担子压给他们么？~
== BDTAIELD ~不、不，先生。我不想让我任何一个同伴的血沾在我手上……永远不想。~
== C02KVELJ ~那你就知道该怎么做了。~
EXTERN BDTAIELD 6

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21 26 30 34 38 42 46 50 54 58 62 66 70 74 78 82 86 90
IF ~Global("C02_Saved_Kvel","bd4500",0)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 27 31 35 39 43 47 51 55 59 63 67 71 75 79 83 87 91 #1
IF ~Global("C02_Saved_Kvel","bd4500",0)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 #10
IF ~Global("C02_Saved_Kvel","bd4500",0)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 #5
IF ~Global("C02_Saved_Kvel","bd4500",0)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~这卓尔确实是个极有意思的凡人。气力与心志，同类里少有能及。他若肯当个执刑者，会是极好的，甚至不止于此。~
END
++ ~好。我若输了，就把克维尔的契约转给你。~ DO ~SetGlobal("C02KvelSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
++ ~绝对不行。这卓尔于我大有用处。要玩这局，另挑一个。~ DO ~SetGlobal("C02_Saved_Kvel","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02KvelJ ThrixWager2
++ ~克维尔是我的责任，他至今也忠心为我效力。作为回报，我更愿做个诚实的雇主。我们可以赌，但押上我的灵魂。~ EXTERN BDTHRIX 113
++ ~我不玩你这扭曲的把戏，魔鬼。让开，否则付代价。~ EXTERN BDTHRIX 12

CHAIN C02KvelJ ThrixWager2
~别把我的命看得比此地任何人的更重。拿这个下注是愚蠢的赌法，也毫无意义。~
== BDTHRIX ~嗯。我总以为卓尔里有更有意思的角色，肯不惜一切去抓权。也罢，下一个……~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("C02KvelSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Kvel")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~是，再淬炼个几十年，这卓尔会是更可怖的祸患。我已能看见血流成河……~
= ~而且，再加点诱头：一旦开始转为魔鬼，你血里那场恶疾就不成问题了。我这个主子算大方吧？~
END
++ ~那么，克维尔，我看你如今有个新主子了……~ DO ~SetGlobal("C02_thrix_mark_kvel","global",1)~ EXTERN C02KvelJ ThrixWager5
++ ~我先把你的肠子流成一条河，恶鬼！~ EXTERN BDTHRIX 10

CHAIN C02KvelJ ThrixWager5
~滚开，恶鬼。你伸手来取我，收回来的只会是一截血淋淋的断腕。~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

CHAIN IF WEIGHT #-1 ~Global("C02KvelSacrifice","bd4500",1)~ THEN C02KVELJ ThrixTalk0
~……啧。~
END
++ ~这事对不住。我没想到他是认真的。~ DO ~SetGlobal("C02KvelSacrifice","bd4500",2)~ + ThrixTalk1
++ ~那么，走吧。除非你有别的想法。~ DO ~SetGlobal("C02KvelSacrifice","bd4500",2)~ + ThrixTalk1
++ ~我若有别的法子，总不能真把灵魂交出去。希望你明白。~ DO ~SetGlobal("C02KvelSacrifice","bd4500",2)~ + ThrixTalk2

CHAIN C02KvelJ ThrixTalk1
~我没别的可说了。~
= ~我之所以不杀你，唯一因由是你还有用。等那之后，就没什么保证了。~
DO ~SetGlobal("C0KvelSoDAngry","GLOBAL",1)~ EXIT

CHAIN C02KvelJ ThrixTalk2
~比你盼的好些。~
EXTERN C02KvelJ ThrixTalk1

// TIAX

I_C_T BDTIAX 38 C0KvelTiax
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~这个恶徒永不离开，对大家才好。~
END

// TRISTIAN

EXTEND_BOTTOM BDTRISTI 14
+ ~InParty("C0Kvel")~ + ~克维尔。~ DO ~SetGlobal("bd_tristian_vs_npc","locals",1)~ EXTERN C02KVELJ KVEL-TRISTIAN
END

CHAIN C02KVELJ KVEL-TRISTIAN
~那就这样。我就当这是一局寻常的萨瓦棋。~
EXTERN BDTRISTI 15

// TSOLAK

I_C_T BDTSOLAK 2 C0KvelTsolak
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~单按风险算计，这些狂信徒也许仍比这头东西更值得信。~
END

// ULORI

EXTEND_BOTTOM BDULORI 0
 IF ~IsGabber("C0Kvel")~ THEN EXTERN C02KVELJ KVEL-ULORI
END

CHAIN C02KVELJ KVEL-ULORI
~啧。我有些日子没跟巨魔缠斗了。这么个干瘦东西，不该这么难。~
EXTERN BDULORI 3

EXTEND_BOTTOM BDULORI 0
 IF ~IsGabber("C0Kvel")~ THEN EXTERN C02KVELJ KVEL-ULORI-2
END

CHAIN C02KVELJ KVEL-ULORI-2
~别挣了。你们这类也许不怕许多种死法，可你们仍懂得痛。你若再抗，我会毫不犹豫地让你痛。~
EXTERN BDULORI 5

// WILHELMINA

I_C_T BDWILHEL 11 C0KvelWilhemina
== C02KVELJ IF ~InParty("C0Kvel")~ THEN ~等等。让我尝一点。我虽有疑虑，可若连试都不试就丢开，那是蠢。~
== C02KVELJ ~……~
== C02KVELJ ~*呸*！~ [C0KVSF8]
== BDNEERAJ IF ~InParty("NEERA")~ THEN ~唉，这可不是好兆头。也许我该……不，只能是这个。到时候我捏住鼻子就是了！~
== C02KVELJ ~榨出来明显过熟，还带一股恶心的余味。这东西全无食用价值。~
== BDWILHEL ~我听见了！~
END

// WYNAN

EXTEND_BOTTOM BDWYNAN 14
+ ~InParty("C0Kvel")~ + ~是。克维尔，你可会施这道法术？~ EXTERN C02KVELJ KVEL-WYNAN
END

CHAIN C02KVELJ KVEL-WYNAN
~至少这点奥术知识我还有。~
DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("C0_sdd200_kvel","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("C02KVCV1",FALSE)~ EXIT

EXTEND_BOTTOM BDWYNAN 21
IF ~Global("C0_sdd200_kvel","bd2100",1)~ EXTERN C02KVELJ KVEL-WYNAN2
END

CHAIN C02KVELJ KVEL-WYNAN2
~还不到时候。~
EXTERN BDWYNAN 22

EXTEND_BOTTOM BDWYNAN 23
IF ~Global("C0_sdd200_kvel","bd2100",1)~ DO ~SetGlobal("C0KvelSoDKillWraith","GLOBAL",1)
AddXPObject(Player1,3000)
AddXPObject(Player2,3000)
AddXPObject(Player3,3000)
AddXPObject(Player4,3000)
AddXPObject(Player5,3000)
AddXPObject(Player6,3000)
AddJournalEntry(61739,QUEST_DONE)
ClearAllActions()
StartCutSceneMode()
ActionOverride("C0Kvel",MoveToObject("BDWRAITH"))
ActionOverride("C0Kvel",SetSequence(SEQ_ATTACK_SLASH))
ActionOverride("C0Kvel",PlaySound("HIT_02A"))
ActionOverride("C0Kvel",Kill("BDWRAITH"))
ActionOverride("C0Kvel",Wait(1))
ActionOverride("C0Kvel",FaceObject("BDWYNAN"))
ActionOverride("C0Kvel",Wait(2))
AddExperienceParty(2000)
Wait(4)
StartDialogNoSet(Player1)~ EXIT
END

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDKillWraith","GLOBAL",1)~ THEN BDWYNAN KVEL-WYNAN3
~……呃？~
DO ~SetGlobal("C0KvelSoDKillWraith","GLOBAL",2)~
== C02KVELJ ~单凭法师的本能，只能走到这一步。~
== BDWYNAN ~啊。是，嗯……我不是武士，所以——*清嗓* 总之……~
EXTERN BDWYNAN 25

// TALK ABOUT LOVE - AFTER SEEING CROMMUS AND CARLINE

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDLoveTalk","GLOBAL",1)~ THEN C02KVELJ KVEL-LOVE-TALK
~地表人似乎真把永恒的爱当作理想。我常想，这到底是好事么。~
= ~也许人无论死后去了何处，都能从中得些慰藉。不过它带来的苦，似乎与乐一样多。~
DO ~SetGlobal("C0KvelSoDLoveTalk","GLOBAL",2)~
END
  + ~Global("BD_SDD124_DONE","GLOBAL",1)~ + ~似乎足以叫一个灵魂发疯。~ + KVEL-LOVE-TALK-1
  + ~Global("BD_SDD124_DONE","GLOBAL",2)~ + ~到头来还是值的，不是么？~ + KVEL-LOVE-TALK-1
  + ~Global("BD_SDD124_DONE","GLOBAL",3)~ + ~似乎足以叫两个灵魂发疯。~ + KVEL-LOVE-TALK-1
  ++ ~卓尔怎么看“爱”这回事？~ + KVEL-LOVE-TALK-2
  ++ ~别管他们。我们有更要紧的事要想。~ EXIT

CHAIN C02KVELJ KVEL-LOVE-TALK-1
~于我，我盼永远不要被这样缚住。情爱很少是条稳当的路。有人能一路走到头。有人不能。~
= ~尤其说到卓尔，“爱”这回事……更像一种理论，而非寻常的经历。~
EXTERN C02KVELJ KVEL-LOVE-TALK-3

CHAIN C02KVELJ KVEL-LOVE-TALK-2
~要答这个，你得先找一个真正懂得它含义的卓尔，而那是稀罕事。~
EXTERN C02KVELJ KVEL-LOVE-TALK-3

CHAIN C02KVELJ KVEL-LOVE-TALK-3
~我不自认在这事上有权威。可我见过它……见过它怎么被当作兵器使。那兵器能让连卓尔也露出软处。~
END
  ++ ~你认识一个真爱上谁的卓尔？说来听听。~ DO ~SetGlobal("C0KvelSoDJhanStory","GLOBAL",1)~ + KVEL-LOVE-TALK-4
  ++ ~等有空再讲给我听。眼下，先往前走吧。~ EXIT

CHAIN C02KVELJ KVEL-LOVE-TALK-4
~那不是我爱回想的故事。可也许其中某处有可学的教训，尽管我一直没悟出来。也罢。~
END
IF ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02KVELJ KVEL-LOVE-TALK-5A
IF ~!Global("C0KvelSoDFromBG1","GLOBAL",1)~ EXTERN C02KVELJ KVEL-LOVE-TALK-5B

CHAIN C02KVELJ KVEL-LOVE-TALK-5A
~我猜你还记得占·扎尔伊昂？安德罗兹的兄长，那个屠夫。他从前……并不全是你所见的那样。虽说他一向嗜战，可曾有一段日子，我以为他能成个盟友。~
EXTERN C02KVELJ KVEL-LOVE-TALK-6

CHAIN C02KVELJ KVEL-LOVE-TALK-5B
~我在埃林德林那些年，我家族与更强的扎尔伊昂家族有过盟约——虽说这词对卓尔多没什么意思。我有时被派去他们家当执刑者，办些凶险的差事，也熟识了那位主母的几个儿子。~
= ~次子安德罗兹是剑术天才，他把我认作对手，这些年与我比过无数回。可这故事说的是他兄长占。一个嗜血的武士，可有一阵，我明知他不稳，仍以为他能成盟友。~
EXTERN C02KVELJ KVEL-LOVE-TALK-6

CHAIN C02KVELJ KVEL-LOVE-TALK-6
~而他曾有过一个妻子。~
END
  ++ ~“曾”？~ + KVEL-LOVE-TALK-7
  ++ ~别告诉我你跟他妻子扯上了什么。~ + KVEL-LOVE-TALK-8
  ++ ~我不知卓尔也看重婚姻。~ + KVEL-LOVE-TALK-9

CHAIN C02KVELJ KVEL-LOVE-TALK-7
~正如你所猜。~
EXTERN C02KVELJ KVEL-LOVE-TALK-9

CHAIN C02KVELJ KVEL-LOVE-TALK-8
~别荒唐。我这副尊容对寻常卓尔女性没多少吸引力，而强迫他人这种事叫我厌恶。不，出的事与我全无干系。~
EXTERN C02KVELJ KVEL-LOVE-TALK-9

CHAIN C02KVELJ KVEL-LOVE-TALK-9
~卓尔之间的婚姻，各城不同，通常只是个形式。尤其在埃林德林，它常被当作榨取可欲男性的手段，或者更少见些，是从那些不受宠、或太温顺不肯担祭司之责的卓尔女性身上取利。~
= ~它与你所知的一桩买卖并无不同。我知道有些有身份的人类也这样看待。占的妻子，来自一个门第比我家还低的家族，是被送来给他的，好让她那位主母借一门强名的姻亲得些体面。~
= ~我当时正给扎尔伊昂的主母当护卫，亲眼见了那桩提亲。在场的人都看得明白这是什么——被送来的姑娘身架纤细，多病而怯弱，虽不算难看，却缺了多数男性所求的那种成熟之美。她这个人对谁都不曾是件要紧事，只是个达目的的手段。~
= ~至少我们当时都这么想。后来安德罗兹告诉我，出乎众人所料，占极疼爱他的新妻。他虽把她幽闭在他们那座塔里，却常与她相处，她病时照料她，谁若说她位分低、身子弱，他便威胁、毒打。~
= ~也许正是那份脆弱，以某种方式动了占。他一向嫉妒、也不信安德罗兹与我在战阵上的本事，可自打成婚，他倒更常与我们说话、操练。我开始在他身上看见一个可能成盟友的人，一个值得信的人。~
END
  ++ ~可那事并没成真，是么？~ + KVEL-LOVE-TALK-10
  ++ ~我猜是有人杀了他的妻子，毁了你们的关系？~ + KVEL-LOVE-TALK-10

CHAIN C02KVELJ KVEL-LOVE-TALK-10
~对。~
= ~那是占成婚两年之后。我又一次被召去扎尔伊昂家，当他们与温胡伊特家族——一个富有的商人家族——宴席上的护卫。占告诉我们，他妻子有意出席。~
= ~我们劝他把妻子留在内室，一是为她安危，二是免得她的在场成了温胡伊特家人某个恶毒玩笑的由头。他答应了。安德罗兹与我悄无声息地清掉几个探子，没扰了宴席，一切看着都好。我们便松了心。~
= ~就在那些卓尔贵族饮得醉醺醺时，人人听见一声叫脊背发冷的女子尖嚎。安德罗兹与我头一个赶到，看见的却是占妻子的尸身。她是被人从她居处那座塔最高几处之一的阳台上扔下来的。坠落毁了她的容貌，可我们还是认出了她。而她那身子……惨状我不忍说给你听。~
= ~不多时，所有有头脸的人都到了场。眼见的人可以证明我与安德罗兹有完整的不在场凭证，可扎尔伊昂的主母厉声要人把凶手找出来。而占……他看上去像是准备把在场所有人都杀了，有罪无罪都一样。~
END
  ++ ~那凶手找着了么？~ + KVEL-LOVE-TALK-11
  ++ ~太可怕了。后来呢？~ + KVEL-LOVE-TALK-11

CHAIN C02KVELJ KVEL-LOVE-TALK-11
~我们四处搜，最后发现温胡伊特家的长子正要逃出宅院。安德罗兹制住了他。他身上带着一把从某个仆役那儿得来的塔门钥匙。两人都被关押，受刑逼供。~
= ~供词说那长子偷了钥匙，醉醺醺地摸进姑娘的居处，她不肯就范，他便把她扔下去摔死了。等他醒过神来，知道自己完了，就想逃。~
END
  ++ ~那是真的么？~ + KVEL-LOVE-TALK-12
  ++ ~我总觉得，没这么简单。~ + KVEL-LOVE-TALK-12

CHAIN C02KVELJ KVEL-LOVE-TALK-12
~……谁知道呢。~
= ~安德罗兹与我从不信那套说辞。整场宴席我们一滴酒也没沾，而那个醉成那样的长子，绝不可能逃过我们的眼。可三日后，扎尔伊昂家族对温胡伊特家族宣战。后者满门被灭，扎尔伊昂家把他们原有的财富与人脉尽数收下。~
= ~占领的头。我没有参与那场攻杀，可事后安德罗兹全说给我听了。说占如何不存半点怜悯与迟疑地杀尽他能找着的每一个家人，像头疯兽……就在那时，我们都知道，我们已失了他。~
END
  ++ ~他对妻子的爱，把他毁了。~ + KVEL-LOVE-TALK-13
  ++ ~那你觉得，究竟是谁杀了他的妻子？~ + KVEL-LOVE-TALK-13
  ++ ~这一切太骇人，我听不下去了。别再讲了。~ + KVEL-LOVE-TALK-14

CHAIN C02KVELJ KVEL-LOVE-TALK-13
~我一向不爱沉在旧事里。可这桩我从没机会解开的谜，我始终忘不掉。事发一周之内，温胡伊特家与那场攻杀就几乎没人再提，大家都往前走了，只有占……还有他的家族，如今比从前更强。~
= ~我们再没被准许往下查，可我们一向疑心这是安德罗兹与占那位主母的手笔，一场赌局：既打断我们与她长子的信任，又是毁一个敌家、取其所有的绝好手段。~
= ~而一个女人，被一个除了暴力什么都不懂的男人爱着……被人使了又丢，当个棋子。爱于你也许很重，<CHARNAME>，我不会劝你别去追它，可我希望你永远不会被它套上镣铐、任它使唤。~
EXIT

CHAIN C02KVELJ KVEL-LOVE-TALK-14
~随你。只是当心，<CHARNAME>。爱于你也许很重，我不会劝你别去追它，可我希望你永远不会被它套上镣铐、任它使唤。~
EXIT

// POISON TALK - AFTER WAKING UP IN THE WILD

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDPoisonTalk","GLOBAL",1)~ THEN C02KVELJ KVEL-POISON-TALK
~*咳* *咳！*……呃……*啐*~
DO ~SetGlobal("C0KvelSoDPoisonTalk","GLOBAL",2)~
= ~你若……你若看这光景恶心……那我宁愿你转开眼。~
END
  ++ ~怎么了？你怎么咳血？~ + KVEL-POISON-TALK-1
  ++ ~上一战你受伤了？为什么不说？~ + KVEL-POISON-TALK-2
  ++ ~好。我就当什么都没看见。~ + KVEL-POISON-TALK-0

CHAIN C02KVELJ KVEL-POISON-TALK-0
~……我还剩多少时候……？不，我说过不去想这个。~
= ~……走。~
EXIT

CHAIN C02KVELJ KVEL-POISON-TALK-1
~一个……*咳* 久缠的旧疾。不必挂心。~
END
  ++ ~不必挂心？你的血几乎黑得像墨！~ + KVEL-POISON-TALK-3
  ++ ~别拿我当傻子，克维尔。这是中毒的症状。~ + KVEL-POISON-TALK-3
  ++ ~随便吧。缓过来了就赶上来。~ + KVEL-POISON-TALK-0

CHAIN C02KVELJ KVEL-POISON-TALK-2
~不，我的伤都已治过了。这只是一个……~
EXTERN C02KVELJ KVEL-POISON-TALK-1

CHAIN C02KVELJ KVEL-POISON-TALK-3
~……~
= ~我请你别把这事告诉任何人，也别往心里去，<CHARNAME>。~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~你逃到地表时中的那毒，至今还在折腾你，是不是？~ + KVEL-POISON-TALK-4
  ++ ~这我做不到。你的身子要紧。万一你在战阵里又犯起来呢？~ + KVEL-POISON-TALK-5
  ++ ~好，只要到紧要关头它别成了麻烦。~ + KVEL-POISON-TALK-0

CHAIN C02KVELJ KVEL-POISON-TALK-4
~……~
= ~是……另一个卓尔，穆萨吉，很久以前下的毒。我一向小心下毒的路数，连自己的饭都自己做……直到有一天，我的一样材料被换成了一株看着一模一样的草。~
= ~那草本身不致命，可它与我原想配的那类蘑菇，加上我常喝的茶，三样混作一处，就成了慢性的毒……那时我对毒的知识不足，也没准备好。~
= ~等我明白出了什么事，已太迟了。我连下毒的穆萨吉都找不着。我甚至从没弄清他为什么这么做。他在卓尔里一向温顺，我从未料到他会有威胁。也许是扎尔伊昂的主母下的令，也许是我自己家族。到如今，我连查都不想查了。~
END
  ++ ~那你就……认了中毒这件事？连寻解药都懒得去寻？~ + KVEL-POISON-TALK-6
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~我就知道我不是多心。自打我们与萨拉沃克一战，你的身子就在往下走。~ + KVEL-POISON-TALK-6A

CHAIN C02KVELJ KVEL-POISON-TALK-5
~那么，往后你怕是得替我收尸了。~
EXTERN C02KVELJ KVEL-POISON-TALK-4

CHAIN C02KVELJ KVEL-POISON-TALK-6
~“寻解药”？哈……哈哈……！~
EXTERN C02KVELJ KVEL-POISON-TALK-6B

CHAIN C02KVELJ KVEL-POISON-TALK-6A
~是。至于我为何从不提起……~
EXTERN C02KVELJ KVEL-POISON-TALK-6B

CHAIN C02KVELJ KVEL-POISON-TALK-6B
~<CHARNAME>，这类毒少有人知，这些年我学到它没有完滿的解药。不只如此，当我刚觉出症状时，我唯一的念想就是尽量不露痕迹地逃走。~
= ~我本就只凭武艺勉强被容下，这些年又结了许多仇家。他们中若有谁知道我出了什么事，我很可能死得比中毒还惨。~
= ~不过我也没做得多成功。我被标为逃兵，离开城后不久，扎尔伊昂与奥达伊尔两家的武士就来取我的头。我几乎躲过了所有人，可躲安德罗兹，我没有半点指望。~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~于是你与你那位对手有了那场最后的决斗……~ + KVEL-POISON-TALK-7
  ++ ~可你还活着，不是么？血里带着要命的毒，这七年你是怎么活下来的？~ + KVEL-POISON-TALK-9

CHAIN C02KVELJ KVEL-POISON-TALK-7
~那是我与安德罗兹头一回生死相搏，所以我打得比我从前任何时候都拼命。他……对这机会既兴奋，又迟疑——一个能正经而公平地取我性命的机会。~
= ~起初，那毒并没大损我的本事。可随着对决拖长，我感觉到了。到最后，我撑不住安德罗兹。他给我一记让我失能的招，我就要死了。~
END
  ++ ~可他没杀你。~ + KVEL-POISON-TALK-8
  ++ ~那后来呢？~ + KVEL-POISON-TALK-8

CHAIN C02KVELJ KVEL-POISON-TALK-8
~对决到一半，安德罗兹明白了我是怎么回事。也许他不能接受这样一场胜利，可他也担不起放我一条命——那等于违抗主母之令，拿自己的命去换。~
= ~我免了他做这个决断的难处。我早如他一样料到这场躲不掉的决斗，也知道凭本事取胜的机会渺茫，所以早就备了一手，好助我脱身。我用偷来的黑火药和一些别的炼金料做了场爆，再借浓烟与塌方的威势逃走。~
= ~即便那时，我也知道成算很低。我在幽暗地域绝活不下去，所以往前只有一条路：上地表。~
END
  ++ ~你七年前到了地表。带着毒，你怎么活了这么久？~ + KVEL-POISON-TALK-9

CHAIN C02KVELJ KVEL-POISON-TALK-9
~靠这个。~
END
  ++ ~你的徽记？~ + KVEL-POISON-TALK-10
  ++ ~这跟那有什么相干？~ + KVEL-POISON-TALK-10

CHAIN C02KVELJ KVEL-POISON-TALK-10
~你以为我这些年把这小东西带在身边，是出于念旧？~
= ~埃林德林所有贵族的徽记都附了法，能挡些毒。不是全免，可够了。我在地表头些日子，精金甲胄与兵器都在日光下崩解，这枚雕过的黑曜石徽记是我唯一留下的东西。~
= ~只要我带着它，尽管毒顺着我的血漫到全身各处，我也勉强没死。我四处流浪，把刀卖给任何肯出价的、不讲道义的地表人，我受着苦，昏过去许多回，全凭运气才活到醒来……可我活下来了，勉强。可单靠它，也不够。~
END
  + ~Global("C0KvelSoDFromBG1","GLOBAL",1)~ + ~然后你头一回遇上了你先前那位雇主。~ + KVEL-POISON-TALK-12
  ++ ~那靠的是什么？~ + KVEL-POISON-TALK-11

CHAIN C02KVELJ KVEL-POISON-TALK-11
~我在地表头两年研究毒与草药。虽说治不了我这病，我到底学会了配些药汤，压住最重的症状。我能拖长性命，尽管我知道撑不久。~
EXTERN C02KVELJ KVEL-POISON-TALK-12

CHAIN C02KVELJ KVEL-POISON-TALK-12
~后来我走到商人常过的一处路口，痛又压了上来。我在最近的遮蔽处躺下，预备好去死。那个蠢人埃克瑟尔·达库尔特就是这么找着我，用一味只有凭他的财势才买得到的深水城奇药救了我。~
= ~自然，连那也真救不了我的命。我们俩都知道。若是早两年，也许还有个机会，可他为我买来的只是一点额外的时间，而这点时间到今日我都不知道何时会用尽。~
= ~那时我倒盼能杀了他。可我欠他一份情。他给我一份契约：我给他当护卫，他给我庇护，能给多久给多久。我答应了。~
= ~如今我跟着你，只要我还活着，我就会继续在其中寻些小小的意思。~
END
  ++ ~何不去寻个正经的解药？何必放弃？~ + KVEL-POISON-TALK-13
  ++ ~你还剩多少时候？~ + KVEL-POISON-TALK-14
  ++ ~你一点也不怕死？~ + KVEL-POISON-TALK-15

CHAIN C02KVELJ KVEL-POISON-TALK-13
~<CHARNAME>，我连自己还剩多少时候都不知道。运气好的话，以人类的年数计。我若真拼了命要再多活些日子，那大半时间都会耗在独自寻解药上，还未必成。~
EXTERN C02KVELJ KVEL-POISON-TALK-16

CHAIN C02KVELJ KVEL-POISON-TALK-14
~我说不准。痛来得没个准，可如今比五年前密了。运气好的话，我身里也许只剩一段人类寿数的时间。~
EXTERN C02KVELJ KVEL-POISON-TALK-16

CHAIN C02KVELJ KVEL-POISON-TALK-15
~不怕死，是招死快来的一种好法子，<CHARNAME>。可我不知道自己还剩多少时候，我宁愿别浪费它，免得它比我所盼的更短。~
EXTERN C02KVELJ KVEL-POISON-TALK-16

CHAIN C02KVELJ KVEL-POISON-TALK-16
~别为我的境况操心。我可以肯定地说，我能活到看这趟路走完，还能再多活几年。死会比我任何一个精灵同族来得早些，可谁都能面对死的忽然。~
= ~剩下的年头里，我只想寻些能寻的安宁。为一件有意义的事而战，遇见我能全然信任的人，把饭食做得更好，让每一日都更过得去。这便够了。~
END
  ++ ~我还是愿意尽力帮你。~ + KVEL-POISON-TALK-17
  ++ ~“遇见能信任的人”？你把这些都告诉我，是不是说我也算一个？~ + KVEL-POISON-TALK-18
  ++ ~我不认同你的做法，可这是你该做的决定。~ + KVEL-POISON-TALK-19
  ++ ~好。你活你死是你的事。只是你若因这病拖慢了，别让它成了我的麻烦。~ + KVEL-POISON-TALK-20

CHAIN C02KVELJ KVEL-POISON-TALK-17
~你的麻烦已经够多，不必再把我的堆上去。再说，你对这事的操心，凭什么该比我自己更重？~
EXTERN C02KVELJ KVEL-POISON-TALK-20

CHAIN C02KVELJ KVEL-POISON-TALK-18
~你若愿意，就这么想吧。除非你觉得于你有益，否则你没有必要信我。也许我对你说的每一句，都只是精心编出来讨同情的谎。~
EXTERN C02KVELJ KVEL-POISON-TALK-20

CHAIN C02KVELJ KVEL-POISON-TALK-19
~我不是要驳你。你的顾虑，若是真心，并非没有道理——这点我是从与你相类的地表人身上学来的。~
EXTERN C02KVELJ KVEL-POISON-TALK-20

CHAIN C02KVELJ KVEL-POISON-TALK-20
~虽说我盼你永远不落到我这境地，<CHARNAME>，可你会发觉，只为活得长而活得长，也会腻人。当你的时辰被人夺走，剩下的那些就格外金贵。~
= ~好了，这些说够了。虽说我没凭据，可我经验里，说话……*咳*……只会叫这痛犯得更勤。~
EXIT

// SoD Quest

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDKnowsTear","GLOBAL",1)~ THEN C02KVELJ KVEL-CURE-TALK
~……~
DO ~SetGlobal("C0KvelSoDKnowsTear","GLOBAL",2)~
== C02KVELJ ~一派胡言。~
END
  ++ ~你刚听说可能有解药。你连一丝指望都没有么？~ + KVEL-CURE-TALK-1
  ++ ~也许是胡言，可也没道理全不信。我们留个心吧。~ + KVEL-CURE-TALK-2
  ++ ~反正这不干我事。就算我们真找着那样东西，我也未必肯分。~ + KVEL-CURE-TALK-3

CHAIN C02KVELJ KVEL-CURE-TALK-1
~希望是险物。尤其是丢了又捡回来的希望。我看不出有什么理由让它改了我眼下的看法。~
EXTERN C02KVELJ KVEL-CURE-TALK-2

CHAIN C02KVELJ KVEL-CURE-TALK-2
~我会记住我们得知的这些，可我不要太乐观。一切仍如旧。~
EXIT

CHAIN C02KVELJ KVEL-CURE-TALK-3
~随你便。我这一生都是照自己的意思活的，往后有多少日子，也不会改。~
EXIT

CHAIN IF WEIGHT #-1 ~PartyHasItem("C02KVM02")
Global("C0KvelSoDKnowsTear","GLOBAL",2)~ THEN C02KVELJ KVEL-CURE-TALK2
~那么，这就是极乐之泪了。~
DO ~SetGlobal("C0KvelSoDKnowsTear","GLOBAL",3)~
== C02KVELJ ~看不出有什么特别。顶多算个漂亮的小玩意儿。~
END
  ++ ~它也许真有我们听说的那种疗效。你至少不试一下么？~ + KVEL-CURE-TALK2-1
  ++ ~我们找着了。用不用，由你。~ + KVEL-CURE-TALK2-1
  ++ ~既然你似乎不大在意，那就交出来。~ + KVEL-CURE-TALK2-2

CHAIN C02KVELJ KVEL-CURE-TALK2-1
~我本没抱什么指望，可它既摆在眼前，姑且一试。~
= ~大概我把它溶在水里，再把那汤喝下去就行。~
DO ~ClearAllActions()
StartCutSceneMode()
MoveViewObject(Myself,BD_SLOW)
Wait(2)
PlaySound("GAM_07")
Wait(2)
ApplySpellRES("C0KVSP08",Myself)
Wait(2)
FaceObject(Player1)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN C02KVELJ KVEL-CURE-TALK2-2
~哼。拿去。你只顾自己的性子很清楚，不过这于我无甚要紧。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDKnowsTear","GLOBAL",3)~ THEN C02KVELJ KVEL-CURE-TALK3
~……~
DO ~SetGlobal("C0KvelSoDKnowsTear","GLOBAL",4)~
== C02KVELJ ~*吸气* 哈啊……~
END
  ++ ~你觉得怎样？好些了？~ + KVEL-CURE-TALK3-1
  ++ ~怎么样？有作用么？~ + KVEL-CURE-TALK3-1
  ++ ~别吊着我。说句话！~ + KVEL-CURE-TALK3-2

CHAIN C02KVELJ KVEL-CURE-TALK3-1
~你怕是要失望了。~
EXTERN C02KVELJ KVEL-CURE-TALK3-2

CHAIN C02KVELJ KVEL-CURE-TALK3-2
~我仍能觉出骨头里那熟悉的酸痛。我的命仍旧是短的。~
END
  ++ ~那就是没用了？~ + KVEL-CURE-TALK3-3
  ++ ~那个祭司是个骗子！~ + KVEL-CURE-TALK3-3
  ++ ~它总该对你有些帮助。~ + KVEL-CURE-TALK3-4

CHAIN C02KVELJ KVEL-CURE-TALK3-3
~不，并不尽然。~
EXTERN C02KVELJ KVEL-CURE-TALK3-4

CHAIN C02KVELJ KVEL-CURE-TALK3-4
~我觉得……略好了些。比我上回大量内出血前好些。说这是从外层界取来的？我存疑，可这无疑是一味极好的药。看来那祭司倒也没那么糊涂。~
= ~只是于我，正如我素来所惧所料，实在太迟了。这本许能救别人。可惜时光不能倒流。~
END
  ++ ~未必。你也许如今多些时间了。~ + KVEL-CURE-TALK3-5
  ++ ~你说得对。已成的事，就成定局了。~ + KVEL-CURE-TALK3-6
  ++ ~真是浪费。而这世上只剩一个了。~ + KVEL-CURE-TALK3-7

CHAIN C02KVELJ KVEL-CURE-TALK3-5
~这总该改了我一些看法，因为我从“不知几年”变成了——什么，同样加十年，也许？~
EXTERN C02KVELJ KVEL-CURE-TALK3-6

CHAIN C02KVELJ KVEL-CURE-TALK3-6
~我从没真指望被救。这只是个消遣，如此而已。别把发生的事当成什么失败。~
EXIT

CHAIN C02KVELJ KVEL-CURE-TALK3-7
~若少些人把年岁耗在追那些歪扭的奇迹上，这世界也许会显得和善些。~
EXTERN C02KVELJ KVEL-CURE-TALK3-6

// DRINK TALK - AFTER RESTING IN COALITION CAMP

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDDrinkTalk","GLOBAL",1)~ THEN C02KVELJ KVEL-DRINK-TALK
~我们该走了？……请别太大声。*咳* *咳* 我今早眼睛格外敏感，头也是。~
DO ~SetGlobal("C0KvelSoDDrinkTalk","GLOBAL",2)~
END
  ++ ~你昨夜喝了多少？~ + KVEL-DRINK-TALK-1
  ++ ~那些人办拼酒，你竟答应参加，我倒吃惊。~ + KVEL-DRINK-TALK-2
  ++ ~说实在的，你还撑得住。~ + KVEL-DRINK-TALK-3
  ++ ~我们不能等太久。喝点水，快些缓过来，好走。~ + KVEL-DRINK-TALK-0

CHAIN C02KVELJ KVEL-DRINK-TALK-0
~把我的水袋递来。*吞咽* 啊……不是我愿意的境地，可我怕也只能做到这样了。~
= ~说够了。我们有正经事要办。~
EXIT

CHAIN C02KVELJ KVEL-DRINK-TALK-1
~比该喝的多了……嗯。那些兵非要我别走，直到那挑战打完。我不知是什么疯劲让我应了。~
EXTERN C02KVELJ KVEL-DRINK-TALK-4

CHAIN C02KVELJ KVEL-DRINK-TALK-2
~我以为这是个机会，好……灌——*咳* 灌些信任给那些也许要与我并肩的人。看来效果稍过了些。~
EXTERN C02KVELJ KVEL-DRINK-TALK-4

CHAIN C02KVELJ KVEL-DRINK-TALK-3
~卓尔酿的酒，比……呃，比人类喝的烈得多，而我对那些很熟。可就算是这些更淡的酒，我也有个限度。~
EXTERN C02KVELJ KVEL-DRINK-TALK-4

CHAIN C02KVELJ KVEL-DRINK-TALK-4
~说实话，我以为我在那儿只会待一会儿，可他们格外坚持要我留下。也许跟他们大多已醉透了有些干系。~
= ~回过头想，我是把自己放进了不必要的险处，可我想看看在战场之外我会受怎样的接待。看来是个蠢决定。~
END
  ++ ~我不这么想。你似乎跟他们寻着些共同处。~ + KVEL-DRINK-TALK-5
  ++ ~你不怕他们趁你松了防的时候算计你？~ + KVEL-DRINK-TALK-6
  ++ ~所以你跟几个兵喝了一通，如今就一片花团锦簇、阳光灿烂了？~ + KVEL-DRINK-TALK-8

CHAIN C02KVELJ KVEL-DRINK-TALK-5
~也许。我跟他们坐着那么久，居然没一个拔兵器，确是极长的一段时间。~
EXTERN C02KVELJ KVEL-DRINK-TALK-8

CHAIN C02KVELJ KVEL-DRINK-TALK-6
~你以为我没想到这个？幸好，那些我认为可能有威胁的，早在我踉跄回帐之前就趴在地上了。~
EXTERN C02KVELJ KVEL-DRINK-TALK-8

CHAIN C02KVELJ KVEL-DRINK-TALK-7
~哦，我还不至于蠢到真信那个。不过我确实学了些有用的……趁我还记得清发生了什么的时候。~
EXTERN C02KVELJ KVEL-DRINK-TALK-8

CHAIN C02KVELJ KVEL-DRINK-TALK-8
~怪的一族，人类，尤其是那些走战阵之路的。昨日看着还是不共戴天的仇人，第二日就成了酒伴。~
= ~我想我能领会短命之人那股冲动，虽看着蠢。尤其我的来日也许并不差多少。~
EXTERN C02KVELJ KVEL-DRINK-TALK-0

// FINAL TALK - LEAVE BEFORE REST

CHAIN IF WEIGHT #-1 ~Global("C0KvelSoDFinalTalk","GLOBAL",1)~ THEN C02KVELJ KVEL-FINAL-TALK
~仗打完了。我看接下来就是庆功。~
DO ~SetGlobal("C0KvelSoDFinalTalk","GLOBAL",2)~
END
IF ~Global("C0KvelSoDAngry","GLOBAL",1)~ EXTERN C02KVELJ KVEL-FINAL-TALK-ANGRY
IF ~!Global("C0KvelSoDAngry","GLOBAL",1)~ EXTERN C02KVELJ KVEL-FINAL-TALK-HAPPY

CHAIN C02KVELJ KVEL-FINAL-TALK-ANGRY
~不过别以为我忘了你在里头干的事。你走运，我们在这儿，我没法杀你而不受追究。~
= ~我这就要告辞了。若再相见，我也许会把你的头从肩上取下来……可我疑心我懒得费那个心去找你。愿我们永不再见。~
DO ~LeaveParty()
EscapeArea()~ EXIT

CHAIN C02KVELJ KVEL-FINAL-TALK-HAPPY
~我是习战事、处纷争的人。我与太平少有往来，可……也许它并非不可忍。~
END
  ++ ~还想再去跟那些兵喝个烂醉么？~ + KVEL-FINAL-TALK-1
  ++ ~你说得对。是该好好尝尝这胜利。~ + KVEL-FINAL-TALK-2
  ++ ~我也不爱这类场面。~ + KVEL-FINAL-TALK-3
  ++ ~你如今打算做什么？~ + KVEL-FINAL-TALK-4

CHAIN C02KVELJ KVEL-FINAL-TALK-1
~很诱人。可不。~
EXTERN C02KVELJ KVEL-FINAL-TALK-4

CHAIN C02KVELJ KVEL-FINAL-TALK-2
~我不会说这不是该得的。至少于你是。~
EXTERN C02KVELJ KVEL-FINAL-TALK-4

CHAIN C02KVELJ KVEL-FINAL-TALK-3
~我也不。~
EXTERN C02KVELJ KVEL-FINAL-TALK-4

CHAIN C02KVELJ KVEL-FINAL-TALK-4
~这些人的救星，这儿有你的位置。至于我，我想我很快就走。~
END
  ++ ~什么？~ + KVEL-FINAL-TALK-5
  ++ ~可这胜利里也有你一份。~ + KVEL-FINAL-TALK-6
  ++ ~我明白了。至少，我希望你留下赴宴。~ + KVEL-FINAL-TALK-7

CHAIN C02KVELJ KVEL-FINAL-TALK-5
~我没什么兴致去泡在人类胜利的荣光里。那从来不是我的偏好。~
= ~这么说也许突然。我也不想贬了我们同行这段日子的分量。可我在暗处更自在，我一向如此。等这一切过去，也许我们还能再见。~
END
  ++ ~你不必这样把自己撇开。~ + KVEL-FINAL-TALK-8
  ++ ~我乐意。我怎么找你？~ + KVEL-FINAL-TALK-9
  ++ ~好。那就多谢你这一段效力。~ + KVEL-FINAL-TALK-9

CHAIN C02KVELJ KVEL-FINAL-TALK-6
~我不是不知道这个。可人们盼着在这种时刻看见你。他们少见些我，也许更好。~
EXTERN C02KVELJ KVEL-FINAL-TALK-5

CHAIN C02KVELJ KVEL-FINAL-TALK-7
~不，我打算很快就走，等人都散了。~
EXTERN C02KVELJ KVEL-FINAL-TALK-5

CHAIN C02KVELJ KVEL-FINAL-TALK-8
~这不关自在不自在。这就是我的方式，我也宁愿如此。别觉得非得把我掺进那些我只是一小部分的事里。~
EXTERN C02KVELJ KVEL-FINAL-TALK-9

CHAIN C02KVELJ KVEL-FINAL-TALK-9
~这是我头一回在一份单纯契约之外效力。细想起来，这……不算一段坏的经历。若有需要，我不反对再与你共事一回。~
DO ~GiveItemCreate("C02KVM01",Player1,1,0,0)~
= ~到那时候，把这枚钱币交给剑湾境内任何一家酒馆的店主，甚至远到安姆也行。它的来历说来曲折，这会儿我就不拿它的故事烦你了。~
= ~只要我在它的界内——十有八九我会在——它迟早会到我手上。我也会知道来找你。~
= ~那么，我们的往来暂且到此为止，<CHARNAME>。不过我料我们会比预想更早再见。愿你过得好，还有……aluve。~
END
IF ~~ DO ~LeaveParty()
EscapeArea()~ EXIT
IF ~HasItem("C0KVCH01",Myself)~ DO ~SetGlobal("C0KvelImportItem1","GLOBAL",1)LeaveParty()
EscapeArea()~ EXIT