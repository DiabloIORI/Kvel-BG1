BEGIN C0KVDR01
BEGIN C0KVDR02
BEGIN C0KVDR03

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",1)~ THEN C0KVDR02 KVEL-EVENT
~那么，这 iblith 总算觉得该把他那具尸身拖来见比他高的人了。~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",2)~
== C0KVDR03 ~我倒吃惊他竟肯来。~
DO ~StartCutSceneMode()
ActionOverride("C0KVDR01",MoveToPoint([1108.2930])
ActionOverride("C0KVDR01",Wait(1))
ActionOverride("C0KVDR01",MoveToPoint([1124.2930])
ActionOverride("C0KVDR03",Face(E))
ActionOverride("C0KVDR01",Face(W))
ActionOverride("C0KVDR01",Wait(4))
ActionOverride("C0KVDR01",StartDialogNoSet(Myself))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",2)~ THEN C0KVDR01 KVEL-EVENT-2
~安德罗兹。占——占……~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",3)~
== C0KVDR02 ~穆萨吉，你那丢人的败仗之后，总算舔完伤了？~
== C0KVDR03 ~挨了克维拉林一击还能活着回来讲述，这可算不得丢脸。~
== C0KVDR02 ~他不再是克维拉林了。他是……地表狗如今爱怎么叫他，就怎么叫。他连一个卓尔的名字都快不配。~
== C0KVDR03 ~也许，也许不。穆萨吉，跟他交过手之后，你怎么看？~
== C0KVDR01 ~……！他……他……~
== C0KVDR02 ~说，不然我就当你的舌头没用了。~
== C0KVDR01 ~他……仍强。可不同了。不同到我都差点认错。他与我交手时，我几乎觉不出杀意。~
== C0KVDR03 ~可你回来时带着几乎致命的伤，那疤我如今还看得清清楚楚。他可觉得自己的命受了威胁？~
== C0KVDR01 ~不，不是他的命。是我起了好奇。我试着攻他所护的那个人类，他便替我受了那一下。那击碎了他半个头盔。到那时他才狠起来反击。~
== C0KVDR02 ~为一个地表人冒命？若真如此，他离他从前那个人可跌得远了。~
== C0KVDR03 ~嗯……他当真……？~
== C0KVDR03 ~你说你击碎了他的头盔，穆萨吉？在别的那些地表人面前？~
== C0KVDR01 ~是——是，安德罗兹。虽说只露了他一部分脸，可有些人类想必看见了。我相信他因此与铁王座要除掉的那个人搭上了，好保自己的安危。~
== C0KVDR03 ~那棋子都已摆上盘了。他的路会与我们的路缠在一处，不管他愿不愿。~
== C0KVDR03 ~你的份扮得好，穆萨吉。去好好治你的伤。~
== C0KVDR01 ~我……我可以么？~
== C0KVDR03 ~你不信我？~
== C0KVDR01 ~……~
== C0KVDR01 ~我——我这就去。~
== C0KVDR02 ~穆萨吉。~
== C0KVDR01 ~占？你做什么……~
DO ~ClearAllActions()
    StartCutSceneMode()
    StartCutScene("C0KVC07")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",3)~ THEN C0KVDR03 KVEL-EVENT-3
~这一下有什么用处？他活着比死了有用。~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",4)~
== C0KVDR02 ~他又弱又败。没人为他的死哀悼。~
== C0KVDR03 ~也许也没人为他的死庆贺，除了你——凭你那颗简单的脑子，和对杀戮那点兽性的渴。你就不想别的么？~
== C0KVDR02 ~说话留神，安德罗兹。你的位分许你许多特权，可你仍该知道自己的分寸。你不恨他对你从前那位对手干的事么？他下的毒，把克维拉林·奥达伊尔永世害成了一个残人？这可怜虫正是罪魁，万一你忘了。~
== C0KVDR03 ~这就给了你杀他的权？~
== C0KVDR02 ~我手里这件兵器给了我杀他的权。你的也一样——你只是动手太慢。~
== C0KVDR03 ~……~
== C0KVDR03 ~有时候我倒想，克维拉林那话是不是有道理。~
== C0KVDR02 ~祭司们会为这话割你的舌头，甚至更狠。~
== C0KVDR03 ~可谁来指证我说过这话？我眼前只看见一个卓尔，而再过几分钟，也许一个都没有。~
== C0KVDR02 ~你威胁我，安德罗兹？！~
== C0KVDR03 ~也许。要不要拿我的双剑与你那柄心爱的戟试一场，看谁更强，是次子还是长子？赌注是命——这局你接不接，由你。~
== C0KVDR02 ~……~
== C0KVDR02 ~主母对活下来的那个，不管是谁，都不会有好脸色。你……眼下还算是受宠的武器教习。~
== C0KVDR02 ~就当你的命免了——不过克维拉林和他称作盟友的那些，可领不到同样的仁慈。~
== C0KVDR03 ~兄长，你若打算去碰克维拉林和巴尔之子<CHARNAME>，那我真是打心底里可怜你。~
== C0KVDR02 ~多年前，我也许会怕他。如今，他连一无所有都不如。他几乎不配死在这只手里，可这只手照样要取他的命。~
== C0KVDR02 ~至于那神子，<PRO_HESHE>不过一条脚注，比一个寻常<PRO_RACE>还不值一提。~
== C0KVDR03 ~那就这样。去吧。去填你那渴叛徒之血的瘾。~
DO ~StartCutSceneMode()
Wait(2)
ActionOverride("C0KVDR02",EscapeArea())
Wait(5)
Face(SW)
Wait(2)
StartDialogNoSet(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",4)~ THEN C0KVDR03 KVEL-EVENT-4
~唉，克维尔……我不敢指望你会饶我那蠢货兄长一命。也许他若更能收束自己的恶习，可若真如此，他就不是占·扎尔伊昂了。~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",5)~
== C0KVDR03 ~占若成了，而你与<CHARNAME>最后都丢了命……唉，那也就了了。不然……我希望我们很快再见，好叫我的双剑终于再碰上对手。~
== C0KVDR03 ~这可能性不大，可……这些日子我值得盼的事少得可怜。愿你活着，我的老朋友，哪怕只再多活一小会儿。~
DO ~StartCutSceneMode()
StartCutScene("C0KVC08")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",6)~ THEN C0KVDR02 KVEL-EVENT-6
~那我们终于见了，<CHARNAME> 神子。还有……克维拉林。好久不见。~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",7)~
== C0KVELJ ~占。~
== C0KVDR02 ~正是。我看你的眼睛好了，不过身子还弱。~
== C0KVELJ ~哼。地表人一向觉得我比他们料想的壮。被人当作“弱”，倒稀奇地叫人畅快。~
== C0KVDR02 ~克维拉林，你从来就改不了。凭我“扎尔伊昂屠夫”的名头，我只要存在就叫一切与我们贵族之家作对的卓尔胆寒，男女都一样……除了你和安德罗兹。不管我做什么，都镇不住你的怕，也赢不来你的敬。~
== C0KVELJ ~这想必极磨你的自尊。就是如今，我无疑在身子上远不是你的对手，我仍不怕你。~
== C0KVDR02 ~克维拉林，你的傲慢一向是你最可鄙的一块！无家、无格、毫无野心的卓尔……若不是安德罗兹，你早就在有人听说你名字之前就死了。~
== C0KVELJ ~这是真的。你知道。可这不叫你特别。主母们知道。也许埃林德林的卓尔都知。可我还是活了那些年。直到我死。~
== C0KVDR02 ~可惜穆萨吉那毒没把你杀透。~
== C0KVELJ ~而你如今来收这故事的尾，取我的头。占，你没变。无疑等我死了，你——醉在自己的荣光里——会去挑安德罗兹，然后死在他手里。~
== C0KVELJ ~只是你胜不了我。我的盟友也不会倒在你面前。~
== C0KVDR02 ~这个软弱的<PRO_RACE>如今是你的脊梁？那在结果你之前先压碎它，就更叫人痛快。~
== C0KVELJ ~你低估了地表人的强处。也许你该转开身，像我一样在这儿住几年。那也许能改了你。~
== C0KVELJ ~不过有一样你长了。扎尔伊昂家的主母务实，可你一向带着卓尔那典型的傲气。我倒没想到你会屈尊为着什么由头与地表人共事。~
== C0KVDR02 ~铁王座是个好用的器具，好遮住我们在地表的行迹，可我们不大在乎他们那些贪心商人的图谋。萨拉沃克更有意思，可说到底，我只为一桩事来：取克维拉林的命，虽说神子之血也能叫我称心。~
END
  ++ ~你说完了么，卓尔？~ EXTERN C0KVELJ KVEL-EVENT-6-1
  ++ ~要流的是你的血。~ EXTERN C0KVDR02 KVEL-EVENT-6-2
  ++ ~我看我们不能把这事谈开？~ EXTERN C0KVELJ KVEL-EVENT-6-3
  ++ ~克维尔，你准备好打了么？~ EXTERN C0KVELJ KVEL-EVENT-6-4

CHAIN C0KVELJ KVEL-EVENT-6-1
~哪一个？我真盼你指的是我们眼前这个嗓门大的。~
== C0KVDR02 ~啊，你从前那点机锋。我短暂地想念过它。随即就想起了我多厌恶它。~
EXTERN C0KVDR02 KVEL-EVENT-6-5

CHAIN C0KVDR02 KVEL-EVENT-6-2
~一场挑战。好。这场将临的屠戮也许还值得一看。~
EXTERN C0KVDR02 KVEL-EVENT-6-5

CHAIN C0KVELJ KVEL-EVENT-6-3
~问他。说实话，我只是出于本分回应他的怒气。~
EXTERN C0KVDR02 KVEL-EVENT-6-5

CHAIN C0KVELJ KVEL-EVENT-6-4
~我准备好了，可不是出于对对手的恨。说实话，我看这场将临的仗既累人又不必要。~
EXTERN C0KVDR02 KVEL-EVENT-6-5

CHAIN C0KVDR02 KVEL-EVENT-6-5
~克维拉林，你有一处错了。在你这副可怜境地里，此地的胜利毫无荣光。可毁了你，我也就胜了安德罗兹。~
== C0KVDR02 ~然而说到底，我还是会好好尝尝那机会，确保你淹死在自己的血里。~
DO ~ActionOverride("C0KVDR04",Enemy())
ActionOverride("C0KVDR05",Enemy())
Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",8)~ THEN C0KVELJ KVEL-EVENT
~他对血的贪馋一向是他的毛病。他死得也像个傲慢的蠢货，太信自己高人一等，看不清这一点。~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",9)~
= ~那是占·扎尔伊昂。他是扎尔伊昂家的长子，我们先前碰上的那刺客穆萨吉也事此家。~
END
  ++ ~你的兄弟？~ + KVEL-EVENT-1
  ++ ~那我猜你自己的事也了了。~ + KVEL-EVENT-2
  ++ ~他那一处还有别的么？~ + KVEL-EVENT-3
  ++ ~然后呢？~ + KVEL-EVENT-4

CHAIN C0KVELJ KVEL-EVENT-1
~这错容易犯，可不是。我的家族是奥达伊尔。扎尔伊昂家是我对手的家，虽不是我们刚杀的那个。~
EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-2
~不，还没有。占比起真正的威胁算不得什么。那威胁比你想的近。~
EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-3
~需要。~
EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-4
~而且……他还有一个兄弟。最险的那一个。~
EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-5
~……现身吧，安德罗兹。我知道你在看。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVC10")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",9)~ THEN C0KVDR03 KVEL-EVENT-9
~克维拉林，我的老朋友。打得好。甚至说得上精彩。我看这些年夺了你许多力气，可你的本事没丢多少。~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",10)~
== C0KVELJ ~精彩，安德罗兹？躺倒在你眼前的是你的兄长。~
== C0KVDR03 ~哎呀，克维尔。从什么时候起，有哪个卓尔容得下血亲这类琐碎东西来碍我们的决断？~
== C0KVELJ ~别的卓尔，我也许信这话。可你不。你不爱看卓尔的血无端流，不像你兄长。除非你已不再是我认识的那个安德罗兹·扎尔伊昂。~
== C0KVDR03 ~你了解安德罗兹·扎尔伊昂。你的话自然说得对。~
== C0KVDR03 ~……穆萨吉死了。死在他手里。就算我有什么悔，占也是自招其命。~
== C0KVELJ ~我明白了。~
== C0KVDR03 ~不庆贺，也不怨恨？正是凭他那下毒的手，你才失了从前的精气。你若要报仇，我连你都不怪。~
== C0KVELJ ~你也该比这更懂我。~
== C0KVDR03 ~唉，你也许说得对。可岁月确会改人，哪怕是我唯一称作值得一战对手的那个卓尔。从埃林德林最强的剑客之一，变成一个拾荒者，用他能学的一切活命，末了给地表商人当雇佣剑客……~
== C0KVELJ ~我如今的处境想必叫你失望，或者成了个嘲弄的好题目。~
== C0KVDR03 ~全不是。你活下来了，不管用什么法子，我都安心。我唯一的失望，是这几年你只把活命当成了唯一抱定的目的。~
== C0KVDR03 ~除非我错了。也许你还是那个能与我试剑的克维拉林·奥达伊尔？让我看看，老朋友。再与我舞一场。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVC11")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",10)~ THEN C0KVDR03 KVEL-EVENT-10
~好极了，abbil，真好……你若还使着你旧那把剑就更好了，可这已超出我所盼。~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",11)~
== C0KVELJ ~我不为讨你欢喜而战，安德罗兹，再也不了。你最好预备接我下一击，免得丢了持剑的手臂，或者脑袋。~
== C0KVDR03 ~好。再来，我的朋友！~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVC12")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",11)~ THEN C0KVDR03 KVEL-EVENT-11
~我看我们彼此都中了招。我的刀切得深些，可你的耐力一向更强。我猜这算扯平。~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",12)~
== C0KVELJ ~你已经击败过我一次，安德罗兹。你不可能忘了。~
== C0KVDR03 ~不……不，那不算胜。我永不会接受那场闹剧是你本事的顶峰。~
== C0KVELJ ~那会是我此后能给你的、最接近公平的一战。~
== C0KVDR03 ~……告诉我，克维拉林。你为什么如今这般不在意我们的对头之谊？~
== C0KVELJ ~因为它不再打紧了。我永不会变成你盼着再看见的那个人。~
== C0KVELJ ~这几年我不过是在求生，而你还在一心把技艺磨到极致。无可否认，照我如今这样，我不是你的对手，安德罗兹。照我看，我们若再打下去，两个都输。~
== C0KVDR03 ~“两个”？你什么……~
== C0KVDR03 ~……啊。你在刀上抹了毒？利用我对你从前那人的预期？Ne'kalsa，克维尔。真够刁。~
== C0KVELJ ~“刁”说得过了。我不是穆萨吉。我干不出别人对我干的那种事。~
== C0KVELJ ~你若要治，不会留下持久的伤。可你若继续在战阵上耗力……我对你往后还能再享几场仗，不抱乐观。~
== C0KVDR03 ~哈哈哈……好。这一回我认了，不过我希望我们都不把这当作真正的败。~
== C0KVDR03 ~说实话，我满意了，克维尔。我以为这些年会磨掉你从前那个人，连我对你的敬也一并磨掉……可你的刀虽锈了，别的方面，你倒变得极“有意思”。~
== C0KVELJ ~我怕我终究还是会叫你失望……这锈不会轻易消去，我也不再有那份兴致去奉陪你对竞胜的瘾。旧日子过去了。~
== C0KVDR03 ~真的过去了么？我没那么肯定。不过总之，我这就要走了，给你些时间。啊，我还该把我那蠢兄长的尸身带走。~
== C0KVDR03 ~他虽微不足道，可这家长子的下落若不明，主母仍会不快。~
== C0KVDR03 ~至于你，<CHARNAME> 巴尔之子……我看你知道眼前这条路通向何处。说实话，萨拉沃克朝我伸过一只诱人的手，给我一个与你与克维拉林都正经对阵的机会。~
== C0KVDR03 ~那是个诱人的邀约，可我看我终究对这些争权的小打小闹没兴趣，对你那半个兄长想要什么也没兴趣。不过看在我那位对手的份上，我……不盼你输。~
== C0KVDR03 ~Xundus ultrinnan，abbil。安德罗兹·扎尔伊昂向你告别。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0KVC13")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBG1Event","GLOBAL",12)~ THEN C0KVELJ KVEL-EVENT-12
~别担心。他不会回来。~
DO ~SetGlobal("C0KvelBG1Event","GLOBAL",13)~
END
  ++ ~你确定？若萨拉沃克真邀了他……~ EXTERN C0KVELJ KVEL-EVENT-12-1
  ++ ~我们怎么就这么放他走了？~ EXTERN C0KVELJ KVEL-EVENT-12-2
  ++ ~你真给他下了毒？~ EXTERN C0KVELJ KVEL-EVENT-12-2
  ++ ~你们的关系看着没那么坏。~ EXTERN C0KVELJ KVEL-EVENT-12-3
  ++ ~对。走吧。~ EXTERN C0KVELJ KVEL-EVENT-5

