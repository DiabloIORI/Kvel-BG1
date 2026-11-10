BEGIN BC0KVEL

// Ajantis
CHAIN IF ~InParty("Ajantis")
See("Ajantis")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAjantis1","GLOBAL",0)~ THEN %AJANTIS_BANTER% C0KvelAjantis1
~站到我前面，让我随时看得见你，卓尔。~
DO ~SetGlobal("C0KvelAjantis1","GLOBAL",1)~
== BC0KVEL ~骑士，那样我没法在这队里尽我的职。我拒绝。~
== %AJANTIS_BANTER% ~这不是请求。我容忍你在此，只因海尔姆无所不见的目光尚未显出你对盟友有半点恶意，但我已预备着它会变。~
== %AJANTIS_BANTER% ~若不变，那是最好的结果。但在那之前，我在你身边绝不松懈警惕。也就是说，路上你的一举一动，我都得看着。~
== BC0KVEL ~随你。但别指望我为你收束自己，或改了我的行事。我也有理由盯着你，而且我的理由实用得多。~
== %AJANTIS_BANTER% ~*叹气* 海尔姆保佑我。这份担子会格外难……~
EXIT

CHAIN IF ~InParty("Ajantis")
See("Ajantis")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAjantis1","GLOBAL",1)~ THEN %AJANTIS_BANTER% C0KvelAjantis2
~我说过了，卓尔。留在我看得见的地方，随时预备着任何意料之外的举动。~
DO ~SetGlobal("C0KvelAjantis1","GLOBAL",2)~
== BC0KVEL ~……*叹气*~
== BC0KVEL ~容我好奇一问。你是当真盼我背叛这队人，或做出别的恶行，好让你的不信任得到印证么？~
== %AJANTIS_BANTER% ~别拿这般狭隘自私的动机来指控我。你对我们这些“地表人”怎么看都行，可要知道，有人对荣誉与德行不只是嘴上说说。~
== BC0KVEL ~那这算什么？~
== %AJANTIS_BANTER% ~……~
== BC0KVEL ~你的荣誉与信念，我不怀疑。它们是你真正的剑与盾，我敬重。只是你指向它们的那个方向……冲动而低效。也许你该看的不是我，而是你自己。~
== %AJANTIS_BANTER% ~我不需要一个佣兵来训我——你那些操守，来自一个只以“不惜一切代价活命”为唯一追求的社会。~
== BC0KVEL ~好。哲学辩论本就不在我兴趣之内。简单些的东西就已让我满意。吃吧。虽说你似乎想做个不眠的看守，眼下你到底还只是一具凡人的身子。~
== %AJANTIS_BANTER% ~这……这东西是给人吃的？~
== BC0KVEL ~怕有毒？我给你时间慢慢想。它大概比你耐放得多。~
EXIT

CHAIN IF ~InParty("Ajantis")
See("Ajantis")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAjantis1","GLOBAL",2)~ THEN BC0KVEL C0KvelAjantis3
~骑士，我也许错了。~
DO ~SetGlobal("C0KvelAjantis1","GLOBAL",3)~
== %AJANTIS_BANTER% ~我洗耳恭听。~
== BC0KVEL ~自上次辩论，我一直在想。我说你对我的判断出于冲动，这不公平。~
== %AJANTIS_BANTER% ~那么你承认自己另有所图？若真如此……我失望了。我刚开始信你可靠。~
== BC0KVEL ~也许没那么不公平。我说过，我重想了。你说你更愿我能被信任，这话是真的。也许是我一直没给你应得的看重。~
== BC0KVEL ~我们看着不像，可我有多年的阅历，也懂得看人。以你的年纪，你的判断比我预想的更讲理。你把不信任明明白白摆给我看，而不是藏着。这一点，我领情。~
== BC0KVEL ~阿詹提斯·伊尔瓦斯，尽管我们不同，我相信我们能好好配合。~
== %AJANTIS_BANTER% ~这是你的真心话？~
== BC0KVEL ~尽管我认定你这条路通向挣扎与灾祸，我却最愿与直爽坦率的人共事。~
== %AJANTIS_BANTER% ~那我们彼此明白了。你的法子我不尽赞同，可你的用意看来良善。以我的荣誉起誓，从今往后我对你的审视，不会多于对任何其他同伴。但愿我们自此各尽其职，同心协力。~
== BC0KVEL ~可以接受。~
== BC0KVEL ~既然我已得了你的信任，那你吃了黑麦上的干卓尔肉？~
== %AJANTIS_BANTER% ~……吃了，是。很顶饱。~
== BC0KVEL ~那就好。~
EXIT

// Alora
CHAIN IF ~InParty("Alora")
See("Alora")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAlora1","GLOBAL",0)~ THEN %ALORA_BANTER% C0KvelAlora1
~看，克维尔，天塌下来了！当心！~
DO ~SetGlobal("C0KvelAlora1","GLOBAL",1)~
== BC0KVEL ~……~
== %ALORA_BANTER% ~唉，你连头都没抬一下。我听说这笑话对卓尔总灵。~
== BC0KVEL ~半身人，也许你没听说，我在地表已经住了好几年。看来你的脑子转得还不及你手指一半灵巧。~
== %ALORA_BANTER% ~这我受得住。我这双手是剑湾最快的！就算我脑子只有它一半快，那也算机敏了！~
== BC0KVEL ~可我至今一次都没能逮住你。~
== %ALORA_BANTER% ~那几回是让着你！~
EXIT

CHAIN IF ~InParty("Alora")
See("Alora")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelAlora2","GLOBAL",0)~ THEN BC0KVEL C0KvelAlora2
~别再跟着我。~
DO ~SetGlobal("C0KvelAlora2","GLOBAL",1)~
== %ALORA_BANTER% ~不！~
== BC0KVEL ~我的差事要隐秘，要耐性。你这样蹦来蹦去，只会把人引到我身上，这对我们俩都有好几样害处。~
== %ALORA_BANTER% ~可我不把你逗笑，就不想停！~
== BC0KVEL ~那永远不会发生。~
== %ALORA_BANTER% ~我一定会办到！~
== BC0KVEL ~以一个盗贼而论，你简直是“不露声色”的反面。除了假意装出几分好心情，我还得怎样才让你停下？~
== %ALORA_BANTER% ~嗯……你倒让我动了脑子……有了！给我讲个笑话，若把我逗笑，我就随你意离开你多久都行！~
== BC0KVEL ~换个要求。~
== %ALORA_BANTER% ~不！不许收回去！你不是最讲“守信履约”那一套么，快说出来！一个笑话，不然我就接着烦你！~
== BC0KVEL ~*叹气*~
== BC0KVEL ~……~
== BC0KVEL ~你可知，灵吸怪把繁殖用的小蝌蚪植进半身人体内时，蜕变过程只需一半时间，所以他们最中意的猎物就是半身人？~
== %ALORA_BANTER% ~……~
== BC0KVEL ~……~
== %ALORA_BANTER% ~……~
== %ALORA_BANTER% ~我们……真是这样？~
== BC0KVEL ~不是。可你似乎真信了。要骗人，“笑话”就是这么使的，不是么？~
== %ALORA_BANTER% ~不对！笑话该是好笑、让大家都笑的，不是……那种东西！我离你远远的，远到我不再起鸡皮疙瘩为止！~
== BC0KVEL ~总算安静了。~
EXIT

// Baeloth
CHAIN IF ~InParty("Baeloth")
See("Baeloth")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelBaeloth1","GLOBAL",0)~ THEN BBAELOTH C0KvelBaeloth1
~哎呀，你可真是个硕大无比的粗汉，兄弟，是不是？你十分确定我们属于同一个种族？~
DO ~SetGlobal("C0KvelBaeloth1","GLOBAL",1)~
== BC0KVEL ~我倒盼着我们不是。~
== BBAELOTH ~来吧，讲点同族的义气！等这桩苦差成了往事，你愿不愿再签一份契约？我重开黑坑时，正缺个壮实的雇工。~
== BBAELOTH ~那总不会比在祭司们的轭下当差更糟。我一天管三顿饱饭，还有好床。~
== BC0KVEL ~不。~
== BBAELOTH ~*叹气* Oloth。那就这么定了？唉，外交是个缓慢、算计的活。我早晚要叫你松口。~
EXIT

