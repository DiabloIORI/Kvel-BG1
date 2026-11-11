# Kvel / K'Vel（卓尔剑客）汉化说明

模组：`E:\GitHub\Kvel-BG1\Kvel_BG1`　作者 The Artisan　BG:EE + EET（要求含 SoD）
做法：与 Sirene 相同——**就地替换原文件**，不走 tra 的 dump → 译 → schinese 流程。

## 一、为什么要就地改

这个模组的文本不在 `.tra` 里，而是混在三种文件里：

| 载体 | 语法位置 |
|---|---|
| `.d`（WeiDU CHAIN） | `== X ~…~`、行首 `= ~…~`、`== ~…~`、`++ ~…~`、`+ ~…~`、`SAY 键名 ~…~`、`THEN ~…~`、CHAIN 首句裸 `~…~` |
| `.baf` | `DisplayStringHead(x,~…~)`、`SetPlayerSound(A,B,~…~)`（含大量两参式）、`SetName(~…~)` |
| `lib/*.tpa` | `SAY 键名 ~…~`、`RESOLVE_STR_REF(~…~)` |

所以流程是：抽取全部 `~…~` 文本 → 去重编号 → 逐条翻译 → 按**字符偏移**切片替换回原位置。

## 二、规模

- 抽取 **2,782** 处，去重后唯一文本 **2,570** 条，全部译出（缺 0、多 0、重 0）。
- 实际改写 **38** 个文件 + `tra\english\GAME-C0KVEL.TRA`，共 **2,779** 处替换。
- 生成 **39** 个 `.bak` 备份。

主要改动量（前 20）：

| 文件 | 处数 |
|---|---|
| dlg\C02KVELJ.d | 530 |
| dlg\BC0KVEL.d | 512 |
| dlg\C0KVEL.d | 456 |
| dlg\C0KVELJ.d | 292 |
| baf\C02KVELB.baf | 239 |
| dlg\dialog.d | 130 |
| dlg\pid.d | 114 |
| dlg\C02KVEL.d | 83 |
| lib\kvel_bg1.tpa | 75 |
| dlg\soddialog.d | 64 |
| dlg\sodpid.d | 60 |
| lib\kvel_sod.tpa | 50 |
| baf\C0KVFIX.baf | 25 |
| dlg\crossmod\skitianpcs\kale.d | 25 |
| baf\C02KVC07.baf | 21 |
| dlg\crossmod\skitianpcs\emily.d | 17 |
| dlg\crossmod\skitianpcs\vienxay.d | 16 |
| dlg\crossmod\skitianpcs\recorder.d | 13 |
| dlg\crossmod\skitianpcs\helga.d | 12 |
| dlg\crossmod\aura.d | 9 |

其余 crossmod（sirene 8、drake 6）与零散 `.baf`（BD4300 5、BD2000/BD0120-korlasz/C02KVC01 各 2、其余各 1）见 `kvel\_kstats.txt`。

`tra\english\GAME-C0KVEL.TRA` 只有一条，EET 转场用：
`@0 = ~把克维拉林带来，那个卓尔战士/法师/盗贼。~`

## 三、格式与编码（已逐项校验）

- 全部 **UTF-8 无 BOM**，**CRLF 原样保留**（`␤↵␤↵` 这类空行结构 0 差异，行数前后完全一致）。
- `~` 保持英文半角；`~` 之内一律中文全角标点。
- 校验结果：`~` 数前后差异 **0**；行数差异 **0**；半角标点紧贴汉字 **0** 处；占位符缺失 **0**（K0944 曾漏 `<PRO_MANWOMAN>`，已补）。
- 占位符原样保留：`<CHARNAME>`、`<PRO_HESHE>`、`<PRO_HISHER>`、`<PRO_SIRMAAM>`、`<PRO_LADYLORD>`、`<PRO_MANWOMAN>`，以及本模组特有的无前缀 `<MANWOMAN>`。
- 只改游戏内显示文字，**代码一律未动**（`CHAIN IF WEIGHT` 条件、`Global(...)`、`SetPlayerSound` 的资源名与类型、`.bcs/.dlg/.itm` 文件名、`%VAR%`、`DO ~ActionOverride…~` 全部保持英文）。

### 已剔除的 2 条假阳性

抽取器把两条被误当成台词的 trigger 抓了进来，写回时**跳过**，原文原样保留：

```
K0805  !BeenInParty("C0KVEL")
K1089  !CheckStatGT(Player1,13,CHR)
```

## 四、译名

**本模组专名**
K'Vel 克维尔｜K'Velarin 克维拉林｜K'Velarin Au'dayrr 克维拉林·奥达伊尔｜Eryndlyn 埃林德林｜Ecthel Darcourt 埃克瑟尔·达库尔特（Darcourt Enterprises 达库尔特商会）｜Androsz Zaer'iyon 安德罗兹·扎尔伊昂｜Jhan Zaer'iyon 占·扎尔伊昂（the Butcher 屠夫）｜Musaj Zaer'iyon 穆萨吉·扎尔伊昂｜Matron Siv'thra Zaer'iyon 西芙斯拉·扎尔伊昂主母｜House Au'dayrr 奥达伊尔家族｜House Zaer'iyon 扎尔伊昂家族｜House Vin'huett 温胡伊特家族｜Tae'lyon 泰利昂｜Oxley 奥克斯利（Edoras Oxley 埃多拉斯·奥克斯利）｜Gretek 格雷特克｜Bentley Mirrorshade 本特利·米尔沙德｜Ablemarle 阿贝尔玛尔｜Lord Orfred Tonbottom II 奥弗雷德·汤博顿二世领主｜Thay 塞尔｜Luskan 鲁斯坎｜Black Pits 黑坑｜Demonweb Pits 魔索深渊｜Tear of Elysium 极乐之泪｜Spider's Bane 蜘蛛之祸｜ashthorne leaf 灰棘叶｜crusade 圣战军

