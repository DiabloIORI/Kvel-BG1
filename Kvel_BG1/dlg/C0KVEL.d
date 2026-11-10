BEGIN C0KVEL
BEGIN C0KVELP
BEGIN C0KVNP01
BEGIN C0KVNP02
BEGIN C0KVNP03
BEGIN C0KVNP04
BEGIN C0KVNP05
BEGIN C0KVNP06
BEGIN C0KVNP07
BEGIN C0KVME01
BEGIN C0KVME02

CHAIN IF WEIGHT #-1 ~Global("C0KvelMerchantsTalk","GLOBAL",1)~ THEN C0KVME01 KVEL-MERCHANTS
~你在打嗝龙酒馆见着达库尔特家那小子了？~
DO ~SetGlobal("C0KvelMerchantsTalk","GLOBAL",2)~
== C0KVME02 ~差点没认出他来。看着蔫头耷脑的……他那商号的生意怕是不大顺。~
== C0KVME01 ~缘由不难猜。达库尔特家的人个个品行端正。铁王座对寻常商路的刁难，他们受不住。他们也绝不会顺着来。~
== C0KVME02 ~说得对。他们的顾忌我不共有，可我敬他们。不由得不替那小子心疼。~
== C0KVME01 ~但愿他别淹死在酒里，看他那一杯接一杯地灌。~
== C0KVME02 ~唉，我们还是少管闲事。当然，那小子若肯放下脸面，跟我们哪个搭句话求个手，我们这些商人谁也没法拒绝——毕竟达库尔特商会欠我们一个人情，你说是不是？回头见。~
DO ~ActionOverride("C0KVME01",EscapeArea())
EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBentleyBook","GLOBAL",0)~ THEN BENTLY KVEL-BENTLEY-BOOK
~加尔特在上，那小子若还不把脑子摆正，非把家业搞垮不可……内茜？内茜，你这会儿有空么？真见鬼，这姑娘端着太多热盘子，连动都动不了。~
DO ~SetGlobal("C0KvelBentleyBook","GLOBAL",1)~
== BENTLY ~你，这位，我能先付你一小笔钱，请你替我办桩事么？我一位熟人昨夜醉得不像话，把一本要紧的账簿落在我桌上，今早宿醉得连记都记不得。我得找个人给他送去，免得他没察觉东西丢了就动身走人。~
END
  ++ ~好吧，我给他送去。这人在哪儿找？~ EXTERN BENTLY KVEL-BENTLEY-BOOK-1
  ++ ~抱歉，我这会儿没工夫。~ EXTERN BENTLY KVEL-BENTLEY-BOOK-2

CHAIN BENTLY KVEL-BENTLEY-BOOK-1
~多谢你。那小子名叫埃克瑟尔·达库尔特，是达库尔特商号的商人。这个时辰，他大概在神殿后头那片地方卸货。~
== BENTLY ~这点辛苦钱五十金，好<MANWOMAN>。~
DO ~GiveItemCreate("C0KVBK01",LastTalkedToBy(Myself),1,0,0) GiveGoldForce(50)~ EXIT

CHAIN BENTLY KVEL-BENTLEY-BOOK-2
~见鬼。也罢，我不能强你。我就替那蠢小子收着，等他想起自己是干什么的。这么要紧的东西，他总不能一整天一次都不想起来吧……？~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",0)~ THEN C0KVNP01 KVEL-START-0
~来，快些动，伙计们。我可不是按钟点付钱让你们这么磨的。你们若按时卸完，我请你们吃顿热乎好饭！这活本该昨天就完的！~
DO ~SetGlobal("C0KvelBegin","GLOBAL",1)~
== C0KVNP03 ~可是老板，我们没干完，不就是因为你非要说……~
== C0KVNP01 ~什么？我付钱是请你们干活，不是请你们顶嘴。快动手，去！~
== C0KVNP02 ~唉，老板……我们不能先吃饭，*再*干活么？那样快多了。~
== C0KVNP03 ~再说，他凭什么什么都不干？他六尺多高，壮得像头牛，我跟人说他是精灵，谁都不会信。他凭什么就能那样坐在阴凉里？~
== C0KVEL ~……~
== C0KVNP01 ~等你打得有他一半好，再想歇息的事，早一刻都不成。快些，我们——恕我，好<PRO_SIRMAAM>！我没想到这儿会有人经过。~
== C0KVNP01 ~埃克瑟尔·达库尔特，商人与信使，愿为你效劳。你若想寻货物，恐怕此刻我们存货不多，不过我还可给你看些也许合冒险者行当用的东西。~
END
  + ~PartyHasItem("C0KVBK01")~ + ~你就是埃克瑟尔·达库尔特？本特利要我把账簿送来给你。你落在他的店里了。~ DO ~SetGlobal("C0KvelMetEcthel","GLOBAL",1) TakePartyItem("C0KVBK01") DestroyItem("C0KVBK01")~ EXTERN C0KVNP01 KVEL-START-0-1
  ++ ~那就给我看看你有些什么。~ EXTERN C0KVNP01 KVEL-START-0-2
  ++ ~这会儿不必。~ EXTERN C0KVNP01 KVEL-START-0-3

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",1)~ THEN C0KVNP01 KVEL-START-0
~是，好<PRO_SIRMAAM>？埃克瑟尔·达库尔特能为你做什么？~
END
  + ~PartyHasItem("C0KVBK01")~ + ~你就是埃克瑟尔·达库尔特？本特利要我把账簿送来给你。你落在他的店里了。~ DO ~SetGlobal("C0KvelMetEcthel","GLOBAL",1) TakePartyItem("C0KVBK01") DestroyItem("C0KVBK01")~ EXTERN C0KVNP01 KVEL-START-0-1
  ++ ~那就给我看看你有些什么。~ EXTERN C0KVNP01 KVEL-START-0-2
  ++ ~这会儿不必。~ EXTERN C0KVNP01 KVEL-START-0-3

CHAIN C0KVNP01 KVEL-START-0-1
~我落了账簿？断不会，不可能——哎呀。我还真许是放错了地方。~
== C0KVNP01 ~让我看看……是，这确是我的。谢天谢地你送来了，朋友。我若没带它就走，非陷进泥潭好几尺深不可。你信么？我身边四双眼睛，没一个瞧见这么要紧的东西！~
== C0KVEL ~我瞧见了。~
== C0KVNP01 ~那你怎么不告诉我？~
== C0KVEL ~*我*说了。~
== C0KVNP01 ~你这撒谎的！~
== C0KVNP02 ~老板，你当时醉了。~
== C0KVEL ~你当时话都说不清了，这可不怪我。~
== C0KVNP01 ~这……唉……啊！行，行！我确实醉了。我后悔说了这话。~
== C0KVEL ~我也常后悔你开那些口。~
== C0KVNP01 ~恕我，我的<PRO_LADYLORD>。这一个自称克维尔，是我的护卫。我付他钱、供他吃、给他住处，可只要他还喘气，他就绝不肯替我说一句好话。~
END
  ++ ~你的护卫？他倒更像你的逗哏。~ EXTERN C0KVNP01 KVEL-START-0-4
  ++ ~他真是精灵么？他比寻常人类还高。~ EXTERN C0KVNP01 KVEL-START-0-5
  ++ ~别管他。我对你的货有兴趣。~ EXTERN C0KVNP01 KVEL-START-0-2
  ++ ~幸会你们二位，可我该走了。~ EXTERN C0KVNP01 KVEL-START-0-3

CHAIN C0KVNP01 KVEL-START-0-2
~是，当然。有什么看中的尽管跟我说，我必给你一个极公道的价。~
DO ~StartStore("C0KVST01",LastTalkedToBy(Myself))~ EXIT

CHAIN C0KVNP01 KVEL-START-0-3
~唉，你若哪天认识什么需要特别货物的人，就跟亲友说，达库尔特商号差不多什么都能弄到，价钱比你在本地寻的还公道。~
EXIT

CHAIN C0KVNP01 KVEL-START-0-4
~就是我们。一对活宝，或者说他爱拿我给人取乐。还全然不是有意的。他就是那样。~
EXTERN C0KVNP01 KVEL-START-0-6

CHAIN C0KVNP01 KVEL-START-0-5
~呃，自然的奇事，偶尔也见得着。高个精灵、矮个人类、瘦矮人……~
== %KAGAIN_JOINED% IF ~InParty("KAGAIN")~ THEN ~嘴上留神，长腿鬼。~
== C0KVNP01 IF ~InParty("KAGAIN")~ THEN ~我——我只是理论上说说。~
== C0KVNP01 ~也不是我不明白你的意思。是挺叫人发怵的，可我在路上觉得管用。哪怕他冷得跟冬天的白龙差不多。~
EXTERN C0KVNP01 KVEL-START-0-6

CHAIN C0KVNP01 KVEL-START-0-6
~可克维尔与我也有几年的交情，别误会了。我愿把命托给他，而他使巨剑，据我所见，一场都没输过。我再签不着更好的契约了。~
== C0KVNP01 ~说真的，他也没看着那么臭脸。差不多，可他心情好的日子会跟你说话。最坏也不会伤你……这话听着不对，是吧。人家老问这个。~
END
  ++ ~别管他。我对你的货有兴趣。~ EXTERN C0KVNP01 KVEL-START-0-2
  ++ ~幸会你们二位，可我该走了。~ EXTERN C0KVNP01 KVEL-START-0-3
  ++ ~明白了。也许我去跟他聊两句。再会。~ EXTERN C0KVNP01 KVEL-START-0-3