// Branwen
CHAIN IF ~InParty("Branwen")
See("Branwen")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelBranwen1","GLOBAL",0)~ THEN %BRANWEN_BANTER% C0KvelBranwen1
~巨剑配你，克维尔。我见过的精灵里，少有像你这样体格匀称的。~
DO ~SetGlobal("C0KvelBranwen1","GLOBAL",1)~
== BC0KVEL ~你没说错，坦帕斯信徒。以精灵的标准看，卓尔多半瘦小。难得有哪个卓尔能选择像靠灵巧那样靠蛮力。~
== %BRANWEN_BANTER% ~当真。就连北方最强的狂战士，也要为你的天赋眼红。难怪你成了这般了得的战士——只可惜你缺个方向。~
== BC0KVEL ~祭司，你在给自己招人入伙？也许我夸你的好话，是夸错了。~
== %BRANWEN_BANTER% ~战斗之主不以种族或教养论断人，只看对征战狂热与否，而这你有的是。就算你只有半身人的身量，只要你的剑臂不虚，我一样敬你。~
== BC0KVEL ~然后呢？~
== %BRANWEN_BANTER% ~哎呀，再没有别神更合你这处境了，不是么？我看你对蜘蛛女王并无忠心，对你族人祷告的任何神也都没有。你还有什么理由不接受你的天职？~
== BC0KVEL ~我敬你的力量与信念，尽管它于我十分陌生。可你和我认识的任何祭司一样，都患着同一种短视——总以为一切举动都归于某个更大的目的，哪怕是出于无心之人。~
== BC0KVEL ~你我谁对，只有神能定。可我信不了那一套。我只信我的剑和我的见识，别的都不信。而且我从未为此悔过。~
EXIT

// Coran
CHAIN IF ~InParty("Coran")
See("Coran")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelCoran1","GLOBAL",0)~ THEN %CORAN_BANTER% C0KvelCoran1
~啊，克维尔，我黑心的表亲。若我把你这副尊容呈给我相识的任何一位精灵少女，她们准会说你是古往今来最不讨喜的卓尔。~
DO ~SetGlobal("C0KvelCoran1","GLOBAL",1)~
== BC0KVEL ~那我倒算走运，darthiir 的青睐在我心里算不得什么。~
== %CORAN_BANTER% ~我话还没说完！你那粗话我就饶了，因为我已经摸清你的路数——你就是想把我激到闭嘴，可是——~
== BC0KVEL ~够了……若我不了解你，我就会这么说。快说完吧。~
== %CORAN_BANTER% ~“可是”——我在人类地界长途行走这些年，也认得不少眼力好的女子，她们偏爱更魁梧、更粗犷的那一路，满是阳刚气，而你这方面确实有。~
== BC0KVEL ~你想说什么？~
== %CORAN_BANTER% ~我只想说，何不坦然受用上天给你的？你已破了众人对卓尔的一层成见……你可知道，若把你那罕见的魅力使到极处，你能走多远？~
== BC0KVEL ~然后变成你这样滥情、纵欲、毫无自尊的浪荡子？~
== %CORAN_BANTER% ~又来了，又是奚落！难怪我的族人和别人都不大待见卓尔——就连别人伸出的援手，你也偏要不知好歹地打回去。~
== BC0KVEL ~我不知你过的是什么日子，但我毫不怀疑，那不是极度的纵情，就是极度的空虚。~
== %CORAN_BANTER% ~我这辈子确实蒙了不少运气与美色。~
== BC0KVEL ~看在你那点求和的心意上，我勉强给你一分敬意，就直说吧：以我的阅历，与意图不明之人同卧，是一条通向必死的路。~
== BC0KVEL ~就当这是我一句冷淡的劝告，也许哪天能保你不死。~
EXIT

CHAIN IF ~InParty("Coran")
See("Coran")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelCoran1","GLOBAL",1)~ THEN %CORAN_BANTER% C0KvelCoran2
~来吧，克维尔，笑一笑。你总不至于恨我到宁愿一直挂着这张怒脸吧。~
DO ~SetGlobal("C0KvelCoran1","GLOBAL",2)~
== BC0KVEL ~恰恰相反，我一点也不恨你。我只是觉得你这个人可鄙。~
== %CORAN_BANTER% ~那有什么区别？~
== BC0KVEL ~我至少还能认得出你在“试图”讲和，哪怕笨拙又愚蠢。这已超出我对多数精灵的指望。~
== %CORAN_BANTER% ~你倒眼尖。确实，我在讨女人欢心这事上更在行，不过我也信……人类那句怎么说来着，那些稳重人讲的，“要做爱，不要战争”？~
== BC0KVEL ~可你好像只把那话的字面意思学到手了。若我听到的那些话没错，把这算作“在行”，都算抬举。~
== %CORAN_BANTER% ~啊，一击就打在痛处！这话我从没说过，克维尔，但我遇见的所有对头里，你无疑是我最喜欢的。~
EXIT

// Dorn

CHAIN IF ~InParty("Dorn")
See("Dorn")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDorn1","GLOBAL",0)~ THEN %DORN_BANTER% C0KvelDorn1
~卓尔，你在为一桩必败之事而战。~
DO ~SetGlobal("C0KvelDorn1","GLOBAL",1)~
== BC0KVEL ~这话去对<CHARNAME>说。~
== %DORN_BANTER% ~“你”那桩事。你以为给自己立个标准，就让自己成了更高级的东西。那没用。你身边那些短视的蠢货照样会论断你、迫害你。~
== BC0KVEL ~然后呢？~
== %DORN_BANTER% ~丢开这套忠义的把戏。你若想自保，就尽手段去取你所需。挣脱你的镣铐，去找与你同心的人。那才是活法。~
== BC0KVEL ~这法子于你倒挺灵。~
== %DORN_BANTER% ~我只是选错了人。可我学到了一条可贵的教训——没有人能被完全信任。这一回……我会耐心。你是友是敌，还看不出来。~
EXIT

CHAIN IF ~InParty("Dorn")
See("Dorn")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDorn2","GLOBAL",0)~ THEN BC0KVEL C0KvelDorn1
~多恩，你没自己以为的一半聪明。~
DO ~SetGlobal("C0KvelDorn2","GLOBAL",1)~
== %DORN_BANTER% ~下一句话，掂量着说，卓尔。~
== BC0KVEL ~这无疑是年少无知露了头。遭一场背叛，从死里劈出一条血路，你就以为学到了。以为自己变聪明了，知道活命要靠什么。你学到的只有一件事：你死到临头时，你不会知道。~
== %DORN_BANTER% ~你倒觉得自己真开了窍，是不是？那就讲讲你的阅历，也许我再定夺你是否堪为人师。不过我怀疑。~
== BC0KVEL ~省得我们俩白费工夫。你活你死，与我无关。~
EXIT

// Dynaheir

CHAIN IF ~InParty("Dynaheir")
See("Dynaheir")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDynaheir1","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% C0KvelDynaheir1
~你是埃林德林城的人，是不是？~
DO ~SetGlobal("C0KvelDynaheir1","GLOBAL",1)~
== BC0KVEL ~正是。我从没瞒这个。~
== %DYNAHEIR_BANTER% ~我读过关于你故城的记载，那座卓尔商人之城。罗丝、格乌纳杜尔与维瑞恩的教派势力相当，他们彼此的憎恨，只输给真正掌权的商团领主。你那座城，永远陷在权势的争斗里。~
== BC0KVEL ~那已不再是我的城，而权势争斗本就是卓尔的路数。唯一的区别是旗号明着不同。仅此而已。~
== %DYNAHEIR_BANTER% ~这无可否认。可你为谁的旗号而战？~
== BC0KVEL ~换句话说，我的信仰？我没有。~
== %DYNAHEIR_BANTER% ~我问的是你的旗号，不是你的信仰。我明白，有时人须为一个信念而战，却并不相信它。~
== BC0KVEL ~……各有一点。只是从来不在同一个名号之下。~
== %DYNAHEIR_BANTER% ~那我最初对你的印象，看来没错。~
== BC0KVEL ~那是从前。女巫，你若怀疑我的忠心，只须读我签的契约。我没有比这更好的凭证给你。~
EXIT

CHAIN IF ~InParty("Dynaheir")
See("Dynaheir")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelDynaheir2","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% C0KvelDynaheir2
~克维尔，是谁教你掌握了这门技艺？~
DO ~SetGlobal("C0KvelDynaheir2","GLOBAL",1)~
== BC0KVEL ~你把我在奥术上的浅尝称作“掌握”，我受宠若惊。~
== %DYNAHEIR_BANTER% ~你的知识固然未加打磨。除剑术之外，你的本事都像活命的工具那样使——要用，却无所依附。可魔法不是想学就能学成的。~
== BC0KVEL ~不是么？我读过卷轴，记下咒文。需要时，我能隐去身形、削弱他人，我这么做只因它有用。我与这门技艺的关系，何必更进一步？~
== %DYNAHEIR_BANTER% ~你握那把剑时，也一向这般冷淡么？你的功夫练得熟，可我不信。没有缘由，人成不了这般本事。~
== %DYNAHEIR_BANTER% ~从前，你曾把自己献给一门真正的技艺。如今，你用东西只因它方便，仅此而已。~
== BC0KVEL ~而你为此担忧。~
== %DYNAHEIR_BANTER% ~我可怜你。你内里失了什么东西，而你如今的作为，是筑在知道自己再不能取回它的绝望之上。我只希望，你对人世之见不至于同样冷漠。~
EXIT