沿用 Sirene 那套（两模组互为 crossmod，必须一致）：Sirene 塞琳｜Ilmater 伊尔梅特｜Viconia 维康妮亚｜Drizzt Do'Urden 崔斯特·杜垩登｜Zaknafein 扎克纳梵｜Lolth 罗丝｜Ghaunadaur 格乌纳杜尔｜Vhaeraun 维瑞恩｜Seldarine 席尔达林｜Menzoberranzan 魔索布莱城｜Ust Natha 乌斯特·纳萨｜Ched Nasad 切德·纳萨德｜Underdark 幽暗地域｜drow 卓尔｜surfacer 地表人｜iblith（保留原文）｜Kivan of Shilmista 希尔斯塔的基万｜Boo 布布｜Minsc 明斯克｜Jaheira 贾希拉｜Imoen 爱蒙｜Edwin 艾德温｜Kagain 凯根｜Montaron 蒙塔隆｜Xzar 克萨｜Safana 萨法娜｜Dynaheir 狄娜希尔｜Neera 妮拉｜Skie 丝琪｜Tiax 泰亚克斯｜Faldorn 法尔多恩｜Shar-Teel 莎缇尔｜Sarevok 萨拉沃克｜Iron Throne 铁王座｜Elfsong 精灵之歌｜Candlekeep 烛堡｜Dragonspear Castle 龙矛堡｜Waterdeep 深水城｜Cormyr 科米尔｜Evermeet 永聚岛｜Yggdrasil 尤格德拉希尔

**卓尔语 / 精灵语保留原文**，必要处后加括号中文：
`Z'hind lueth elghr`（去死吧）、`suliss`、`z'ress`、`Oloth`、`abbil`、`jaluk`、`darthiir`、`adoy`、`vharcan`、`Tel'Quessir`、`Ilythiiri`、`Aluve`、`Ultrinnan`、`iblith`、`dos lueth usstan phuul abban…`、`Mzilna wael`、`Xundus ultrinnan`、`Ne'kalsa`。

**武器专名保留**：`Ll'enwithel +3`、`Zaatharien +3`；`Vhanz'ress` / 通用语名 `Galeforce` 译「疾风 +3」，说明里两种写法都保留了。

**拟声/动作**：`*sigh*`→`*叹气*`、`*snort*`→`*嗤鼻*`、`*gulp*`→`*吞咽*`、`*munch*`→`*咀嚼*`、`*purr*`→`*呼噜*`、`*burp*`→`*打嗝*`、`*cough*`→`*咳*`、`*sniff*`→`*抽鼻*`；括号动作 `(sigh)`→`（叹气）`、`(smile)`→`（微笑）`。

**双关**保留原词加注，例如 K0113「犯困（drowsy）……卓尔（drow）——看（see）」。

## 五、没有动的地方

- `Setup-Kvel_BG1.tp2` —— 按你历次口径未改。
- 第三方库 `lib\fl#add_kit_ee.tpa`、`alter_script.tpa`、`replace_multiline.tpa`、`liam_bgee_vars.tpa` —— 非游戏内文字，未动。
- `Readme-Kvel_BG1_files`、`Thumbs.db` —— 未动。
- `.are/.cre/.itm/.spl/.bam/.sto/.portraits` 等二进制资源 —— 未动。

## 六、两个遗留点（需要你拍板）

1. **tp2 的三处路径不一致**（未改，仅记录）：`AUTO_TRA` 指向 `%MOD_FOLDER%/translations/%s`，而 tra 实际在 `%MOD_FOLDER%/tra/`；`LANGUAGE ~English~ ~english~ ~%MOD_FOLDER%/tra/english/setup.tra~` 指向的文件不存在（`tra\english\` 下只有 `GAME-C0KVEL.TRA`）；`ALWAYS` 里 INCLUDE 的 `lib/eet.tph`、`lib/functions.tph` 也不存在。如果安装时报「找不到 setup.tra / eet.tph」，根因在这三处，与文本无关。
2. **语言切换**：因为改的是英文源文件本身，装完直接就是中文，不需要切到 schinese；tp2 的语言项也就不会影响文本显示。

## 七、还原方法

每个被改文件旁都有同名 `.bak`。要退回英文，把 `.bak` 覆盖回原文件名即可（39 个，含 TRA）。

## 八、工作区脚本（可复跑）

`C:\Users\yuyou\.doubao\lark-chats\2026-11-09\new-chat-1\kvel\`

| 脚本 | 作用 |
|---|---|
| `_kex.py` | 抽取（`.d` 10 条规则 + `.baf` 4 条 + `.tpa` 2 条）→ `_kraw.tsv` |
| `_kuniq.py` | 去重编号 → `_ksrc.txt`（2570 条唯一原文）、`_kmap.tsv`（位置映射） |
| `_kmerge.py` | 译稿与原文对账（missing / extra / 占位符 / 结构）→ `_kmerge_report.txt` |
| `_ktrigger.py` | 扫描疑似 trigger 假阳性 → `_ktrigger.txt` |
| `_kapply.py` | `dry` 校验 / `write` 按偏移切片写回（自动建 `.bak`） |
| `_kcheck.py` | 写后校验（`~` 数、行数、BOM、残英文、半角标点）→ `_kcheck.txt` |

译稿分片：`_kzh_01.tsv` ~ `_kzh_10.tsv`（`编号<TAB>中文`，`␤`=CR、`↵`=LF、`⇥`=TAB）。