CHAIN IF WEIGHT #-1 ~GlobalLT("C0KvelBegin","GLOBAL",1)~ THEN C0KVEL KVEL-START-2
~要做买卖，跟我雇主谈。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",1)~ THEN C0KVEL KVEL-START-1
~有话快说。~
END
  + ~OR(2) TimeOfDay(DAY) TimeOfDay(MORNING)~ + ~这么热的天。你怎么还戴着盔？~ EXTERN C0KVEL KVEL-START-1-1
  + ~OR(2) TimeOfDay(DUSK) TimeOfDay(NIGHT)~ + ~天这么黑了。戴盔不更看不清么？~ EXTERN C0KVEL KVEL-START-1-1
  ++ ~我怕是买不下你的契约？你看着是个挺硬的雇佣剑客。~ EXTERN C0KVEL KVEL-START-1-2
  + ~Global("C0KvelAskHome","GLOBAL",0)~ + ~你是哪儿人？你显然不是剑湾本地人。~ DO ~SetGlobal("C0KvelAskHome","GLOBAL",1)~ EXTERN C0KVEL KVEL-START-1-3
  ++ ~你怎么不干活？~ EXTERN C0KVEL KVEL-START-1-4
  ++ ~我没什么好说的。告辞。~ EXIT

CHAIN C0KVEL KVEL-START-1-1
~还忍得住。~
EXIT

CHAIN C0KVEL KVEL-START-1-2
~那得看我雇主，不过你若去问他，我不觉得你有多大成算。~
EXIT

CHAIN C0KVEL KVEL-START-1-3
~不。~
END
  ++ ~那你是从……？~ + KVEL-START-1-3-1
  ++ ~那好吧。~ EXIT

CHAIN C0KVEL KVEL-START-1-3-1
~……~
= ~幽暗地域。~
END
  ++ ~*幽暗地域*？~ EXTERN C0KVEL KVEL-START-1-3-2

CHAIN C0KVEL KVEL-START-1-3-2
~是，幽暗地域。我拼着命从一片活地狱里逃出来，此后就靠这把剑过活。~
END
  ++ ~你不可能当真。~ EXTERN C0KVEL KVEL-START-1-3-3
  ++ ~那……什么，你是卓尔？一个特别大的灰矮人？~ EXTERN C0KVEL KVEL-START-1-3-3
  ++ ~不知怎的，我觉得你说的是真话。~ EXTERN C0KVEL KVEL-START-1-3-3

CHAIN C0KVEL KVEL-START-1-3-3
~你爱信什么信什么。这谈话我没兴致了。~
EXIT

CHAIN C0KVEL KVEL-START-1-4
~我的差事是保我雇主活着。~
END
  ++ ~所以你在省力气？~ + KVEL-START-1-5
  ++ ~你若搭把手，你雇主大概更高兴。~ + KVEL-START-1-6
  ++ ~说得过去。~ EXIT

CHAIN C0KVEL KVEL-START-1-5
~需要。~
EXIT