// Edwin

CHAIN IF ~InParty("Edwin")
See("Edwin")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelEdwin1","GLOBAL",0)~ THEN BC0KVEL C0KvelEdwin1
~法师。~
DO ~SetGlobal("C0KvelEdwin1","GLOBAL",1)~
== %EDWIN_BANTER% ~什么！你要什么，卓尔？我在想事！（在想若……是的，也许……不，等等，该怎么对付你最好。）~
== BC0KVEL ~这种念头最好留在你脑子里，那才是它该在的地方。你若继续从错的方向估量威胁，必会死于一桩你料不到的缘由。~
== %EDWIN_BANTER% ~你说，你说。可我信不过一个来历不明的人，尤其是天生就对魔法这般刀枪不入的。你可以当我多疑，于我，这是务实。~
== BC0KVEL ~随你怎么想。你该庆幸，我的职责里也包括保你活命。否则……~
== %EDWIN_BANTER% ~“否则”？（我就知道！这卓尔在算计我，绝对！我得赶紧想个对策！）~
== BC0KVEL ~……算了。依我看，对你再没有比你自身更危险的敌人。~
EXIT

// Eldoth

CHAIN IF ~InParty("Eldoth")
See("Eldoth")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelEldoth1","GLOBAL",0)~ THEN %ELDOTH_BANTER% C0KvelEldoth
~我觉得有首歌要来了。灵感正降于我，我已看见绝妙的题材。~
DO ~SetGlobal("C0KvelEldoth1","GLOBAL",1)~
== BC0KVEL ~……~
== %ELDOTH_BANTER% ~“古往今来最丑的卓尔”。这准能博几声笑——这个暗精灵辜负了一切对美与优雅的期望，反被诅咒了一身足以叫公牛羞愧的蛮力……~
== BC0KVEL ~……~ [C0KVSF2]
== %ELDOTH_BANTER% ~什——等等，你去哪儿？你该站着听的！~
== %ELDOTH_BANTER% ~回来，马上！你不能一句话不说就走出一场谈话！嘿！~
EXIT

CHAIN IF ~InParty("Eldoth")
See("Eldoth")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelEldoth1","GLOBAL",1)~ THEN %ELDOTH_BANTER% C0KvelEldoth
~我总说，人活一世全看相貌。既然如此，丑成这样，还活着做什么？~
DO ~SetGlobal("C0KvelEldoth1","GLOBAL",2)~
== BC0KVEL ~确实，做什么。~
== %ELDOTH_BANTER% ~啊，这一回你倒跟我说话了？我已做好准备，再听一次你远去的脚步那粗陋声响。~
== BC0KVEL ~我考虑过。可违我本愿，保你活命也在我职责之内，我没必要站在远处把这事弄得更难。不过你若打算唱什么关于我的荒唐歌子，那也许会变。~
== %ELDOTH_BANTER% ~这方面你不必担心。灵感已失。你那样无声地羞辱我之后，我连拿你名字打趣都没什么兴致了。可这“保你”是怎么回事？我唯一需要防的，就是你站得离我太近，把你这副糟糕形象呈给别人看。~
== BC0KVEL ~那你倒愿我离远些。很好。若有一支流矢该中你咽喉，我也无能为力。~
== %ELDOTH_BANTER% ~*叹气* 真是难以忍受。~
EXIT

// Faldorn
CHAIN IF ~InParty("Faldorn")
See("Faldorn")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelFaldorn1","GLOBAL",0)~ THEN %FALDORN_BANTER% C0KvelFaldorn1
~卓尔，我见你采集蘑菇和别的野物。你的手法粗暴，对野地里的其他生灵全无顾惜。~
DO ~SetGlobal("C0KvelFaldorn1","GLOBAL",1)~
== BC0KVEL ~它们得将就。我也得吃。~
== %FALDORN_BANTER% ~而它们在这片地上活得比你久得多，就不配得自己那份食粮？~
== BC0KVEL ~若它们真那么急需，我也寻不着。依我的阅历，这地丰饶得很。~
== %FALDORN_BANTER% ~若对野物的怜惜说不动你，那也许实利能。你下刀的法子既浪费，又是对大地母亲恩赐的轻慢。用一半的气力，你能采到更多可用的。~
== BC0KVEL ~你更懂？……可你当然更懂。我当我在跟谁说话？~
== %FALDORN_BANTER% ~注意你的口气，不然我就不传你这智慧了。把你的刀递给我，我教你正道。~
EXIT

// Garrick
CHAIN IF ~InParty("Garrick")
See("Garrick")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelGarrick1","GLOBAL",0)~ THEN %GARRICK_BANTER% C0KvelGarrick1
~“嗯，嗯—嘀—得—嗯，我们打完了就祷告，输了就跑，日后再战……”~
DO ~SetGlobal("C0KvelGarrick1","GLOBAL",1)~
== BC0KVEL ~吟游诗人。尝尝这个。~
== %GARRICK_BANTER% ~咦，这是什么？某种糖？说起来，我正有点饿了。~
== BC0KVEL ~柠檬汁、蜂蜜和冷松树脂熬成、再晾硬的甜食。我听得出你嗓子发哑——这能稍稍润一润。~
== %GARRICK_BANTER% ~呃……我能确定这东西吃了没事？你这大方得不像你。~
== BC0KVEL ~虽说我不愿承认，你的歌声对鼓舞士气确有要紧……但前提是它比癞蛤蟆叫好听些。~
== %GARRICK_BANTER% ~我就知道你不如外表那么阴沉，亲爱的克维尔！这看着实在可口。*咀嚼* 味道也极好！~
== %GARRICK_BANTER% ~嗯……等等，这是什……我的嘴怎么……舌头没知觉了！~
== BC0KVEL ~冷松树脂里也含一种弱毒，会让嘴麻木，直到人吃出耐受为止。~
== %GARRICK_BANTER% ~唔——唔什么？！~
== BC0KVEL ~我说它能润你嗓子，并没有撒谎。我只是略去了别的可能效果。~
== %GARRICK_BANTER% ~呃！呸！*吐* *吐*~
== BC0KVEL ~要表演就用你的乐器。那鲁特琴勉强能听。你的嗓子陪着它，我宁可少听些。~
== %GARRICK_BANTER% ~天哪！你真是太差劲了！嗯！嗯！~
EXIT

CHAIN IF ~InParty("Garrick")
See("Garrick")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelGarrick1","GLOBAL",1)~ THEN BC0KVEL C0KvelGarrick2
~舌头怎么样了，诗人？~
DO ~SetGlobal("C0KvelGarrick1","GLOBAL",2)~
== %GARRICK_BANTER% ~糟透了，简直糟透了！我到现在吃东西都不复从前的味道！你对我使的那个恶作剧太恶劣了！~
== BC0KVEL ~你又能咬字了。这说明你已全然恢复。也许我该多放些树脂，少放些蜂蜜。~
== %GARRICK_BANTER% ~“全然恢复”？你可知道，不能好好品尝食物的百般滋味，是怎样一种折磨？尤其是你自己——说来怪了——竟能只用大地的出产就做出那样叫人流口水的菜！~
== %GARRICK_BANTER% ~对了，那些甜食怎么*你*吃了就没事？我常见你时常嚼那东西，一点毛病都没有。~
== BC0KVEL ~我说过，耐受是可以养出来的。而且这是我最爱吃的之一。~
== %GARRICK_BANTER% ~好吧……我不能否认它好吃，趁你还尝得出味的时候……~
== BC0KVEL ~再来一个。我也乐得清静。~
== %GARRICK_BANTER% ~呃……不，谢了。我确实动心，可我的舌头是宝贵的本钱，我宁可别再丢了用它的本事。~
EXIT

// Imoen

CHAIN IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelImoen1","GLOBAL",0)~ THEN %IMOEN_BANTER% C0KvelImoen1
~你能给我做点吃的么，克维尔，我饿了！~
DO ~SetGlobal("C0KvelImoen1","GLOBAL",1)~
== BC0KVEL ~等吃饭的时候。~
== %IMOEN_BANTER% ~可我现在就饿！~
== BC0KVEL ~那不关我的事。~
== %IMOEN_BANTER% ~可你总给全队做饭！你做的饭太好吃了，我现在顿顿都把碗刮干净。再说，你跟<CHARNAME>签了契约，就得听命令。~
== BC0KVEL ~<CHARNAME>是我现在的雇主。那张羊皮纸上，我不记得有你的名字。~
== %IMOEN_BANTER% ~有什么区别？我差不多就是<CHARNAME>的姐妹。我一开口，<PRO_HESHE>就会撑我，对吧？一向如此。~
== BC0KVEL ~你对契约懂得极少。去吧，孩子。~
== %IMOEN_BANTER% ~我要饿死了！~
== BC0KVEL ~等你真死透了，再来叫我。~
EXIT