CHAIN C0KVELJ KVEL-EVENT-12-1
~安德罗兹就我所知没大变。他若说已洗手不管这事，那就是不管了。我们俩都该自幸他选了这个，而不是另一个。~
EXTERN C0KVELJ KVEL-EVENT-12-4

CHAIN C0KVELJ KVEL-EVENT-12-2
~你若非要听真话，我那些话有一半是虚张声势。安德罗兹若真有杀心，我们两个都会在我那毒还来不及发作之前就死了。~
EXTERN C0KVELJ KVEL-EVENT-12-4

CHAIN C0KVELJ KVEL-EVENT-12-3
~我们……从来只算半个敌人，若还算得上。在幽暗地域，你终究只能靠你自己，可有一个你能全然信任、盼你继续活着的人——不管为着什么由头——那是无价的本钱。~
EXTERN C0KVELJ KVEL-EVENT-12-5

CHAIN C0KVELJ KVEL-EVENT-12-4
~只凭短暂几招，我就看得出他的剑术比我们互称对手那些年精进得非同寻常。说他也许已能与同年的崔斯特·杜垩登比肩，甚至更强，也不算不可信。~
== C0KVELJ ~也许他知道这个。于是他甘愿认输放我一命，抱着某点指望：我哪天还能正经地挑战他。也或者他如今认作对手的是你。不管怎样……~
EXTERN C0KVELJ KVEL-EVENT-12-5

CHAIN C0KVELJ KVEL-EVENT-12-5
~你真正的敌人在等着你，<CHARNAME>。这些死卓尔身上你要什么就拿，只记住它们一见太阳就撑不住。你若觉得有用，用处只在眼前的仗里。~
EXIT