CHAIN C0KVEL KVEL-START-1-6
~他的安危是我的事。他称不称心不是。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",3)~ THEN C0KVNP01 KVEL-START-3
~你——你这位！求你帮个正经旅人一把！这些畜生不肯罢休！~
DO ~SetGlobal("C0KvelBegin","GLOBAL",4)
ChangeEnemyAlly(Myself,GOODBUTBLUE)
ChangeEnemyAlly("C0KVEL",GOODBUTBLUE)
ActionOverride("C0KVEL",Spell(Myself,ASSASSIN_POISON))
ActionOverride("C0KVEL",ApplySpellRES("C0KVSP06",Myself))
ChangeEnemyAlly("C0KVNP02",GOODBUTBLUE)
ChangeEnemyAlly("C0KVNP03",GOODBUTBLUE)
ChangeEnemyAlly("C0KVNP04",GOODBUTBLUE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",5)~ THEN C0KVNP01 KVEL-START-5
~啊……多——多谢你相助，朋友，也谢天谢地我们撞上了。我从没见过劫道的畜生这般凶。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",6)~
== C0KVNP01 ~天哪，还有我们的车队……损得多重？~
== C0KVEL ~……~
== C0KVEL ~全毁了。从货物到给养，都被那场爆烧了个精光。~
== C0KVNP01 ~该死！这些可恶的畜生，我哪想到它们会朝我们扔爆炸药水……我们没一并烧死，算是走运。~
== C0KVNP01 ~我们躲过正面那一下纯是运气，若不是你，客人，我们连车带货都得一起送往来世。~
END
IF ~Global("C0KvelMetEcthel","GLOBAL",1)~ EXTERN C0KVNP01 KVEL-START-5-1
IF ~!Global("C0KvelMetEcthel","GLOBAL",1)~ EXTERN C0KVNP01 KVEL-START-5-2

CHAIN C0KVNP01 KVEL-START-5-1
~等等……我好像记得你。是，一定是在友好之臂旅店。你把我的账簿送来了，是不是？~
END
  ++ ~正是。~ EXTERN C0KVNP01 KVEL-START-5-1-1

CHAIN C0KVNP01 KVEL-START-5-1-1
~那我真高兴又见着一张和善的脸。虽说不是要减我的感激，可……唉，总之那账簿也在爆里烧了，跟我其余文书一样成了一堆灰。*叹气*~
EXTERN C0KVNP01 KVEL-START-5-3

CHAIN C0KVNP01 KVEL-START-5-2
~我不确定这是不是我们头一回见，可经了那样一场相助，我这一辈子都会记得你。~ 
EXTERN C0KVNP01 KVEL-START-5-3

CHAIN C0KVNP01 KVEL-START-5-3
~只为合乎礼数，请容我正经介绍一下自己。我是埃克瑟尔·达库尔特，深水城达库尔特商会世家的继承人。不过经这么一场灾，被逐出门的可能也不小。~
== C0KVNP01 ~可我的命到底比什么都金贵，所以我并非不知感恩，差得远。可否让我知道救命恩人的名字？~
END
  + ~PartyHasItem("C0KVBK01")~ + ~等等，你是埃克瑟尔·达库尔特？我刚想起，你的账簿在我这儿。~ DO ~SetGlobal("C0KvelMetEcthel","GLOBAL",1) TakePartyItem("C0KVBK01") DestroyItem("C0KVBK01")~ EXTERN C0KVNP01 KVEL-START-5-BOOK
  ++ ~<CHARNAME>。~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~我的名字不打紧。能帮上忙就好。~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~那我是不是可以认为，你救我一场，手里却没有什么能谢我的？~ EXTERN C0KVNP01 KVEL-START-5-6

CHAIN C0KVNP01 KVEL-START-5-BOOK
~*你*有我的账簿？托提摩拉的微笑，快让我看看！是，这是我的。~
= ~自打离开友好之臂，我就一直想这东西到底在哪。本特利说他交给了一个人送来给我。我猜就是你？换作任何别的境况，我都要为你害我在没账簿的日子里受的那些罪咒你的名，可这一回倒许是意外之福。~
= ~不过话说回来，如今既无车队也无货，这东西到这会儿也没多大用了，是吧？唉，至少我也许还能挽回些损失。总之，我还是想知道你的名字。我保证不记你的仇！~
END
  ++ ~<CHARNAME>。~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~我的名字不打紧。能帮上忙就好。~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~那我是不是可以认为，你救我一场，手里却没有什么能谢我的？~ EXTERN C0KVNP01 KVEL-START-5-6

CHAIN C0KVNP01 KVEL-START-5-4
~<CHARNAME>，对。我若还有东西能写，就记下来，好知道日后再往哪儿送酬谢。~
EXTERN C0KVNP01 KVEL-START-5-7

CHAIN C0KVNP01 KVEL-START-5-5
~不，不。我坚持。至少就当是认识一个新朋友的开场。~
END
  ++ ~好吧。那就叫我<CHARNAME>。~ EXTERN C0KVNP01 KVEL-START-5-4
  ++ ~我没兴趣交朋友。我只在乎酬劳，而我猜你这副可怜境况里也没有。~ EXTERN C0KVNP01 KVEL-START-5-6

CHAIN C0KVNP01 KVEL-START-5-6
~不，怕是一点也没有。~
EXTERN C0KVNP01 KVEL-START-5-7

CHAIN C0KVNP01 KVEL-START-5-7
~我真盼此刻手里有东西能谢你，可你看见了，我们车队……唉，我没法子，只能回纳什凯尔去，在那里收拾收拾。若我们再会，我必加倍酬你。~
== C0KVEL ~你若真打算去找这蠢货讨酬劳，记得去本地酒馆，且要快，赶在他把名下剩的那点钱喝光之前。~
== C0KVNP01 ~是，*多谢你*，克维尔，这话真有用。可这一团糟之后，我确实要喝上一阵……再会，朋友。~
DO ~ActionOverride("C0KVEL",EscapeArea())
ActionOverride("C0KVNP02",EscapeArea())
ActionOverride("C0KVNP03",EscapeArea())
ActionOverride("C0KVNP04",EscapeArea())
EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",7)~ THEN C0KVNP01 KVEL-START-7
~又见了，朋友。我本该更高兴见你，可想到我近来的境况……唉，望你能体谅。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",8)~
== C0KVNP01 ~不管怎样，你把我从死局里救了出来，我也攒了足够的金子，够给你一份像样的酬谢。请收下。~
DO ~GiveGoldForce(1000)~
== C0KVNP01 ~我若有更多，也一并给你。可眼下我得在几头间匀着花：养我自己、养这个精灵，凑出能再上路的路费，当然，还有酒。~
END
  ++ ~你其余的护卫呢？~ EXTERN C0KVNP01 KVEL-START-7-1
  ++ ~你不觉得该减些不必要的花销么？~ EXTERN C0KVNP01 KVEL-START-7-2
  ++ ~你往后打算怎么办？~ EXTERN C0KVNP01 KVEL-START-7-3

CHAIN C0KVNP01 KVEL-START-7-1
~无车队可护，进项又停了，你以为他们还肯守着？我倒成了白付钱让他们干站着犯傻。~
EXTERN C0KVNP01 KVEL-START-7-4
  
CHAIN C0KVNP01 KVEL-START-7-2
~到底哪一头是不必要的？肯定不是这一头。*吞咽* 啊……我若没了这液体的胆气、快活与健忘，就什么都不是了。*打嗝*~
EXTERN C0KVNP01 KVEL-START-7-4

CHAIN C0KVNP01 KVEL-START-7-3
~你说呢？不，我是说，你觉得我下一杯该点龙息，还是火酒？我这会儿正需要肚里烧一把火。~
EXTERN C0KVNP01 KVEL-START-7-4
  
CHAIN C0KVNP01 KVEL-START-7-4
~*叹气*~
== C0KVEL ~你再这么喝，不到今日天黑就死了。不是肝坏了，就是欠下一屁股躲不掉的债。~
== C0KVNP01 ~呸，少来这套。让我至少忘掉我的烦心事几个时辰。再说，克维尔，我留你当护卫，不就是为了对付那些想来敲我竹杠的人么？~
== C0KVEL ~你居然还记得我是你的护卫，我倒吃惊。万一你忘了，这会儿你身边可再没别人站着了。~
== C0KVNP01 ~唉，我真盼望当初在契约里写一条，管住你对雇主那张嘴……你听见了么，酒保？再来一杯！~
== BART2 ~*嘟囔* *叹气*~
== C0KVNP01 ~总之，我如今身不由己地困在此地。没东西可卖，袋里的金子勉强够糊口。怕是没有货能卖你了，朋友，可等我有了，必给你独一份的价，这话我保证。~
== C0KVNP01 ~不过眼下，我打算喝醉……比现在更醉。你有空就坐下陪我。我那位搭档任我怎么请都不肯来。我真该在他的契约里多写几条……~
== C0KVNP01 ~等等，门口那个不是我认识的人么？你让一让，让我看清楚些……？哦。哎呀。~
DO ~ClearAllActions()
StartCutSceneMode()
CreateCreature("C0KVNP05",[295.395],NE)
SmallWait(5)
Wait(1)
ActionOverride(Player1,MoveToPoint([439.230]))
ActionOverride(Player1,SmallWait(1))
ActionOverride(Player1,Face(SW))
ActionOverride(Player2,MoveToPoint([426.359]))
ActionOverride(Player2,SmallWait(1))
ActionOverride(Player2,Face(SW))
ActionOverride(Player3,MoveToPoint([406.399]))
ActionOverride(Player3,SmallWait(1))
ActionOverride(Player3,Face(NW))
ActionOverride(Player4,MoveToPoint([482.367]))
ActionOverride(Player4,SmallWait(1))
ActionOverride(Player4,Face(NW))
ActionOverride(Player5,MoveToPoint([438.465]))
ActionOverride(Player5,SmallWait(1))
ActionOverride(Player5,Face(NW))
ActionOverride(Player6,MoveToPoint([229.286]))
ActionOverride(Player6,SmallWait(1))
ActionOverride(Player6,Face(SE))
ActionOverride("C0KVNP05",MoveToPoint([308.377]))
ActionOverride("C0KVNP05",SmallWait(2))
ActionOverride("C0KVNP05",Face(N))
Wait(1)
CreateCreature("C0KVNP06",[263.386],NE)
CreateCreature("C0KVNP07",[304.417],NE)
Wait(2)
ActionOverride("C0KVNP05",MoveToPoint([298.278]))
ActionOverride("C0KVNP05",SmallWait(2))
ActionOverride("C0KVNP05",Face(NE))
ActionOverride("C0KVNP05",Wait(1))
ActionOverride("C0KVNP05",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",8)~ THEN C0KVNP05 KVEL-START-8
~好啊，好啊。这不是亲爱的埃克瑟尔么。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",9)~
== C0KVNP01 ~*呻吟* 这日头若还剩一丝指望，这下也全碎了。你要什么，奥克斯利？~
== C0KVNP05 ~啧，啧。这就算招呼老朋友的法子？你今日看着实在糟。从这身泥腿子麦酒的味道看，近来生意怕是不大顺。~
== C0KVNP01 ~把我们说成朋友，叫我一层鸡皮疙瘩。我也确信，看见我这些私人的苦处，叫你乐开了花。~
== C0KVNP05 ~哦，别这样。我们是在深水城同一片街区养大的，同一个师傅教的。按理，我该拿你当半个兄弟。~
== C0KVNP01 ~别。你只会让我身上的鸡皮疙瘩更密。~
== C0KVNP05 ~我也一样。~
== C0KVNP01 ~别绕了，奥克斯利。我想不出一个深水城商人贵族会偏偏在安姆这地方撞上我。我再问你一遍——你要什么？~
== C0KVNP05 ~是，说正事。这话我们俩都不忌说。我是代表“王座”来找你的。~
== C0KVNP01 ~“王座”？别逗我笑，奥克斯利，公开领主绝不会叫你当他的信使，也不会把自己的位子叫得那么做作，什么“王座”……~
== C0KVNP01 ~……等等。王座？那个“铁王座”？~
== C0KVNP05 ~很机敏。不过你若连他们的名号都不知道，我倒要叫你一声可怜商人的笑话——尽管你本就是了。~
== C0KVNP01 ~你是个疯子，埃多拉斯·奥克斯利。~
== C0KVNP05 ~我更愿自称是个有胆气的机运之徒。确也，铁王座在北方做不成买卖，全因为皮尔杰里昂·帕拉丁森这类气量短窄之辈……可这正是我来到此地的缘由，来这更务实的地方，好更好地效忠奥克斯利这个姓的利益。就像你像条奴狗似的效忠达库尔特家。~
== C0KVNP05 ~真，眼下我回不了家，免得一伙气我不过的同行堵在我宅子门前闹事……可这会变。埃克瑟尔，铁王座正变得比你能想的更强，他们的盟友也越来越多、越来越险、越来越管用。不久，除了在他们旗子底下，就没有做买卖的地方。而我将在那儿收那好处。~
== C0KVNP01 ~若我说话有分量，你倒是会先被吊上绞索。~
== C0KVNP05 ~究竟凭什么罪名？确也，铁王座有些地方名声不端，可论法理他们仍是正经的生意。可你若真打算告到深水城的商会去，你最好快快赶回家，亲自把话送到。~
== C0KVNP01 ~那我若情愿就留在剑湾呢？~
== C0KVNP05 ~这就说到我在此的缘由了，在你无礼地打断我之前。~
== C0KVNP05 ~埃克瑟尔·达库尔特。达库尔特商号须停止以自家名号在剑湾与安姆的一切买卖。瑞尔塔·安切夫肯容忍低位分的商人各自营生，可他容不下那些有名号的商号来他地界上与他争。~
== C0KVNP01 ~什么？！铁王座对商路并无官面上的权柄！不管瑞尔塔·安切夫那名头多——*啐*——多叫人恶心，你也无权这样命令任何人！~
== C0KVNP05 ~论法，这话不假。所以来见你的是我，而不是燃焰之拳里哪个披甲的雇兵。可我身后这些人，本事也不比他们差。埃克瑟尔，这是你唯一的一次警告。走，或者留下，但只许以铁王座的附庸身份做买卖，得给他们分一份利。~
== C0KVNP01 ~不然……你还能怎样，把我的人脉全买下来，让我无处可做生意，直到饿死？这倒像是你会使的粗法子。~
== C0KVNP05 ~我听说你的车队被奥罗格兽袭了，还炸成了灰烬。我来时也许还路过那残骸。剑湾如今多险的地方，我怕只会更险。明智之举是趁还能走就走。~
== C0KVNP01 ~你……啧。哈哈哈哈哈……！啊……当然。当——他妈的——然！~
== C0KVNP05 ~当然什么？~
== C0KVNP01 ~我看见你踏进门那一刻，就该料到。真简单。老奥克斯利若那张皱皮下还剩半点羞耻，也会为这手段脸红。~
== C0KVNP05 ~我没兴致听你含沙射影，埃克瑟尔。现在就给我答复，我好带回去给我上头的人。~
== C0KVNP01 ~你就把这答复，连同这个手势一并带回去，我不在乎。“去把你那些金币、珠宝，还有你那点可怜的自尊，全吞下去，蹲在你那镀金的茅坑上，直到把它们全痛苦地拉出来”！~
== C0KVNP05 ~真粗俗。我看这是个“不”。~
== C0KVNP01 ~“真是机敏”。~
== C0KVNP05 ~看在你家族与我们私交的份上，我给你一次改主意的机会。~
== C0KVNP01 ~虽说这店不是我开的，轮不到我发这话，可为着体面，我还是要说。滚出去！~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
SetSequence(SEQ_ATTACK_SLASH)
Wait(1)
PlaySound("C0KVSF4")
Wait(1)
ActionOverride("C0KVNP05",Face(W))
ActionOverride("C0KVNP05",Wait(1))
ActionOverride("C0KVNP05",Face(NE))
ActionOverride("C0KVNP05",Wait(1))
ActionOverride("C0KVNP05",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",9)~ THEN C0KVNP05 KVEL-START-9A
~……~
== C0KVNP01 ~……~
== C0KVEL ~……~
== C0KVNP05 ~哎，这是为着什么？~
== C0KVNP01 ~你听见了。滚，趁我还没清醒到能在下一杯里把你脑袋钉个窟窿。~
== C0KVNP05 ~实在叫人费解，你竟能让你家族的名声这么久没掉进泥里。可我拿不出上头能接受的结果，就不能回去。而我也不忌用硬手段。~
== C0KVNP06 ~该动手了么，老板？~
== C0KVNP05 ~让他叫两声。只留够他活着走回去的份。~
DO ~ClearAllActions()
StartCutSceneMode()
MoveToPoint([255.309])
SmallWait(2)
Face(NE)
ActionOverride("C0KVNP06",MoveToPoint([310.294]))
ActionOverride("C0KVNP06",SmallWait(2))
ActionOverride("C0KVNP06",Face(N))
ActionOverride("C0KVEL",MoveToPoint([310.253]))
ActionOverride("C0KVEL",SmallWait(2))
ActionOverride("C0KVEL",Face(S))
Wait(3)
ActionOverride("C0KVNP06",StartDialogNoSet("C0KVEL"))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",9)~ THEN C0KVNP06 KVEL-START-9
~滚开，牙签，免得我把你脑袋连那铁桶一块从肩上敲下来。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",10)~
== C0KVEL ~哦？~
DO ~ClearAllActions()
StartCutSceneMode()
SmallWait(2)
SetSequence(SEQ_ATTACK_BACKSLASH)
PlaySound("HIT_03A")
ActionOverride("C0KVNP06",SetSequence(SEQ_ATTACK_BACKSLASH))
FadeFromColor([15.0],0)
SmallWait(5)
PlaySound("HUMAN08")
ActionOverride("C0KVNP06",SetSequence(SEQ_DIE))
Wait(2)
ActionOverride("C0KVNP07",MoveToPoint([275.278]))
ActionOverride("C0KVNP07",SmallWait(1))
ActionOverride("C0KVNP07",Face(NE))
ActionOverride("C0KVNP07",SetSequence(SEQ_ATTACK_BACKSLASH))
ActionOverride("C0KVNP07",FadeFromColor([15.0],0))
ActionOverride("C0KVNP07",SmallWait(1))
ActionOverride("C0KVNP07",PlaySound("HIT_03A"))
ActionOverride("C0KVNP07",PlaySound("HUMAN08"))
ActionOverride("C0KVNP07",SetSequence(SEQ_DIE))
Wait(4)
Face(SW)
ApplyDamage("C0KVNP07",2,CRUSHING)
SmallWait(10)
ApplyDamage("C0KVNP07",2,CRUSHING)
SmallWait(10)
ApplyDamage("C0KVNP07",2,CRUSHING)
Wait(3)
ActionOverride("C0KVNP07",StartDialogNoSet("C0KVEL"))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",10)~ THEN C0KVNP07 KVEL-START-10
~呀啊啊！饶——饶命，饶命！~
DO ~SetGlobal("C0KvelBegin","GLOBAL",11)~
== C0KVNP01 ~*喷鼻* 呸……*咳* 咳，呛错管子了……忽然这酒比一整日都好喝。~
== C0KVEL ~你若蠢到呛死，我会让你活着，可要受这一个这般多的苦。~
== C0KVNP07 ~*咔* 啊呀呀！~
== BART2 ~各、各位！要打请到外头去！别逼我叫民兵来！~
== C0KVNP01 ~好了，够了，克维尔。我看话已送到了。~
DO ~ClearAllActions()
StartCutSceneMode()
SmallWait(2)
ActionOverride("C0KVNP06",SetSequence(SEQ_AWAKE))
ActionOverride("C0KVNP06",SmallWait(5))
ActionOverride("C0KVNP06",MoveToPoint([258.346]))
ActionOverride("C0KVNP06",SmallWait(5))
ActionOverride("C0KVNP06",Face(N))
ActionOverride("C0KVNP07",SetSequence(SEQ_AWAKE))
ActionOverride("C0KVNP07",SmallWait(5))
ActionOverride("C0KVNP07",MoveToPoint([298.374]))
ActionOverride("C0KVNP07",SmallWait(5))
ActionOverride("C0KVNP07",Face(N))
Wait(2)
ActionOverride("C0KVNP01",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",11)~ THEN C0KVNP01 KVEL-START-11
~哈哈哈——哎……哦，我这头……*咳* 我不该笑这么狠……那么。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",12)~
== C0KVNP01 ~奥克斯利，老伙计。多谢你费心跑这么远来给一句关切的警告，可我看你这会儿的麻烦比我多。你这些倒霉手下若有需要，我倒乐意替你添一点神殿的谢礼钱。~
== C0KVNP05 ~呃……那、那倒不必。~
== C0KVNP01 ~那就一路顺风。在你与这只酒桶之间，我觉得后者的形貌顺眼多了，所以我回去欣赏它，你别介意。~
== C0KVNP05 ~哼……埃克瑟尔，看你这副轻浮能撑多久。我承认，我没想到你能找着比我更能干的手。这一趟是意外的挫折。~
== C0KVNP05 ~你，雇佣兵。你可反对考虑换个差事？你眼下这雇主，就他现在这境况看，总不会付你*那么*多吧。~
== C0KVEL ~省你这口气。~
== C0KVNP05 ~是你的损失。~
== C0KVNP05 ~我们还会再见，埃克瑟尔。你如今踩到铁王座的地界上了，也许还踩到更大的东西。最好别后悔。~
== C0KVNP01 ~再会，奥克斯利。~
DO ~ClearAllActions()
StartCutSceneMode()
SmallWait(2)
ActionOverride("C0KVNP05",EscapeArea())
ActionOverride("C0KVNP06",EscapeArea())
ActionOverride("C0KVNP07",EscapeArea())
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",12)~ THEN C0KVNP01 KVEL-START-12
~难以置信……他一向如此。每回都叫我血往上涌。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",13)~
== C0KVNP01 ~听我说，克维尔……关于他开的那个价。我知道你信得过，可奥克斯利说他能付得比我这契约多得多，这话不假。我不信这是最后一回见着他，所以他若再跟你提……~
== C0KVEL ~你怕我不守契约？~
== C0KVNP01 ~我只是说……你跟我说过你唯一的目标是活着，所以……唉，若——~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(2)
ActionOverride("C0KVEL",MoveToPoint([289.360]))
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",13)~ THEN C0KVNP01 KVEL-START-13
~你——你去哪儿？~
DO ~SetGlobal("C0KvelBegin","GLOBAL",14)~
== C0KVEL ~去洗手。~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",14)~ THEN C0KVNP01 KVEL-START-14
~我不该说那话。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",15)~
END
  ++ ~你不觉得他改了主意，跑去投你仇家了？~ EXTERN C0KVNP01 KVEL-START-14-1
  ++ ~我希望你知道自己在干什么，这样去激一个据说那么有势力的人。~ EXTERN C0KVNP01 KVEL-START-14-2
  ++ ~我看我待得太久、看得太多了。我该走了。~ EXTERN C0KVNP01 KVEL-START-14-3

CHAIN C0KVNP01 KVEL-START-14-1
~不，我比那更懂克维尔。疑他的品性是我的错。他真只是去洗手了，多半还会私下咒我一阵。~
EXTERN C0KVNP01 KVEL-START-14-3

CHAIN C0KVNP01 KVEL-START-14-2
~酒意散了些，连我自己都不大确定那是不是个好主意。可我若不想毁了达库尔特的名声，总得撑住点体面。~
= ~再说，我也不后悔看见奥克斯利脸上那副得意被抹掉，哪怕这意味着今日之后我要变成十足的疑心病。~
EXTERN C0KVNP01 KVEL-START-14-3

CHAIN C0KVNP01 KVEL-START-14-3
~*叹气* 叫你看这些，对不住，<CHARNAME>。商人的日子就是这样，不过近来的乱局大概把火气烧得更旺了。聪明的做法是一走了之，可正如克维尔会跟我说的，我不是个聪明人。~
= ~只是别跟铁王座搅到一处，<CHARNAME>。不管你觉得他们有什么好处，都不值。这劝告不收钱。~
= ~你能不能……替我去看看克维尔？我有点担心他把我的话往心里去了。我宁愿他别一个人在外头待太久。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",15)~ THEN C0KVEL KVEL-START-15
~你有话要说？没有的话，我请你让开。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",16)~
END
  ++ ~抱歉。~ + KVEL-START-15-1
  ++ ~你刚才在做什么？~ + KVEL-START-15-1A
  ++ ~我看见你没戴头盔。~ + KVEL-START-15-2
//  ++ ~About your employer, Ecthel...~ + KVEL-START-15-

CHAIN C0KVEL KVEL-START-15-1
~嗯。~
DO ~EscapeAreaObject("Door4809")~ EXIT

CHAIN C0KVEL KVEL-START-15-1A
~如我先前所说，洗手。或者你以为我打算带着敌人的血过完这一天？~
END
  ++ ~不，我不是那个意思。我这就让开。~ + KVEL-START-15-1
  ++ ~只是我看见你又把头盔戴回去了。~ + KVEL-START-15-2
  ++ ~我们何不直说？我看见了你的头发和手的颜色。我知道你是卓尔。~ + KVEL-START-15-3

CHAIN C0KVEL KVEL-START-15-2
~……~
DO ~EscapeAreaObject("Door4809")~
= ~然后呢？~
END
  ++ ~我没看清你的脸，可我看见了你的手和头发。你是卓尔。~ + KVEL-START-15-3
  ++ ~说实话，我疑心了一阵子，可看见你那深色的皮肤就确定了。~ + KVEL-START-15-3
  ++ ~没什么。当我没提。~ + KVEL-START-15-1

CHAIN C0KVEL KVEL-START-15-3
~说重点。我还有差事。~
== %VICONIA_JOINED% IF ~InParty("VICONIA")~ THEN ~去效忠一个寻常的人类醉鬼？你跌得真狠，男性。~
== C0KVEL IF ~InParty("VICONIA")~ THEN ~就我所见，不比你狠。~
END
  ++ ~你不否认？~ + KVEL-START-15-4
  ++ ~一个卓尔给个寻常商人当护卫，是在做什么？~ + KVEL-START-15-5
  ++ ~在地表活，还得永远戴着那顶盔，想必不易。~ + KVEL-START-15-6
  ++ ~卓尔的恶名人人皆知。我不信你。~ + KVEL-START-15-7
  ++ ~我不是要说什么道理。只是告诉你我知道。~ + KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-4
~眼前这般情形，我有什么话能驳你？~
EXTERN C0KVEL KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-5
~我签了契约，就跟任何雇佣剑客一样。在地表，身边只有一把刀的人，得自己养活自己。尤其是个卓尔。~
EXTERN C0KVEL KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-6
~我为活命做该做的事，如此而已。不过你倒可以自幸，永远不必过这样的日子。~
EXTERN C0KVEL KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-7
~那你倒走运，你不是我的责任。我有契约，就按契约条款效力。这能不能叫你信，不干我的事。~
EXTERN C0KVEL KVEL-START-15-8

CHAIN C0KVEL KVEL-START-15-8
~你知道了我一桩真事，随你怎么用。你甚至可以用它来对付我……可别以为我没准备好面对你以为能加给我的任何后果。~
DO ~SetGlobal("C0KvelKnowsDrow","GLOBAL",1)~ 
= ~如今我得回我雇主那儿去了。~
DO ~EscapeAreaObject("Door4809")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",17)~ THEN C0KVEL KVEL-START-17-KVELTALKS
~你有话要说，就跟埃克瑟尔说，除非你非要从我这儿得答案。~
END
  + ~Global("C0KvelKnowsDrow","GLOBAL",1)
     Global("C0KvelAsksDrow","GLOBAL",0)~ + ~埃克瑟尔知道你是卓尔么？~ + KVEL-START-17-KVELTALKS-1
  ++ ~你和埃克瑟尔这层差事是怎么处起来的？~ + KVEL-START-17-KVELTALKS-2
  ++ ~你对付那些半兽人蛮子，真叫人佩服。~ + KVEL-START-17-KVELTALKS-3
  ++ ~那你到底有什么本事？我见你既使剑又施法。~ + KVEL-START-17-KVELTALKS-4
  ++ ~好。我不扰你了。~ EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-1
~你若这般在意，去问他。~
EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-2
~你若真想知道，该从埃克瑟尔那儿听。他若不肯说，我也一个字不说。~
EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-3
~它们哪称得上对手。不过是拴着的狗，听着主人的令又叫又冲。要驯服，只需一只重手。~
END
  ++ ~那你就不同了？~ + KVEL-START-17-KVELTALKS-3-1
  ++ ~可你不也是个雇佣剑客？~ + KVEL-START-17-KVELTALKS-3-2
  ++ ~说得过去。~ EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-3-1
~差得够多。~
EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-3-2
~我的刀是为钱出的，可我也看清出钱的那只手背后是张什么脸。人若要有目的地活，就不能只在桌边向任何肯听的人讨些残渣。~
EXIT

CHAIN C0KVEL KVEL-START-17-KVELTALKS-4
~我是个剑客。你看见的别的本事，不管是奥术还是机巧，都只是从前为活命磨出来的。它们是器具，到今日仍为我所用。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",17)~ THEN C0KVNP01 KVEL-START-17
~又见了，<CHARNAME>。你可有什么需要？倒不是说我如今这境况能给你什么。~
END
  ++ ~你眼下往后有什么打算？~ + KVEL-START-17-1
  + ~Global("C0KvelKnowsDrow","GLOBAL",1)
     Global("C0KvelAsksDrow","GLOBAL",0)~ + ~你可知你信重的护卫其实是个暗精灵？~ DO ~SetGlobal("C0KvelAsksDrow","GLOBAL",1)~ + KVEL-START-17-2
  ++ ~我能帮你什么么？~ + KVEL-START-17-3
  ++ ~你确定不担心奥克斯利？~ + KVEL-START-17-4
  ++ ~跟我说说铁王座。~ + KVEL-START-17-5
  ++ ~算了。我这就走。~ EXIT

CHAIN C0KVNP01 KVEL-START-17-1
~*呻吟* 我要是知道就好了。我父亲若知道我的车队出了什么事，非杀了我不可……前提是我没先横尸街头。~
== C0KVNP01 ~唉，至少这一头我可以算自己安稳，只要克维尔护着我。可我看不出有什么路子能立时得利。~
== C0KVNP01 ~我看等我收拾停当就往博德之门去，这决定跟别的也差不多。我可以付钱跟着另一支北上的商队……可那得等。~
== C0KVNP01 ~眼下，我打算喝醉。一杯接一杯。~
EXIT

CHAIN C0KVNP01 KVEL-START-17-2
~啊，哈哈，什么？定是喝多了，可我怕我没听清你的话，你能不能靠近些再说一遍？~
== C0KVNP01 ~*低声* 那么，<CHARNAME>，我不必问你从哪儿知道的，可我求你把这消息只留在我们俩之间。我跟克维尔合伙正好，我不需要有什么事把它毁了。~
END
  ++ ~你早就知道？~ + KVEL-START-17-2-1
  ++ ~你怎么能这么信他？~ + KVEL-START-17-2-2
  ++ ~我看他在利用你。~ + KVEL-START-17-2-2

CHAIN C0KVNP01 KVEL-START-17-2-1
~我不是靠当傻子才在商人这行站住的——是，虽说近来倒了霉，我还是当自己算成功，别那样看我——你知道么。我签他契约之前，就知道克维尔是什么身份。~
EXTERN C0KVNP01 KVEL-START-17-2-2

CHAIN C0KVNP01 KVEL-START-17-2-2
~我们有……一层紧密的共事关系，虽说他从不那样看。总之这么说吧：凭我对人的一般眼力，加上我手头能用的那点魔法见识，我可以向你保证克维尔信得过——不管卓尔那寻常的、说实在也不算冤的名声叫你信什么。~
= ~话虽如此，我知道许多人不会那样看，所以他戴着那顶盔才是必要的防备。你只须放心，我留他在身边是知道自己在做什么。这该够了。~
EXIT

CHAIN C0KVNP01 KVEL-START-17-3
~多谢你，可我不能跟你开这个口。说来也许蠢，我到底有商人的自尊，靠别人的慷慨会伤它，更别说若别的商人知道了，我往后要担的后果。不，你已做得够多了。~
EXIT

CHAIN C0KVNP01 KVEL-START-17-4
~就算我担心，我也没法当着他们的面露出这神色，是吧？*叹气* 这里的事一传出去，我要给自己惹一屁股麻烦，可那是我的事，不是你的。多谢你关心。~
EXIT

CHAIN C0KVNP01 KVEL-START-17-5
~他们有什么好说的？他们来自森比亚，你若对那地方略有所知，就该知道他们那些人靠什么过活：把身在下位的人压弯了腰，把他们的一切都刮干，只为自己填腰包。~
= ~他们的法子也不见得多有巧思，只要你稍想一想。所要的只有一样：不要任何道义、顾忌，也不去想搅乱诸域、让圈外人人咒你后七代的后果。可他们有势力，连我也不能否认。尤其瑞尔塔·安切夫。~
= ~我只要还留在剑湾，多半就得睁一只眼睡觉……可我有克维尔。我确信单凭他就能护我躲过最坏的。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",18)~ THEN C0KVEL KVEL-START-18-KVEL
~跟埃克瑟尔说去。他见你定会高兴得多。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",18)~ THEN C0KVNP01 KVEL-START-18
~<CHARNAME>，我的好朋友！运数似乎总叫我们一再撞上，我倒不是抱怨。我信你这一路走得还顺？~
DO ~SetGlobal("C0KvelBegin","GLOBAL",19)~
END
  ++ ~还算顺。见着你真好，埃克瑟尔。~ + KVEL-START-18-1
  ++ ~我看你平安到博德之门了。~ + KVEL-START-18-2

CHAIN C0KVNP01 KVEL-START-18-1
~我也有同感。这一路多难走，可凭克维尔的刀和我的巧舌，我到底平平安安到了。我的前程看着真亮。~
EXTERN C0KVEL KVEL-START-18-3

CHAIN C0KVNP01 KVEL-START-18-2
~这一路确是难走，可凭克维尔的刀和我的巧舌，我到底平平安安到了。我的前程看着真亮。~
EXTERN C0KVEL KVEL-START-18-3

CHAIN C0KVEL KVEL-START-18-3
~他倒方便地略去了这一段：他得向店主求了六回，才凭袋里那点可怜剩钱付上房钱。~
== C0KVNP01 ~*清嗓*！克维尔，我付钱是买你的力气，不是买你的嘴，至少不是明着买。看在我的份上，少说两句，行么？~
== C0KVEL ~……~
== C0KVNP01 ~天哪，可我这信重的护卫，似乎只在我不要他说话时才开口，别的时候静得像块石头。总之，你来博德之门做什么？~
END
  ++ ~我来查铁王座。~ EXTERN C0KVNP01 KVEL-START-18-4
  ++ ~只是逛逛。~ EXTERN C0KVNP01 KVEL-START-18-7
  ++ ~那是我自己的事。~ EXTERN C0KVNP01 KVEL-START-18-8

CHAIN C0KVNP01 KVEL-START-18-4
~铁……~
== C0KVNP01 ~克维尔，请确保没人在听我们说话。~
== C0KVEL ~好。~
== C0KVNP01 ~<CHARNAME>，我希望你明白自己在往什么里走。铁王座不是那种闲下来数钱的寻常贪心商号。你得明白，有人只因*不经意*得罪了他们，就死得极惨。不管你想着要做什么，我希望你都想过它到底值不值。~
END
  ++ ~你不也拒了奥克斯利那个“要么入伙、要么别进铁王座地界”的要求么？~ EXTERN C0KVNP01 KVEL-START-18-5
  ++ ~追我命的人多到我数不清。几个商人得意过了头，我还应付得来。~ EXTERN C0KVNP01 KVEL-START-18-6
  ++ ~我与铁王座的事是我自己的烦心。我只是告诉你一声，好让你离他们远些。~ EXTERN C0KVNP01 KVEL-START-18-8

CHAIN C0KVNP01 KVEL-START-18-5
~呃……好吧，是。我忘了你也经历了那场难看的戏。可那是不得已。我还能怎样，为几个金币和一点假安稳就把品性卖了？~
== C0KVEL ~啧。~
== C0KVNP01 ~我听见了。你那顶盔可藏不住每一声嗤笑。~
== C0KVNP01 ~再说，我在城里不是来公然跟他们作对的，我看我未必在他们的眼里。顶多他们再派奥克斯利带些更大的打手来敲我一回，可你已见过我护卫有多大本事。~
== C0KVNP01 ~<CHARNAME>，我可没陷进你那么滚烫的浑水里。你在玩一局险棋，我希望你明白。据我听说，斗篷森林那桩事你掺了手。那多半已叫你成了赏金猎人的目标。~
END
  ++ ~反正赏金猎人一向追着我。我得把这事的底查清。~ EXTERN C0KVNP01 KVEL-START-18-6
  ++ ~我与铁王座的事是我自己的烦心。我只是告诉你一声，好让你离他们远些。~ EXTERN C0KVNP01 KVEL-START-18-8

CHAIN C0KVNP01 KVEL-START-18-6
~你还真是下了决心。唉，我若拦不住你，至少能给你指个对方向，若你还没摸着什么头绪。~
= ~我一直尽量不显眼，免得招铁王座的注意，可我跟城里的商人还有些交情。他们都说七星商会近来在首领上出了蹊跷的变动。贾索人影不见，他们的买卖往来也……古怪，这么说都算客气。~
= ~可真正最好的路子，大概是去找燃焰之拳。斯卡是个诚实可靠的指挥官，你若想让查办顺当，最要紧的就是得他相助。~
= ~我能告诉你的就这么多。我愿能多帮些，可我有自己的担子，不能去惹太多麻烦。也许我说的你都已知了，可若有一丝用处……~
EXTERN C0KVNP01 KVEL-START-18-9

CHAIN C0KVNP01 KVEL-START-18-7
~逛逛，是么？唉，换在别的日子，我倒乐意带你去看最好的景致，可我一直藏着行迹，没法公然在城里四处走。不过记得去看看市集与贡德神殿，那两处你可别错过。~
EXTERN C0KVNP01 KVEL-START-18-9

CHAIN C0KVNP01 KVEL-START-18-8
~说得过去，打探你的事不是我该做的，所以我也只能盼你一切顺顺当当。你帮过我脱出困境，我觉得欠你些什么。~
EXTERN C0KVNP01 KVEL-START-18-9

CHAIN C0KVNP01 KVEL-START-18-9
~总之，虽说我盼从今往后*避开*纷争，<CHARNAME>，我祝你诸事顺遂，所以……~
== C0KVEL ~……！埃克瑟尔！让开！快！~
== C0KVNP01 ~什么？怎么了？~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC02")~ EXIT


CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",21)~ THEN C0KVNP01 KVEL-START-21
~托沃金、提摩拉，还有我能想到的所有机运之神……这到底是什么？！~
DO ~SetGlobal("C0KvelBegin","GLOBAL",22)~
== C0KVNP01 ~我惯了被人威胁，可不是这样：箭不知从哪儿飞来，蛮子穿着板甲……~
== C0KVNP01 ~可这还不是最糟的。我盼只是酒和光晃了我的眼，可那刺客兜帽底下……他是个卓尔，是不是？~
END
  ++ ~是，他是。~ EXTERN C0KVNP01 KVEL-START-21-1
  + ~Global("C0KvelKnowsDrow","GLOBAL",1)~ + ~我说不准。你怎么看，“克维尔”？他看着眼熟么？~ EXTERN C0KVEL KVEL-START-21-2
  + ~Global("C0KvelKnowsDrow","GLOBAL",1)~ + ~何不问你自己那个卓尔看见了什么？~ EXTERN C0KVEL KVEL-START-21-2

CHAIN C0KVNP01 KVEL-START-21-1
~哎！*拍*~ [C0KVSF3]
== C0KVNP01 ~我不是在做梦吧。克维尔？~
EXTERN C0KVEL KVEL-START-21-4

CHAIN C0KVEL KVEL-START-21-2
~……~
== C0KVNP01 ~你觉得克维尔……？！不。不，我不信。~
END
IF ~Global("C0KvelAsksDrow","GLOBAL",0)~ EXTERN C0KVNP01 KVEL-START-21-2A
IF ~!Global("C0KvelAsksDrow","GLOBAL",0)~ EXTERN C0KVNP01 KVEL-START-21-3

CHAIN C0KVNP01 KVEL-START-21-2A
~我不问你从哪儿知道的、知道了多久，可听我说，<CHARNAME>……~
EXTERN C0KVNP01 KVEL-START-21-3

CHAIN C0KVNP01 KVEL-START-21-3
~我知道这看着不像巧合，可我认识克维尔比你久，我说愿把命托给他，是真话。就算他跟那卓尔刺客有些牵连，也不等于他们是同伙。你看见他先前的反应了。我不信他会背叛我。~
== C0KVEL ~埃克瑟尔，我可以替自己说话。你说得对，不过这位<PRO_MANWOMAN><CHARNAME>信不信，于我无关。~
== C0KVEL ~可就眼前的情形看，有一样我不能否认。~
EXTERN C0KVEL KVEL-START-21-4

CHAIN C0KVEL KVEL-START-21-4
~我确实认得那个卓尔。~
DO ~CreateCreature("C0KVDR01",[651.622],E)~
== C0KVNP01 ~你认得？他叫……等等，我们不能在这儿说。我私下认得阿莉丝，我们可以上楼去要个僻静地方——~ [ACT_07]
END
  ++ ~你背后！~ EXTERN C0KVNP01 KVEL-START-21-5
  ++ ~那卓尔又来了！~ EXTERN C0KVNP01 KVEL-START-21-5
  ++ ~（不作声）~ EXTERN C0KVEL KVEL-START-21-6

CHAIN C0KVNP01 KVEL-START-21-5
~什么？！~
EXTERN C0KVEL KVEL-START-21-6

CHAIN C0KVEL KVEL-START-21-6
~……该死！~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC04")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",22)~ THEN C0KVEL KVEL-START-22
~嗯……你受伤了么，埃克瑟尔？~
DO ~SetGlobal("C0KvelBegin","GLOBAL",23)~
== C0KVNP01 ~不，我……我还好，我想。多谢你，克维尔，可是……~
== C0KVEL ~嗯？~
== C0KVNP01 ~可……可——哦，天哪。你的头盔……你的脸……！~
== C0KVEL ~我的脸……？~
== C0KVEL ~……~
== C0KVEL ~……该死的铁。~
== C0KVNP01 ~我们……我们上楼去。人会少些……我疑心这儿没人看清了你。我去叫阿莉丝务必别让人跟上来，也许再要些药膏……走吧。你也来，<CHARNAME>。~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC05")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",23)~ THEN C0KVNP01 KVEL-START-23
~你的脸好得怎么样，克维尔？看来药膏止住了血。不过疤要淡下去还久。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",24)~
== C0KVEL ~再多一道罢了。~
== C0KVNP01 ~这一切……恕我失陪一下，<CHARNAME>。我连该从哪儿说起都不知道。~
END
IF ~Global("C0KvelAsksDrow","GLOBAL",1)~ EXTERN C0KVNP01 KVEL-START-23-A
IF ~!Global("C0KvelAsksDrow","GLOBAL",1)~ EXTERN C0KVNP01 KVEL-START-23-B

CHAIN C0KVNP01 KVEL-START-23-A
~你当然已知道克维尔的真相，而你至今还在帮忙，说明我信得过你，可是……~
EXTERN C0KVEL KVEL-START-23-C

CHAIN C0KVNP01 KVEL-START-23-B
~关于克维尔……真实的身份，我希望你能保密。我们的契约里说好，由我护住他的身份不外泄，所以我才最不愿这事露出来。~
EXTERN C0KVEL KVEL-START-23-C

CHAIN C0KVEL KVEL-START-23-C
~你若不知说什么，埃克瑟尔，我替你把话挑明。~
== C0KVNP01 ~克维尔，等等……~
== C0KVEL ~我们的契约到此为止。~
== C0KVNP01 ~克维尔！~
== C0KVEL ~条款写得明白：我的身份若在地表人面前泄露，不管是什么因由，我们的契约即作废。~
== C0KVNP01 ~可那不等于——~
== C0KVEL ~虽说我只碎了头盔的一部分，可有些人类已看见我的脸。凭他们的话，更多人会知道。我若还跟着你，我们俩都会越来越险。~
== C0KVNP01 ~这都是……这是我的错。不，是这该死的铁荒，我该趁好铁终于又能出口时，安排一顶更好的头盔。对不住。~
== C0KVEL ~我看不管怎样你也腾不出那笔钱。我不怪你，埃克瑟尔。可我们从此各走各的路。~
== C0KVNP01 ~克维尔，等等！听我说，我们还能……还能重议。这是一次挫折，可我仍需要你，需要你的本事。没什么拦着我们另写一份契约。我顶得住那阵风头——依我算，留下你值。~
== C0KVEL ~不。~
== C0KVNP01 ~别这么犟，你这该死的精灵！想一想——我们共事这么久，见面那日我救了你的命，而你后来无数回救了我。你上哪儿再找一段这样稳当的共事关系，尤其如今人们都会知道你头盔底下是什么？~
== C0KVNP01 ~留下吧，我们能把这事弄明白。就当我已经在求你了！~
== C0KVEL ~看来你真是急了。也不明白眼前的真威胁。好，埃克瑟尔，我跟你直说。~
== C0KVEL ~你方才想必看见了那刺客的脸。他是卓尔，跟我一样。这就是说，这些袭击已不只是冲你的命来的。回过头想，这本该早些看清。~
== C0KVEL ~你还记得奥罗格兽那场伏击么？那种兽更与幽暗地域同源，而非地表。而它们的装备好得反常，甚至有爆炸药水来对付我们。~
== C0KVNP01 ~可那也许只是巧——~
== C0KVEL ~还有那刺客。我认得他胸前那家族徽记。是埃林德林的扎尔伊昂家，与我同城。真正的目标是我，你继续与我往来，就是往死里走。~
== C0KVNP01 ~那又怎样？你以为这就能叫我了结契约、图我自己安稳？你把我们地表人看成什么了？~
== C0KVNP01 ~克维尔，这些年我从没弄清你到底怎么看我，可我现在能告诉你，我一向拿你当朋友！知道从今往后是*你*一个人面对危难，我可不会更好受！~
== C0KVEL ~……~
== C0KVNP01 ~……~
== C0KVEL ~我们从来就没看法一致过。~
== C0KVNP01 ~五年里，一次也没有。~
== C0KVEL ~啧。我倒想知道，这份硬气在要紧的时候都躲哪儿去了。你若非要听，埃克瑟尔，我一向觉得你是个软弱的地表人，没我护着活不过一年。也许我错了一半。~
== C0KVNP01 ~真巧。我刚在想，凭你那点待人接物的本事，没了我，你怕也撑不过一年，就得另找个深洞躲起来。~
== C0KVEL ~你嘴上本事无可否认，可结果已定。埃克瑟尔，我打算如今就与你分手，而你没有那个道理，也没有那个本事留住我。~
END
 IF ~OR(2)
 CheckStatGT(Player1,17,CHR)
 ReputationGT(Player1,14)~ EXTERN C0KVNP01 KVEL-START-23-1
 IF ~!CheckStatGT(Player1,17,CHR)
 !ReputationGT(Player1,14)~ EXTERN C0KVNP01 KVEL-START-23-LEAVE

CHAIN C0KVNP01 KVEL-START-23-LEAVE
~……哈。你说得对。我一向认了：你哪天真想走，我一件法子也没有。我只是一直尽力让你愿意留下。~
EXTERN C0KVNP01 KVEL-START-23-LEAVE-2

CHAIN C0KVNP01 KVEL-START-23-LEAVE-2
~好，随你吧，你这犟骨头。我不确定还能不能再见到你活着，可我看这就是告别了。为我们共事这几年，干一杯。~
== C0KVNP01 ~*吞咽*~ [GAM_07]
== C0KVEL ~*吞咽*~ [GAM_07]
== C0KVEL ~再会，埃克瑟尔。虽说我的判断告诉我这不大可能，我仍盼你活着，尽管你蠢得不像话。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",-1)
  SetGlobal("C0KvelLeft","GLOBAL",1)
  ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC15")~ EXIT

CHAIN C0KVNP01 KVEL-START-23-1
~也许你说得对。我给不了你足够的好处留住你。可我觉得你小看我了，克维尔。我有一个法子，还能把这事办得叫我们都称心。~
== C0KVNP01 IF ~ReputationGT(Player1,14)~ THEN ~<CHARNAME>，我听说你在剑湾各地名声都好。你行过许多善事，因而得了人心。我自己的名头也许护不住克维尔，你的就不一样了。~
== C0KVNP01 IF ~!ReputationGT(Player1,14) CheckStatGT(Player1,17,CHR)~ THEN ~<CHARNAME>，我见过你在战阵上与人品上的强处。就算有那对卓尔的偏见，这也足以保克维尔安稳。我本盼你的名头被更多人称赞，不过这也可作替代。~
== C0KVNP01 ~我可以另写一份契约，把克维尔转为受你雇的佣兵。不管他怎么看我，我了解他够深，知道他只要应下条款，就必守自己的话。他的工钱当然由我担。我只求你护他。~
== C0KVNP01 ~我知道这对你开口很重。就算你的好名声，也没法全然抵住庇护一个卓尔的污名。可这是我一向唯一没后悔过的投注，我向你保证，你要担的风头只在短期，反过来，你身边会多一个无可替代的盟友。~
END
  ++ ~你确定你愿意？就算你这么办，他也不再护着你了。~ + KVEL-START-23-2
  ++ ~埃克瑟尔，你若需要这样，那我担得起我名声上出什么事。~ + KVEL-START-23-3
  ++ ~我身边倒可以用一个强壮的卓尔武士……~ + KVEL-START-23-3
  ++ ~埃克瑟尔，我没兴趣为了庇护一个卓尔污了我的好名声，算了吧。~ + KVEL-START-23-4

CHAIN C0KVNP01 KVEL-START-23-2
~我不需要他护我，我只要这蠢货活着。我留他在身边，不只为我自己，我希望你明白。没他在，日子当然难过，可我在生意那头……还有别的人脉。~
= ~只要我不必夜里睡不着、怕这精灵死在暴徒或哪个正义狂手里，我往前走就安心些。就帮我这一回。~
END
  ++ ~埃克瑟尔，你若需要这样，那我担得起我名声上出什么事。~ + KVEL-START-23-3
  ++ ~我身边倒可以用一个强壮的卓尔武士……~ + KVEL-START-23-3
  ++ ~埃克瑟尔，我没兴趣为了庇护一个卓尔污了我的好名声，算了吧。~ + KVEL-START-23-4

CHAIN C0KVNP01 KVEL-START-23-3
~你肯接？多谢你。我只要这儿这混蛋也应下。克维尔，这对你够么？~
== C0KVEL ~……~
== C0KVEL ~你想清楚了？~
== C0KVNP01 ~想得清清楚楚。~
== C0KVEL ~不只为你。~
END
  + ~ReputationGT(Player1,14)~ + ~我确信我攒下的好名声够用。~ EXTERN C0KVEL KVEL-START-23-5
  ++ ~这对我也有好处。~ EXTERN C0KVEL KVEL-START-23-5
  ++ ~再一想，我觉得这不是个好主意。~ EXTERN C0KVNP01 KVEL-START-23-4

CHAIN C0KVNP01 KVEL-START-23-4
~该死。这是我最后的法子，可我看我逼不了你。毕竟这事与你没有私人的利害。~
EXTERN C0KVNP01 KVEL-START-23-LEAVE-2

CHAIN C0KVEL KVEL-START-23-5
~我看我没有理由拒绝。你若有那个自信，或者说，有那个蠢劲，觉得这于你有赚，那我就把刀卖给你这桩事，<CHARNAME>。~
== C0KVNP01 ~总算。这也许是我头一回说动你让步。呃……阿莉丝女士，你可肯慷慨借我一副笔与羊皮纸？~
== ALYTH ~一个商人要向别人讨他吃饭的家伙，真是难看……梳妆台上那些你拿去用吧，埃克瑟尔。只记住我会把它记在你的账上。~
== C0KVNP01 ~哈哈……我一有机会就还你，女士。那么，这契约写起来不长，只要确保把克维尔爱钻的那些空子全堵上……~
== C0KVNP01 ~如今该你们俩签了。~
== C0KVEL ~……~
== C0KVNP01 ~啊？你这回签的是真名，“克维拉林”？~
== C0KVEL ~也无不可。~
== C0KVNP01 ~说得过去。那么轮到你了，<CHARNAME>……？~
END
  + ~CheckStatGT(Player1,8,INT)~ + ~签好了。~ EXTERN C0KVNP01 KVEL-START-23-6
  + ~CheckStatGT(Player1,8,INT)~ + ~我字写得极难看。你可否代我签？~ EXTERN C0KVNP01 KVEL-START-23-7
  + ~CheckStatLT(Player1,9,INT)~ + ~我，呃……其实不会写字。读也不会。你就替我签了吧？~ EXTERN C0KVNP01 KVEL-START-23-7

CHAIN C0KVNP01 KVEL-START-23-6
~作为这桩买卖的第三方，我宣布此契约就此生效。Kvel 也好，K'Vel 也好，克维拉林也好，随他喜欢哪个名，从今往后为你效力。你不会后悔的，<CHARNAME>，我保证。~
== C0KVEL ~只要<PRO_HESHE>不做叫我同样后悔的事。~
== C0KVNP01 ~我确信<PRO_HESHE>不会，朋友，偶尔也信一信地表人。你会发现肯与你公道往来的人，比你想的多。~
== C0KVEL ~哼。~
== C0KVNP01 ~既然这事了了，我看我不能再把正经差事拖下去了。我在这儿能做的都做了。往后再出什么事，都在你身上了，克维尔。只别把命送了。~
== C0KVEL ~知道看顾你的性命不再是我的担子，我大概能睡得安稳些。~
== C0KVNP01 ~嘿。也许你说得对。~
== C0KVNP01 ~我想我先去一趟提摩拉的神殿，试着抵一抵这倒霉运，然后总算该去商人联合会了。他们若也准你进去，我们也许在那儿还能见着，嗯？好运，<CHARNAME>，还有，看在我的份上，照顾好克维尔。~
DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("C0KVC14")~ EXIT

CHAIN C0KVNP01 KVEL-START-23-7
~啊，是这样么？我不评判。那我就签你的名……~
EXTERN C0KVNP01 KVEL-START-23-6

CHAIN IF WEIGHT #-1 ~Global("C0KvelLeft","GLOBAL",1)~ THEN C0KVNP01 KVEL-START-LEFT
~五年。谁知道还能不能再会。至少他还念着情分，与我碰了一杯。~
DO ~SetGlobal("C0KvelLeft","GLOBAL",2)~
END
  ++ ~你确定不该去追他？~ EXTERN C0KVNP01 KVEL-START-LEFT-1
  ++ ~那你如今打算怎么办？~ EXTERN C0KVNP01 KVEL-START-LEFT-2
  ++ ~我希望你没忘了我帮你这一份。~ EXTERN C0KVNP01 KVEL-START-LEFT-3

CHAIN C0KVNP01 KVEL-START-LEFT-1
~我这会儿若去追，多半会先被打昏，醒来发现自己被捆在精灵之歌的地窖里，等人来找。不，他走了。~
EXTERN C0KVNP01 KVEL-START-LEFT-3

CHAIN C0KVNP01 KVEL-START-LEFT-2
~我去写信给几个熟人，看能不能摸清他往哪儿去。倒不是抱多大指望。然后……~
= ~然后我……另找个人替他，我想。我自己的日子总还得过，有没有他都一样。~
EXTERN C0KVNP01 KVEL-START-LEFT-3

CHAIN C0KVNP01 KVEL-START-LEFT-3
~拿着，<CHARNAME>，收下这个。这金子我原另有打算……不过你拿去也一样。你也救过我的命。~
DO ~GiveGoldForce(3000)~
= ~那么，我还有事要办。认识你真好，<CHARNAME>。也许我们还会再见。~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",24)~ THEN C0KVEL KVEL-START-24
~他一向爱听自己说话。尤其是得意的时候。~
DO ~SetGlobal("C0KvelBegin","GLOBAL",25)~
END
  ++ ~你确定你要这个？这契约不必真有什么意思。~ + KVEL-START-24-1
  ++ ~那我们如今共事了，你愿意我怎么称你？~ + KVEL-START-24-2
  ++ ~那就快些办事。走吧，雇佣剑客。~ + KVEL-START-24-3
  ++ ~我这会儿其实不需要你跟着。你先等着，行么？~ + KVEL-START-24-4

CHAIN C0KVEL KVEL-START-24-1
~我尽量守信。也许你不指望卓尔如此，可这事我只有这一句。~
EXTERN C0KVEL KVEL-START-25

CHAIN C0KVEL KVEL-START-24-2
~叫我克维尔就行。~
EXTERN C0KVEL KVEL-START-25

CHAIN C0KVEL KVEL-START-24-3
~如你所命。你如今是我雇主了，<CHARNAME>。只要你不背我们的条款，你就不必疑我的本事，也不必疑我的忠心。~
DO ~JoinParty()~ EXIT

CHAIN C0KVEL KVEL-START-24-4
~随你。只要契约条款仍在，我就等到你需要我效力。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KvelBegin","GLOBAL",25)~ THEN C0KVEL KVEL-START-25
~你若要，我准备跟着你，你看着办多久都行。~
END
  ++ ~那就跟我来，克维尔。~ EXTERN C0KVEL KVEL-START-24-3
  ++ ~我这会儿不需要你。~ EXTERN C0KVEL KVEL-START-24-4

///

CHAIN IF WEIGHT #-1 ~Global("C0KvelAngeloTorture","GLOBAL",3)~ THEN C0KVELP C0KvelTorture
~你逃出来倒花了不少功夫——嗯。~
DO ~SetGlobal("C0KvelAngeloTorture","GLOBAL",4)~
END
  ++ ~天哪……他们把你怎么了？~ + C0KvelTorture-1
  ++ ~你怎么逃出来的？~ + C0KvelTorture-2
  ++ ~你活着就好。走吧。~ + C0KvelTorture-3

CHAIN C0KVELP C0KvelTorture-1
~没他们该做的那么多——若他们真想让我失能。他们手里没一样东西比得上卓尔女祭司那根触手鞭。~
EXTERN C0KVELP C0KvelTorture-3

CHAIN C0KVELP C0KvelTorture-2
~那些人类低估了我忍痛的能耐，所以我演一场像样的瘫软，轻易就骗过了他们……之后夺了带钥匙的守卫，逃出来也不难。~
EXTERN C0KVELP C0KvelTorture-3

CHAIN C0KVELP C0KvelTorture-3
~我们本不该自投罗网。别指望这样的把戏还能再成一次……唉。我们最好趁还没再被抓走就走。~
DO ~JoinParty()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("%KICKED_OUT%","LOCALS",0)~ THEN C0KVELP KVEL-KICKED
~你如今是要我离开你的队伍一阵？~
END
  ++ ~需要。~ EXTERN C0KVELP KVEL-KICKED-1
  ++ ~不。~ DO ~JoinParty()~ EXIT
  ++ ~我还需要你相助，可你先在这儿等我。~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT

CHAIN C0KVELP KVEL-KICKED-1
~那就这样。我回精灵之歌酒馆去，在那儿等你——店主已答应帮我瞒过别的那些人类。~
DO ~EscapeAreaMove("%bg1_eet_symbol%0112",548,239,NE) SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("%KICKED_OUT%","LOCALS",1)~ THEN C0KVELP KVEL-REJOIN
~你回来了。你若需要我效力，我预备好守约归队。~
END
  ++ ~好。~ EXTERN C0KVELP KVEL-REJOIN-1
  ++ ~我这会儿不需要你。~ EXIT

CHAIN C0KVELP KVEL-REJOIN-1
~遵命。~
DO ~JoinParty() SetGlobal("%KICKED_OUT%","GLOBAL",0)~ EXIT