CHAIN IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelImoen2","GLOBAL",0)~ THEN %IMOEN_BANTER% C0KvelImoen2
~克维尔，你怎么从不说卓尔语？~
DO ~SetGlobal("C0KvelImoen2","GLOBAL",1)~
== BC0KVEL ~我说了，你听得懂么？~
== %IMOEN_BANTER% ~不……懂？~
== BC0KVEL ~那就没什么意义。~
== %IMOEN_BANTER% ~可这语言听起来多美。我听过的那些话翻出来多半很可怕，这我信，可我想学！~
== BC0KVEL ~学了又做什么，就算你精通了这门语言？~
== %IMOEN_BANTER% ~至少能跟别的、比你更会说话的卓尔聊。~
== BC0KVEL ~那我更要瞒着这知识，为你自身的安全。~
EXIT

CHAIN IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelImoen3","GLOBAL",0)~ THEN %IMOEN_BANTER% C0KvelImoen3
~哈！“预备——起”！~
DO ~SetGlobal("C0KvelImoen3","GLOBAL",1)~
== BC0KVEL ~……~
== %IMOEN_BANTER% ~喂，我说了，“预备——起”！拔你的剑，你这无赖，今天就把这事了结！~
== BC0KVEL ~问也许白问，可这是什么？~
== %IMOEN_BANTER% ~我当然是要跟你过招！我是你剑术上的徒弟！~
== BC0KVEL ~我不记得有过这样的约定。~
== %IMOEN_BANTER% ~那是因为决定是我下的！从今往后我就是“剑术女师傅爱蒙”，你得教我正经打斗！~
== BC0KVEL ~那你往常对魔法的那股痴迷呢？~
== %IMOEN_BANTER% ~我可以一边学剑一边学魔法！~
== BC0KVEL ~……~
== BC0KVEL ~*叹气* 你若真打算学——尽管我怀疑有何意义——先拿一把正经的剑来挥。你手里那是个块茎，连树枝都算不上。~
== %IMOEN_BANTER% ~什么？真的？哦……你说得对，它有点软。这不成，一碰就断。~
== BC0KVEL ~等等。别扔。~
== %IMOEN_BANTER% ~啊？~
== BC0KVEL ~给我——我有用处。去了皮煮一煮，是炖菜里顶有营养的一样。~
== %IMOEN_BANTER% ~哦。对，我本来就是为这个才弄来的。当然，一直就是这个缘故。哈哈！你不感激我么？~
EXIT

// Jaheira

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelJaheira1","GLOBAL",0)~ THEN %JAHEIRA_BANTER% C0KvelJaheira1
~克维尔，你在地表住了多少年了？~
DO ~SetGlobal("C0KvelJaheira1","GLOBAL",1)~
== BC0KVEL ~这与你何干？~
== %JAHEIRA_BANTER% ~这要紧。~
== BC0KVEL ~……七年，你若一定要知道。~
== %JAHEIRA_BANTER% ~对精灵来说虽短，也够留下些来历了。~
== BC0KVEL ~你打算查我的底细？~
== %JAHEIRA_BANTER% ~人再谨慎也不为过。~
== BC0KVEL ~那你就不该告诉我。~
== %KHALID_BANTER% IF ~InParty("KHALID")~ THEN ~别、别往心里去，她、她对谁都这样。不是因为你是个卓、卓——~
== %JAHEIRA_BANTER% IF ~InParty("KHALID")~ THEN ~谢谢，卡立德，我正要说到那儿。~
== %JAHEIRA_BANTER% ~于我这一行，这是寻常规矩。我本愿信你……不过对卓尔来说，这怕是个陌生的念头。~
== %JAHEIRA_BANTER% ~可你既在这上头住了这么久，最好还没出过什么事，那你该记住：有些事不像幽暗地域里那样。~
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelJaheira2","GLOBAL",0)~ THEN %JAHEIRA_BANTER% C0KvelJaheira2
~埃克瑟尔·达库尔特。~
DO ~SetGlobal("C0KvelJaheira2","GLOBAL",1)~
== BC0KVEL ~那是我前雇主的名，不是我的。~
== %JAHEIRA_BANTER% ~我刚想明白为什么这名字耳熟。他是竖琴手的一个联络人。算是新近的，可我从前听过这名字。~
== BC0KVEL ~我也许有些印象。~
== %JAHEIRA_BANTER% ~你就不知道更多？~
== BC0KVEL ~他的私事从不在我关心之内。~
== %JAHEIRA_BANTER% ~好。至少我知道，竖琴手信得过的人从前替你作过保。这对你是好消息。~
== BC0KVEL ~我不需要什么“好消息”。若得你信任只须同门中人的一句话，那你往后的失望会更大。~
EXIT

// Kagain
CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKagain1","GLOBAL",0)~ THEN %KAGAIN_BANTER% C0KvelKagain1
~呸！<CHARNAME>，下次补给前，咱们得谈谈花在口粮上的金子！我也许吝啬，可这面包的成色，我实在再咽不下一日！呸！我吃过比这更能开胃的泥！~
DO ~SetGlobal("C0KvelKagain1","GLOBAL",1)~
== BC0KVEL ~矮人，若只为堵住你没完的嘟囔，那你就拿这些填肚子吧。算你走运，我采得够多，可以分你些。~
== %KAGAIN_BANTER% ~那“这些”又是什么，卓尔，你若不嫌麻烦就说说？~
== BC0KVEL ~镀金羊肚菌。稀罕，极有滋味。用油煎过，略撒盐再晾干。丢进锅里加水煮，配面包或硬饼吃，或你爱配什么都行。要不，就这么干吃也行。~
== %KAGAIN_BANTER% ~你当我是傻瓜？你们这些黑皮精灵在幽暗地域里拿什么充饥，我许是不懂，可别以为我蠢到会把摆在我面前的东西照吃不误！我怎么知道这些皱巴巴的玩意儿里没塞满要命的毒，嗯？~
== BC0KVEL ~*叹气*~
== BC0KVEL ~……*咀嚼* *嚼*~
== %KAGAIN_BANTER% ~嗯？~
== BC0KVEL ~你……*吞咽*……你当真以为，我比你更爱靠陈年硬面包过活么，矮人？我原当你是个务实的人。~
== BC0KVEL ~你的不适我不大在意，可你若在战阵中饿倒，于我们俩都更糟。~
== %KAGAIN_BANTER% ~那……~
== BC0KVEL ~这提议只在眼下算数。我不能答应你过后还有剩的。~
== %KAGAIN_BANTER% ~呸，去他九层地狱。*嘟囔* *咀嚼*~
== %KAGAIN_BANTER% ~……还不赖。~
EXIT

CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKagain1","GLOBAL",1)~ THEN %KAGAIN_BANTER% C0KvelKagain2
~你……呃……你这满嘴驴粪的混账，卓尔！*打嗝*~
DO ~SetGlobal("C0KvelKagain1","GLOBAL",2)~
== BC0KVEL ~你这又唠叨什么，矮人？~
== %KAGAIN_BANTER% ~那些蘑菇……你对它们有耐受，是不是？承认吧！~
== BC0KVEL ~我早说过，它们没毒。你现在有什么不适，都不关我的事。~
== %KAGAIN_BANTER% ~别拿我当傻子耍！我们吃完了，我就馋起来，去林子里找了一朵。照你说的煮了，打那以后这肚子翻搅了几个时辰！~
== BC0KVEL ~也许你脑子太硬，照不来简单的吩咐。煮到能吃为止，这够简单了，只有孩子或蠢货才会弄错。~
== BC0KVEL ~除非……~
== %KAGAIN_BANTER% ~什么？什么？！~
== BC0KVEL ~你采的是根部带粉红斑的那一种，是不是？~
== %KAGAIN_BANTER% ~是又怎样，嗯？它们还有分别？~
== BC0KVEL ~*叹气* 也许我该先提醒你。也罢，矮人，我寻着空子给你配一副蘑菇毒的解毒剂。~
== %KAGAIN_BANTER% ~你若识相，现在就给我配！我半想要把肚子剖开来止这疼……哦哦哦……~
EXIT

// Khalid
CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKhalid1","GLOBAL",0)~ THEN %KHALID_BANTER% C0KvelKhalid1
~克维尔，你是个能、能干的剑客。~
DO ~SetGlobal("C0KvelKhalid1","GLOBAL",1)~
== BC0KVEL ~这用不着你来告诉我。~
== %KHALID_BANTER% ~这样的本事不、不是不苦练就到手的。你为什么偏要去、去靠魔法和偷盗？~
== BC0KVEL ~你觉得这不划算？~
== %KHALID_BANTER% ~不，我只、只是觉得，把这份天分糟蹋在不专一门上，是浪费。~
== BC0KVEL ~若这能满足你的好奇、堵住你发抖的舌头，那我就直说。很久以前，我受过一桩……身体上的损。剑术的巅峰于我已不可及。就这样。~
EXIT

CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKhalid1","GLOBAL",1)~ THEN %KHALID_BANTER% C0KvelKhalid2
~克维尔，你说你到、到不了剑术的巅峰。依我观、观察，我觉、觉得这话不实。~
DO ~SetGlobal("C0KvelKhalid1","GLOBAL",2)~
== BC0KVEL ~也许不全对。并非不可能。不过……太难，也白费工夫。~
== %KHALID_BANTER% ~我、我不信你一向这么想，不然你根本练不、不出这份本事。是什么变了？~
== BC0KVEL ~卡立德，我问你。假设一场惨祸夺了你的剑臂。~
== %JAHEIRA_BANTER% IF ~InParty("JAHEIRA")~ THEN ~别拿这般惨祸咒他！~
== %KHALID_BANTER% IF ~InParty("JAHEIRA")~ THEN ~请、请，贾希拉。他只是理、理论上一说。~
== %KHALID_BANTER% ~要是我真失、失了手臂呢？~
== BC0KVEL ~你过的是凶险日子。若让你选择：用左手重新练起，或此后改使更简单的兵器。你会怎么做？~
== %KHALID_BANTER% ~虽、虽说我更爱剑，可为了尽责，按、按理我该另选一件兵器活下来。~
== BC0KVEL ~那你就明白了。~
EXIT

// Kivan

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKivan1","GLOBAL",0)~ THEN BC0KVEL C0KvelKivan1
~……~
DO ~SetGlobal("C0KvelKivan1","GLOBAL",1)~
== %KIVAN_BANTER% ~……~
== BC0KVEL ~你若想观摩杀我的最好法子，趁我看不见你时，成算更大。~
== %KIVAN_BANTER% ~挑衅么，黑暗者？~
== BC0KVEL ~我不会对你下手。你于我打算什么，是你的事，我会为自己最大的利益行事。~
== %KIVAN_BANTER% ~跟我说话改变不了什么。~
== BC0KVEL ~一样。这也不会让你正在考虑的事更容易些。可你似乎乐意回应。~
== %KIVAN_BANTER% ~那我就继续沉默，直到我拿定主意。~
== BC0KVEL ~那样正合我意。~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKivan1","GLOBAL",1)~ THEN %KIVAN_BANTER% C0KvelKivan2
~卓尔，你可曾恨过？~
DO ~SetGlobal("C0KvelKivan1","GLOBAL",2)~
== BC0KVEL ~恨是我们饮下的毒酒，直到它毁了我们。自有史以来，卓尔自相残杀的，多过你们这类人杀我们的。这十年来，我尽力不沾。~
== %KIVAN_BANTER% ~你以为这就免了你的罪？你少有傲慢与残忍，这我看得见。可你一样是个杀手。你所谓的活命，是一段夺去许多性命的日子——有些该死，有些不该。~
== BC0KVEL ~……~
== %KIVAN_BANTER% ~你连否认都不否认！你也许不像多数卓尔那样懂得恨，可你的心，一样浸满黑胆汁。~
== BC0KVEL ~你要剖开它验一验么？我不劝你，但你尽管试。~
== %KIVAN_BANTER% ~……~
== BC0KVEL ~……~
== %KIVAN_BANTER% ~不。~
== %KIVAN_BANTER% ~还不到时候。~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKivan1","GLOBAL",2)~ THEN BC0KVEL C0KvelKivan3
~精灵，过了这么久，你竟还没杀我。~
DO ~SetGlobal("C0KvelKivan1","GLOBAL",3)~
== %KIVAN_BANTER% ~复仇驱着我，可我不是怪物。<CHARNAME>需要你，所以我才按住手。~
== BC0KVEL ~复仇……且容我拿这个逗你一逗，希尔斯塔的基万。你可知道我听过多少回这个词，“vharcan”——复仇，在我族人之间说起？~
== %KIVAN_BANTER% ~你敢暗示我与你是一路人！~
== BC0KVEL ~我。症结就在这里，不是么？你连问都不问我是否信“复仇”。~
== BC0KVEL ~不问，因为你看不见我，只看见一个卓尔，只看见一桩你永远不能宽赦的可怕罪行的脸面。所以我怎么说都不打紧。我们永远是仇敌。~
== %KIVAN_BANTER% ~这点你说对了。~
== BC0KVEL ~那就再没什么可说的了。~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelKivan1","GLOBAL",3)~ THEN %KIVAN_BANTER% C0KvelKivan4
~你说你不信复仇。我不信这话。照你自己的说法，你的族人互相残杀多过任何人。你以为我会信你从没被冤屈、被背叛过？~
DO ~SetGlobal("C0KvelKivan1","GLOBAL",4)~
== BC0KVEL ~我被背叛过。极惨。它夺走了我曾是的一切。~
== %KIVAN_BANTER% ~那你不是骗子，就是愚人。活人受了那样的冤屈，没有不寻复仇的。~
== BC0KVEL ~一个因背叛而死的卓尔，报不了任何仇。~
== %KIVAN_BANTER% ~可你还活着。~
== BC0KVEL ~我确实还活着，眼下是。但这不会长久。缘由你不必知道，希尔斯塔的基万，可无论你杀不杀我，我都很快会死。我已多年感觉不到冥思的安适，每晚睡下都清楚，自己也许不会再醒。~
== BC0KVEL ~我知道，若我不是你的仇敌，你会劝我在倒下之前，把那截断我性命的恶徒揪出来，送进魔索深渊，只为那一线快意。~
== BC0KVEL ~可我在其中看不出多少满足。那会累人，也白费工夫。我只想在余下的年月里找到我的目的。所以，你若想在我最受折磨的时候了结我……现在就把你的箭穿进我的心。~
== BC0KVEL ~没人会拦你。~
== %KIVAN_BANTER% ~……~
== BC0KVEL ~怯了，不敢放？还是……~
== %KIVAN_BANTER% ~……你说的，我会想。~
EXIT

// Minsc
CHAIN IF ~InParty("Minsc")
See("Minsc")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelMinsc1","GLOBAL",0)~ THEN %MINSC_BANTER% C0KvelMinsc1
~克维尔，我的同伴，你挥那口巨剑时，明斯克觉得身边并肩的不是一个暗精灵，而是拉舍曼无畏的狂战士！~
DO ~SetGlobal("C0KvelMinsc1","GLOBAL",1)~
== BC0KVEL ~游侠，你在我招式里感到怒气了？~
== %MINSC_BANTER% ~不，不是怒气！是勇武！是那种叫邪恶在他们那双不甚合脚的靴子里发抖的勇武！唯一能让它更完美的，是一声嘹亮的战吼！就像——~
== BC0KVEL ~“戳他们的眼”。是，我知道。~
== %MINSC_BANTER% ~何不自己也编一个，我的朋友。很简单。只要想着邪恶身上你最想踹的那一处，然后放声吼出来！他们会缩起来，护住你扬言要打的地方，吓得发抖！~
== BC0KVEL ~我不这么想。阵上一个嚎叫的战士是宝贵资产。再多一个，只会成了乱子。~
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelMinsc2","GLOBAL",0)~ THEN BC0KVEL C0KvelMinsc2
~游侠，你身边这位同伴真奇特。~
DO ~SetGlobal("C0KvelMinsc2","GLOBAL",1)~
== %MINSC_BANTER% ~你说布布？我们是最了不起的同伴！~
== BC0KVEL ~我还没见他为你这份力量出过什么力，不过也许那正是他的长处。若他有那种猫的天性——~
== %MINSC_BANTER% ~嘘！别在布布听得见的地方提那个词……那个以“猫”开头的，克维尔。你会把它吓得发抖，明斯克靠在我甲里歇息时就会痒得难受！~
== BC0KVEL ~……也许我高看了你。~
EXIT

// Montaron
CHAIN IF ~InParty("Montaron")
See("Montaron")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelMontaron1","GLOBAL",0)~ THEN %MONTARON_BANTER% C0KvelMontaron1
~以这么个粗蛮模样的精灵来说，你倒挺会藏。~
DO ~SetGlobal("C0KvelMontaron1","GLOBAL",1)~
== BC0KVEL ~保持让人捉摸不透，自有其价值——不像你。~
== %MONTARON_BANTER% ~若哪天安生日子磨得你心烦，就像你们这类人总有的那样，我倒有几个人乐意引荐给你。~
== %XZAR_BANTER% IF ~InParty("XZAR")~ THEN ~且慢，蒙提，我们不是立过规矩，不许擅自招人么？还要我再提醒你一回？~
== %MONTARON_BANTER% IF ~InParty("XZAR")~ THEN ~规矩是*你*立的。我可一个字也没说要照办。~
== %XZAR_BANTER% IF ~InParty("XZAR")~ THEN ~立规矩之前，前前后后有三人想趁我睡着杀我！幸亏我睡觉睁着眼，嘿嘿……他们死得可真好。再一想，我兴许也不介意。~
== BC0KVEL ~我介意。很介意。~
== %MONTARON_BANTER% ~肚子太软？我倒没料到你会这样。~
== BC0KVEL ~任何一个把眼前这些人看作值得投本的团体，我想不出能有什么本事。~
EXIT

CHAIN IF ~InParty("Montaron")
See("Montaron")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelMontaron2","GLOBAL",0)~ THEN %MONTARON_BANTER% C0KvelMontaron2
~你差点把我手打断，卓尔。今早起来还在疼。~
DO ~SetGlobal("C0KvelMontaron2","GLOBAL",1)~
== BC0KVEL ~你若再敢在做饭时乱插手，下回我就把它剁下来丢进锅里。~
== %MONTARON_BANTER% ~我只是说，要是搁一大勺猪油进去，会更肥美。~
== BC0KVEL ~我本想跟你辩一辩，可我疑心你对滋味的赏识，还不如对血的那点原始嗜好。~
== %MONTARON_BANTER% ~别忘了骨髓。我就爱直接从骨头里吸。~
EXIT

// Neera
CHAIN IF ~InParty("Neera")
See("Neera")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelNeera1","GLOBAL",0)~ THEN %NEERA_BANTER% C0KvelNeera1
~嘿，克维尔，我有个问题。卓尔是不是天生特别抗魔法？~
DO ~SetGlobal("C0KvelNeera1","GLOBAL",1)~
== BC0KVEL ~你自己已见过凭证。~
== %NEERA_BANTER% ~是啊。魔法飞弹打在你身上就灭了，火球你当早饭吃。太狠了！有时候真替那些想杀我们的法师难过……~
== %NEERA_BANTER% ~总之，直说吧。我能拿你练几道法术么？要知道，我若在施法时对别人暴走，我会很难过。可换了你……~
== BC0KVEL ~不。~
== %NEERA_BANTER% ~可是……~
== BC0KVEL ~……~
== %NEERA_BANTER% ~可——可是再一想，我觉得这会坏了我们之间的情分。对朋友施法，多可怕的事，对吧？嘻嘻！~
EXIT

CHAIN IF ~InParty("Neera")
See("Neera")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelNeera2","GLOBAL",0)~ THEN %NEERA_BANTER% C0KvelNeera2
~呃。~ [CAS_M05]
DO ~SetGlobal("C0KvelNeera2","GLOBAL",1)
ReallyForceSpellRES("C0KVSP02","C0KVEL")~
== %NEERA_BANTER% ~对不起我发誓那不是故意的！~
== BC0KVEL ~……~
== BC0KVEL ~*叹气*~
== BC0KVEL ~再说一遍。慢些，好让我听懂。~
== %NEERA_BANTER% ~克维尔，我发誓那不是故意的。~
== BC0KVEL ~我没耐心猜谜。说重点。~
== %NEERA_BANTER% ~你，呃，也许该照照镜子。~
== BC0KVEL ~……~
== BC0KVEL ~我料这效果会消退。~
== %NEERA_BANTER% ~通、通常一两天就没……等等，你不生气？~
== BC0KVEL ~我见过你那些不定的暴走能闹出什么。比起来，这算是福气。~
== %NEERA_BANTER% ~嘿，你人还真不坏。*低声* 我就略去那一段：有时候你的头发会保持那样好几个月……~
EXIT

// Quayle
CHAIN IF ~InParty("Quayle")
See("Quayle")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelQuayle1","GLOBAL",0)~ THEN %QUAYLE_BANTER% C0KvelQuayle1
~天哪，你可真是个壮实的精灵。长出这一身肌肉，得从你脑子里榨走多少东西？~
DO ~SetGlobal("C0KvelQuayle1","GLOBAL",1)~
== BC0KVEL ~你若对“长成”是这个理解，那我很怀疑你生来有没有脑子。~
== %QUAYLE_BANTER% ~你想打一架么，大块头？斗——斗智！我是说斗智，当然。~
== BC0KVEL ~我看这没什么意义。你更聪明。这我看得出来。~
== %QUAYLE_BANTER% ~是吗？当真？哈！对啦！我就知道你脑子里到底还是有点东西。你在我这儿算个好人。~
== BC0KVEL ~这么个头脑简单的东西，真容易摆弄……~
== %QUAYLE_BANTER% ~你说什么？~
== BC0KVEL ~没什么。~
EXIT

// Rasaad
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelRasaad1","GLOBAL",0)~ THEN BC0KVEL C0KvelRasaad1
~秃头的那个。~
DO ~SetGlobal("C0KvelRasaad1","GLOBAL",1)~
== %RASAAD_BANTER% ~朋友，我更愿你称我的名字，可你有什么事——~
== %RASAAD_BANTER% ~——呃啊？！~ [HIT_03C]
== BC0KVEL ~了得。~
== %RASAAD_BANTER% ~你是想取我的命？我若没及时抬臂，那可不是轻伤。~
== BC0KVEL ~若真如此，我就用我正经的兵器了。~
== %RASAAD_BANTER% ~若——呃……你若只想换几招，只须开口。我很乐意奉陪。偷袭是多余的。~
== BC0KVEL ~试一试人对突袭的本能反应，也能说明许多事。~
== %RASAAD_BANTER% ~有道理。但愿我没让你失望。~
== BC0KVEL ~你的力气可佩，虽不算出奇。速度也是，不过已远高于我对人类的预期。让你与众不同的，是别的什么，我一时说不清……~
== %RASAAD_BANTER% ~你若真好奇，我不反对当面演给你看。我毫不怀疑你片刻就能学会。~
== BC0KVEL ~我看不必。你有你的路数，我有我的。不过从陌生的打法里能学的东西很多。但愿你预备好往后还有这样的交手。~
EXIT

// Safana
CHAIN IF ~InParty("Safana")
See("Safana")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSafana1","GLOBAL",0)~ THEN %SAFANA_BANTER% C0KvelSafana1
~我一向说，那些高高在上的精灵，不懂得欣赏更魁梧、更有阳刚气的形貌之美。~
DO ~SetGlobal("C0KvelSafana1","GLOBAL",1)~
== BC0KVEL ~恰恰相反，这于我有好处。~
== %SAFANA_BANTER% ~是，是，不惹眼，这价值我懂。我可不止有一张漂亮脸蛋，你知道的。可这多浪费。~
== BC0KVEL ~我可以凭天生的力气与身量压过那些我这等瘦小族人苦战的对头。我看不出浪费在哪儿。~
== %SAFANA_BANTER% ~你*满脑子*就只有打斗？从不曾想过你这副体格还能给你别的什么好处？漂亮的精灵一铜板一打。你才稀罕。~
== BC0KVEL ~你在白费口舌。~
== %SAFANA_BANTER% ~我从不浪费什么，亲爱的。我只是需要时间，从你甲胄的缝里钻进去。~
EXIT

// Shar-Teel
CHAIN IF ~InParty("Sharteel")
See("Sharteel")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSharteel1","GLOBAL",0)~ THEN %SHARTEEL_BANTER% C0KvelSharteel1
~我看明白了，卓尔。你的身高，配上巨剑，拿来压过对手。可怜，这是在补偿什么。~
DO ~SetGlobal("C0KvelSharteel1","GLOBAL",1)~
== BC0KVEL ~随你怎么想。你照样一次次尝败——依我看，需要补偿的是你。~
== %SHARTEEL_BANTER% ~你的傲慢只会让人更想把你的脸按进泥里！~
== BC0KVEL ~那就动手。趁我不备打我，或用你乐意的任何花招。我疑心没有我没见过的。~
== %SHARTEEL_BANTER% ~混账！你就这么看我？你这恶心的自负，好像我怎么都越不过你？正因如此，我定要亲手杀了你。~
== BC0KVEL ~等你真赢了我，再当你这话有分量。~
EXIT

CHAIN IF ~InParty("Sharteel")
See("Sharteel")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSharteel1","GLOBAL",0)~ THEN %SHARTEEL_BANTER% C0KvelSharteel1
~我*一定*会赢你，卓尔。~
DO ~SetGlobal("C0KvelSharteel1","GLOBAL",1)~
== BC0KVEL ~空话没什么分量。等你证出来了，我再认。~
== %SHARTEEL_BANTER% ~别以为那不可能。等我寻着你的弱点，你会疼得在我脚边爬。~
== BC0KVEL ~尽管试。你若替我寻出一处弱点来补，我还感激你。~
== %SHARTEEL_BANTER% ~你就以为我的弱点你都摸清了？你懂什么，男性？~
== BC0KVEL ~你的弱点，就是让那些转眼即逝的情绪左右你的本事。你若有法子收束那股嗜血的心气，我看你能赢我。~
== %SHARTEEL_BANTER% ~别装作懂我。我要杀你，只因你叫我厌恶。如此而已。~
EXIT

// Skie
CHAIN IF ~InParty("Skie")
See("Skie")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSkie1","GLOBAL",0)~ THEN %SKIE_BANTER% C0KvelSkie1
~昨夜那锅干酪锅真是好极了，克维尔！我从没想过有人能把啃硬饼变成一桩享受。~
DO ~SetGlobal("C0KvelSkie1","GLOBAL",1)~
== BC0KVEL ~记住那个味道吧。要再凑齐再做那顿饭的材料，可不容易。~
== %SKIE_BANTER% ~我倒想问，你有无意到我的庄园里当差？私下说，我们那老厨子的菜色，我早吃腻了，只是一直没说。你若露一手本事，我信你一分钟内就能接下他的活！~
== BC0KVEL ~不。~
== %SKIE_BANTER% ~哎呀，来吧。这不就是你想要的安稳日子？你再不必担心卓尔找不着活干。要说服我父亲是难些……不过我想我能办到。~
== BC0KVEL ~于是我就能得一张暖床、一处独静的房间，远离战乱，只要做一桩简单的差事，就再不愁饥寒？~
== %SKIE_BANTER% ~对，正是！~
== BC0KVEL ~那答我一个问题，我也许会考虑接下，丝琪·银盾。那你当初又为什么走？~
== %SKIE_BANTER% ~我，呃……~
== %SKIE_BANTER% ~好吧，说得好。~
== BC0KVEL ~我们活着，除了安适，还有别的东西。我知道我的是什么，而我看你还没找着你的。先自己想明白，再来探别人的日子。~
EXIT

CHAIN IF ~InParty("Skie")
See("Skie")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelSkie1","GLOBAL",1)~ THEN %SKIE_BANTER% C0KvelSkie2
~克维尔，我一直在想你说的那话。你说得对。活着不只是图个安适。~
DO ~SetGlobal("C0KvelSkie1","GLOBAL",2)~
== BC0KVEL ~嗯。~
== %SKIE_BANTER% ~什么？不夸我一句？我明白你想对我说什么了！~
== BC0KVEL ~我若说得再明白些，就得给你查一查脑子是不是长僵了。~
== %SKIE_BANTER% ~哦，别这么无礼。我很感激你的，你知道。我知道我得弄清楚自己在这儿做什么。因为我想在这儿。我只是还没找到话说明为什么。~
== BC0KVEL ~那得你自己去学。~
== %SKIE_BANTER% ~别担心。我学得快。~
== %SKIE_BANTER% ~不过我还是想雇你当我的厨子。你把我惯坏了！~
== BC0KVEL ~这可算不得我的功劳。你若觉得不妥，我今晚就从我们的饭里扣下你那份。~
== %SKIE_BANTER% ~不！你不能这么对我！~
EXIT

// Tiax

CHAIN IF ~InParty("Tiax")
See("Tiax")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelTiax1","GLOBAL",0)~ THEN %TIAX_BANTER% C0KvelTiax1
~你！卓尔，泰亚克斯命你——~
DO ~SetGlobal("C0KvelTiax1","GLOBAL",1)~
== BC0KVEL ~不。住口。~
== %TIAX_BANTER% ~好大的胆子！你竟敢叫泰亚克斯闭嘴——他的话可是带着天国的分量！~
== BC0KVEL ~这些年我学到，连愚人的话也能说明许多。你是例外——连愚人都不如。我需要知道你的事，你头五个字里就已全露了，甚至用不着五个。~
== %TIAX_BANTER% ~伟大的泰亚克斯，他的话字字都值同等重量的金子！~
== BC0KVEL ~……~
== BC0KVEL ~……把你自己刚说的话好好想想，你这可笑的蠢货。~
== %TIAX_BANTER% ~呃……话到底有多重来着？我得想想……~
== BC0KVEL ~是。多想，若你还有那个能耐，少说。这场谈话到此为止。~
EXIT

// Viconia
CHAIN IF ~InParty("Viconia")
See("Viconia")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelViconia1","GLOBAL",0)~ THEN %VICONIA_BANTER% C0KvelViconia1
~Dos lueth usstan phuul abban, wun nindol ssussun kul'gobsula.~
DO ~SetGlobal("C0KvelViconia1","GLOBAL",1)~
== BC0KVEL ~……~
== %VICONIA_BANTER% ~Waela jaluk?~
== BC0KVEL ~……~
== %VICONIA_BANTER% ~我们非得用这语言交谈么？我难得能用上母语，而我的谈话对象却乐于装聋作哑。~
== BC0KVEL ~你若想借魔索布莱城的天然尊卑来过瘾，我奉陪不了。~
== %VICONIA_BANTER% ~我不是罗丝的祭司，也不在重演旧位分里寻安适。你看见法袍和蛇鞭了么，男性？我只想确保两个同源的弃儿之间有一场天然同盟。~
== BC0KVEL ~“天然同盟”？维康妮亚，你若真信自己说的话，那你真是忘了做卓尔是什么滋味——而我不觉得你蠢到这个地步。你要的是一个供你使唤的本钱，如今正用甜嘴来讨。~
== BC0KVEL ~这透明得叫人恶心。~
== %VICONIA_BANTER% ~你嘴里吐出来的全是胆汁。也许你丢下母语倒是好事，因为你嘴里的话，无疑只会刺耳。~
== BC0KVEL ~没有价值的话，我不用。你也最好记住。你是个暗精灵，可还算“卓尔”么？我眼前已看不见一个了。~
== %VICONIA_BANTER% ~Mzilna wael！给一个卓尔男性卸了镣铐，他们就忽然以为自己高过一切。别弄错，jaluk——在这些人眼里你什么都不是，在卓尔之中更不算什么。你如今连“无名之辈”都不如——多可悲的活法。~
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelViconia2","GLOBAL",0)~ THEN %VICONIA_BANTER% C0KvelViconia2
~那么，给地表人做牛做马这么些年，你换来了……什么，一个人的无条件信任？~
DO ~SetGlobal("C0KvelViconia2","GLOBAL",1)~
== BC0KVEL ~一个就够了。~
== %VICONIA_BANTER% ~够？一个短命的人类能给你几分安全？~
== BC0KVEL ~等你认清了地表人身上哪些品性可以信，事情就简单了。~
== %VICONIA_BANTER% ~你说“信任”？莎尔啊，这种昏话竟能从卓尔嘴里吐出来。你真是个异类。~
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelViconia3","GLOBAL",0)~ THEN %VICONIA_BANTER% C0KvelViconia3
~男性，你给我们那锅炖菜挑的黑翼菇不合我的口味。从今往后，我要你改用穴茎菇。~
DO ~SetGlobal("C0KvelViconia3","GLOBAL",1)~
== BC0KVEL ~穴茎菇只长在地下。若这里是幽暗地域，它们多得是，可在这儿是另一回事。~
== BC0KVEL ~更别说它们跟球网菇几乎分不清，而那是剧毒的。我宁愿不要为稍好一点的味道拿命去赌。~
== %VICONIA_BANTER% ~毒素只要由我这样有本事的祭司净化就行。穴茎菇的品相，远胜寻常黑翼菇。~
== BC0KVEL ~黑翼菇与穴茎菇的滋味之别，用对的油一炒，几乎尝不出来。我的职责是让你有饭吃。你的舒坦不相干。~
== %VICONIA_BANTER% ~滋味？滋味无关紧要。两种蘑菇口感之别，才是一顿粗人饭与贵人饭的分野。~
== BC0KVEL ~那就更该用黑翼菇。以地表的眼光看，你连粗人都算不上。~
== %VICONIA_BANTER% ~你忘了分寸，jaluk！~
== BC0KVEL ~卓尔女性的毛病，一向是短视——总以为自己永远更懂。你如今在地表了。你该学，而不是去教那些你一窍不通的事。~
EXIT

// Xan
CHAIN IF ~InParty("Xan")
See("Xan")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelXan1","GLOBAL",0)~ THEN %XAN_BANTER% C0KvelXan1
~如今我们要把全队的安全交给我的一位暗精灵表亲了。*呻吟* 这下我们准完了。~
DO ~SetGlobal("C0KvelXan1","GLOBAL",1)~
== BC0KVEL ~精灵，你看出什么灾祸要落到你头上？~
== %XAN_BANTER% ~我不知道。我只从史书上知道，每当一个“族人”与一个卓尔屈尊共事，结局总是灾祸。多半是精灵遭殃。~
== BC0KVEL ~怕一场也许永不会来的死，你是个呆子。~
== %XAN_BANTER% ~若它明明白白摆在我眼前，等着收我，我反倒更明白？*叹气* 我看我还是宁可当“呆子”。~
EXIT

CHAIN IF ~InParty("Xan")
See("Xan")
InParty("C0Kvel")
See("C0Kvel")
AreaType(OUTDOOR)
OR(2)
TimeOfDay(DUSK)
TimeOfDay(NIGHT)
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelXan2","GLOBAL",0)~ THEN %XAN_BANTER% C0KvelXan2
~我在暗处瞧着，使劲眯起眼，几乎看见一个亲族，只是高出好几头，也壮实许多。我们的族类怎么变得这样不同，我倒想知道。~
DO ~SetGlobal("C0KvelXan2","GLOBAL",1)~
== BC0KVEL ~那些传说我们俩想必都听过许多遍。你爱信哪个就信哪个。~
== %XAN_BANTER% ~是啊，是啊，什么阿拉乌施妮如何成了罗丝，如何奴役了本是她子女的暗精灵，或说他们自愿追随她。这些我听过一百万遍。全看讲的人想让哪一方显得更义正。~
== BC0KVEL ~哦？你竟从你天生仇敌的嘴里听过这些故事？~
== %XAN_BANTER% ~身为 Tel'Quessir 的守护者，我相信……要弄清我真正在与什么作战。别弄错——我觉得伊力希瑞如今的境况实在可憎，也可怜。我知道你们真正的仇敌已不是“族人”，而是你们彼此。~
== BC0KVEL ~你若想找共同之处，我劝你省省气力。我这一生，死在我手上的精灵不在少数。~
== %XAN_BANTER% ~我这把月刃上也没少沾暗精灵的血，所以我大概确实没资格可怜你。*叹气* 克维拉林，我并不自以为英雄，也不自命义的执行者。我只是我族人的仆从，只能做我该做的。~
== %XAN_BANTER% ~也许有一天，我的职责就是举这把剑对着你，我们中会有一个死去——以命运的残酷，也许两个都死——可我还是愚蠢地觉得该说这一句。~
== %XAN_BANTER% ~我们也许彼此不懂，可……说来古怪，我并不讨厌你。而我在其中看见了一点指望。~
== BC0KVEL IF ~InParty("ELDOTH")~ THEN ~总而言之，我相信我们确有一处相同。~
== %XAN_BANTER% IF ~InParty("ELDOTH")~ THEN ~我不这么想，不过你说吧。~
== BC0KVEL IF ~InParty("ELDOTH")~ THEN ~我们都盼那骗子死。~
== %XAN_BANTER% IF ~InParty("ELDOTH")~ THEN ~我……*轻笑* 好吧，无可否认。确有这么一处。~
EXIT

// Xzar
CHAIN IF ~InParty("Xzar")
See("Xzar")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelXzar1","GLOBAL",0)~ THEN %XZAR_BANTER% C0KvelXzar1
~卓尔，你这身厚实的肌肉真是极有意思的标本。几乎像人类。是随机的变异？你那臭名昭著的祭司们做的试验？还是……~
DO ~SetGlobal("C0KvelXzar1","GLOBAL",1)~
== BC0KVEL ~你爱看多久就看多久，得不到答案。~
== %XZAR_BANTER% ~当然，你说得对。要懂得更多，唯一的法子是*真正*钻进皮肉骨头里去。我是说……打个比方，当然。不过你若肯在手术台上躺一会儿，我也不反对……~
== BC0KVEL ~你若能硬把我拖上一张，那就随你割。不过我不大乐观，毕竟你自己差不多就是一副走路的骨架。~
== %XZAR_BANTER% IF ~InParty("MONTARON")~ THEN ~对！头一件要办的，是拿结实的线把那张嘴缝上。蒙提！好伙计，帮我把我们的标本抬上桌，行么？~
== %MONTARON_BANTER% IF ~InParty("MONTARON")~ THEN ~把你那些歪扭的家伙塞进你自己屁股里转一转吧，法师。~
== %XZAR_BANTER% IF ~InParty("MONTARON")~ THEN ~哼！也罢，一具肉傀儡也能干同样的活，还少顶嘴！我只需找些……材料。~
== %XZAR_BANTER% IF ~!InParty("MONTARON")~ THEN ~对！头一件要办的，是拿结实的线把那张嘴缝上。如今我只需寻一种厉害的麻痹药……~
== BC0KVEL ~祝你好运。~
EXIT

// Yeslick

CHAIN IF ~InParty("Yeslick")
See("Yeslick")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelYeslick1","GLOBAL",0)~ THEN %YESLICK_BANTER% C0KvelYeslick1
~卓尔，我猜你没打过黑河之战吧？我记得你说你故乡是埃林德林。~
DO ~SetGlobal("C0KvelYeslick1","GLOBAL",1)
RealSetGlobalTimer("C0KvelYeslickRestTalkRealTimer","GLOBAL",3600)
SetGlobalTimer("C0KvelYeslickRestTalkTimer","GLOBAL",ONE_WEEK)~
== BC0KVEL ~与锤厅的盾矮人和克萨瑟尔家族那一战？没有。那不关我的事。~
== %YESLICK_BANTER% ~你确定？我只能凭脸估精灵的年纪，可你看着正当年纪。而且听你这回答，你似乎对那整件事有些印象。~
== BC0KVEL ~我记得数不清的尸首散布在高荒原与上幽暗之间的通道上。我只庆幸自己没因什么可怕的意外与他们同去。那个黑暗的日子里，矮人与卓尔都疯了。~
== %YESLICK_BANTER% ~你没打就好，卓尔……那一场恶战里，我也折了些远亲……我可不希望这成了我们路上的疙瘩。~
== BC0KVEL ~你若这般在意这可能性，那你当初就不该问。~
== %YESLICK_BANTER% ~也许。可心里有疑虑时，还是把话说开好。你若真参与了那场仗……~
== BC0KVEL ~你会对我下手？~
== %YESLICK_BANTER% ~*叹气* 我与你无怨，暗精灵。可我是个老矮人，旧伤不那么容易淡去。矮人与黑暗种族几百年间的血战，我没忘——尽管我极想忘。~
== %YESLICK_BANTER% ~看着你，就翻起旧日那些阴暗的记忆。那些我本盼着再不必想起的。~
== BC0KVEL ~依我的经验，看见不愿看的东西，最简单的治法就是转开眼。~
== %YESLICK_BANTER% ~不……不。也许往前走最好的路，是回头看清、认了已成之事。这样，我才能好好想眼下该怎么办。~
EXIT

CHAIN IF ~InParty("Yeslick")
See("Yeslick")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelYeslickRestTalk1","GLOBAL",1)~ THEN %YESLICK_BANTER% C0KvelYeslick1
~*抽鼻* 这是什么味儿？我虽老，鼻子还够灵，能追着烤白鱼的香气走。这味儿从哪儿来的……？~
DO ~SetGlobal("C0KvelYeslickRestTalk1","GLOBAL",2)~
== BC0KVEL ~这儿，矮人。~
== %YESLICK_BANTER% ~哦，是你。我还在想是谁在火边忙活，做这样的美味。我坐一坐，行么？~
== BC0KVEL ~随你。吃食很快就好。~
== %YESLICK_BANTER% ~我看这锅里是上好的货。肉够多，油脂也正合火候。克维尔，我只说实话：这味儿叫我流口水。~
== BC0KVEL ~矮人一族爱吃鱼？这于我倒是新知。~
== %YESLICK_BANTER% ~我老家那氏族领地就在河边，你若忘了的话。我们也有不少打鱼的矮人，我向你保证，他们不比任何卓尔差。~
== %YESLICK_BANTER% ~……曾有不少。~
== BC0KVEL ~教我这手艺的人也早已不在了。若不是这门手艺，我未必还记得他。~
== %YESLICK_BANTER% ~你们黑皮的族类，很少听说重感情。~
== BC0KVEL ~……也许。~
== %YESLICK_BANTER% ~恕我。这话说得比我本意难听多了。~
== BC0KVEL ~对给我们简单东西的人，我们总当作理所当然，也不去想他们——直到忽然失去。卓尔选择不结情，好显得没有弱点。地表人固然有我看着的毛病，可他们对自己的情更真。这一点我敬。~
== %YESLICK_BANTER% ~你若不见怪我问一句，你还失了些什么？~
== BC0KVEL ~够我明白有些事非得换个眼光看不可。~
== %YESLICK_BANTER% ~那好，精灵。我们这些人里，越多学到这一课越好。~
== BC0KVEL ~……~
== %YESLICK_BANTER% ~喂，你最好把鱼片翻一翻，不然一边很快就焦了。~
== BC0KVEL ~该死——你说得对。~
== %YESLICK_BANTER% ~你怕是没有干克斯特尔叶？那股土腥味多数人受不了，可我是个老派矮人，那香气叫我想到些好日子。~
== BC0KVEL ~你倒走运，矮人。~
== %YESLICK_BANTER% ~谢了。~
== %YESLICK_BANTER% ~*咀嚼* 啊，这才对味。~
DO ~RestParty()~ EXIT