# Kvel crossmod 依赖与安装顺序

记录时间：Kvel 汉化完成后。数据来源：`lib\crossmod.tpa`、`dlg\crossmod\**`、`Setup-Kvel_BG1.tp2`，以及本机游戏 override 实测。

## 一、安装期代码（`lib\crossmod.tpa`，原样）



```
// K'Vel-Emily
ACTION_IF FILE_EXISTS_IN_GAME ~X3milyB.dlg~
THEN BEGIN
  COMPILE EVALUATE_BUFFER ~%MOD_FOLDER%/dlg/crossmod/skitianpcs/emily.d~
END
// K'Vel-Helga        FILE_EXISTS_IN_GAME ~X3HelgaB.dlg~  →  helga.d
// K'Vel-Kale         FILE_EXISTS_IN_GAME ~X3KaleB.dlg~   →  kale.d
// K'Vel-Recorder     FILE_EXISTS_IN_GAME ~X3RecB.dlg~    →  recorder.d
// K'Vel-Vienxay      FILE_EXISTS_IN_GAME ~X3VienB.dlg~   →  vienxay.d
// K'Vel-Sirene       FILE_EXISTS_IN_GAME ~BC0Siren.dlg~  →  sirene.d
// K'Vel-Drake        FILE_EXISTS_IN_GAME ~BC0Drake.dlg~  →  drake.d
// K'Vel-Aura         FILE_EXISTS_IN_GAME ~BC0Aura.dlg~   →  aura.d
```

（后 7 段结构与第一段完全相同，只换探测文件名与编译目标；原文里后三段的注释都误写成 `// K'Vel-Sirene`，是复制粘贴没改，不影响逻辑。）

## 二、运行期条件（8 个 `.d` 的统一模板）



```
CHAIN IF ~InParty("对方")
See("对方")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("对方",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0Kvel<对方><序号>","GLOBAL",0)~
THEN BC0KVEL <对话标签>
~…~
DO ~SetGlobal("C0Kvel<对方><序号>","GLOBAL",1)~
== BC0KVEL/对方 ~…~
EXIT
```

条件是：两人都在队伍、互相看得见、都没处于无效状态、不在战斗中、视野内无敌人、该段尚未触发过（用 Global 变量一次性开关）。

## 三、为什么顺序是硬性的，不是 "少点内容" 而已

`== BC0SIREN ~…~`、`== BC0DRAKE ~…~`、`== X3KALEB ~…~` 这些行是**往对方的 .dlg 里追加对话状态**。对方 dlg 不存在时，WeiDU 编译这段会直接报错 —— 整个 Kvel 组件装不上并回滚。

所以 `crossmod.tpa` 的 `FILE_EXISTS_IN_GAME` 是 "防止编译炸掉" 的守卫，副作用是：



* **装得比 Kvel 晚的 NPC，那一段 crossmod 永久缺失**（装 Kvel 时探测不到，之后也不会补）。

* 补装 NPC 之后，**必须重装 Kvel**（卸载再装）才会重新探测并编译进去。

* 反过来，先装齐 NPC 再装 Kvel，是唯一能一次拿全的路径。

## 四、依赖清单（含本机实测）



| crossmod | 探测文件           | 提供方          | 本地源                         | 本机 override 现状 |
| -------- | -------------- | ------------ | --------------------------- | -------------- |
| Sirene   | `BC0Siren.dlg` | Sirene BG1   | `E:\GitHub\Sirene-BG1`（已汉化） | 未装             |
| Drake    | `BC0Drake.dlg` | Drake        | `E:\GitHub\Drake`           | 未装             |
| Aura     | `BC0Aura.dlg`  | Aura NPC     | **本地没有**                    | 未装             |
| Emily    | `X3milyB.dlg`  | Emily BG1    | `E:\GitHub\Emily-BG1`       | **已装**         |
| Helga    | `X3HelgaB.dlg` | Helga BG1    | 本地无独立目录                     | 未装             |
| Kale     | `X3KaleB.dlg`  | Kale BG1     | 本地无独立目录                     | 未装             |
| Recorder | `X3RecB.dlg`   | Recorder BG1 | 本地无独立目录                     | 未装             |
| Vienxay  | `X3VienB.dlg`  | Vienxay BG1  | 本地无独立目录                     | 未装             |

注：`E:\GitHub\SkitiaNPCs` 那个包是 **BG2 版**（组件 0 = "Skitia NPCs for Baldur's Gate 2"），产出的 dlg 不带 `B` 后缀，**不是**这 5 个探测项的来源；BG1 版是各自的独立 mod（Emily-BG1 就是其中一个，它自己的 tp2 也在探测 `X3HelgaB.dlg`、`X3RecB.dlg`）。

## 五、Sirene 那侧也有顺序，但不是死锁

Sirene 自己也探测一批 crossmod（`lib\Sirene.tpa` L155–209）：

| Sirene 探测的对象 | 判断条件 | 编译的源 |
|---|---|---|
| Glam's NPC Pack | `MOD_IS_INSTALLED ~SETUP-GLAMNPCPACK.TP2~ ~0~` | `crossmod/glamvrock.d` |
| White | `FILE_EXISTS_IN_GAME ~V#1WHIB.dlg~` | `crossmod/white.d` |
| Verr'Sza | `FILE_EXISTS_IN_GAME ~L#1VerrB.dlg~` | `crossmod/verrsza.d` |
| Drake | `FILE_EXISTS_IN_GAME ~bc0drake.dlg~` | `crossmod/drake.d` |
| Aura | `FILE_EXISTS_IN_GAME ~bc0aura.dlg~` | `crossmod/aura.d` |
| Kale | `FILE_EXISTS_IN_GAME ~x3kaleb.dlg~` | `crossmod/kale.d` |
| Helga | `FILE_EXISTS_IN_GAME ~x3helgab.dlg~` | `crossmod/helga.d` |
| Vienxay | `FILE_EXISTS_IN_GAME ~x3vienb.dlg~` | `crossmod/vienxay.d` |

两个关键事实：

- **Sirene 不探测 Kvel**：整份 `Setup-Sirene.tp2` 和 `lib\*.tpa` 里没有出现 `bc0kvel`。所以方向是单向的——Kvel → Sirene，不存在"我先等你、你先等我"的死锁。
- `dialogue\crossmod\emily.d` 这个文件存在，但 tp2 和 tpa 里**没有任何一处编译它**，是作者留下的死文件。Sirene 与 Emily 之间实际没有 crossmod。

两边共同探测的是 **Drake、Aura、Kale、Helga、Vienxay** 这 5 个，它们必须最先装。

Sirene 侧的对话结构与 Kvel 同构：`THEN BC0Siren C0SireneDrake1`、`== BC0Drake`、`Global("C0SireneDrake1","GLOBAL",0→1→2)`，同样是对对方 dlg 的硬引用。

## 六、结论：安装顺序

```
1  BG1EE + SoD + BG2EE（本体与官方补丁）
2  EET 核心
3  大修 / 规则 / 法术物品重制（SCS、Spell Revisions、Item Revisions、Artisan's Kitpack …）
4  ┌ 共同底座：Drake、Aura、Kale、Helga、Vienxay
   ├ Sirene 专用：Glam's NPC Pack、White、Verr'Sza
   └ Kvel 专用：Emily、Recorder
5  ★ Sirene
6  ★ Kvel
7  Tweaks / UI / 杂项小 mod
```

三条硬理由：

- **EET 核心必须先**：Kvel 的 tp2 在 EET 下 `INCLUDE ~EET/other/EET_functions.tph~` 再 `LAF EET_NPC_TRANSITION`；Sirene 的 tp2 在 EET 下 `INCLUDE ~EET/other/cpmvars/eet_cpmvars.tpa~`。EET 不到位，两个都装不上。
- **共同底座必须先**：Drake/Aura/Kale/Helga/Vienxay 被 Sirene 和 Kvel 同时探测，缺谁就少谁那一段（守卫会静默跳过，不报错）。
- **Sirene 在 Kvel 之前**：Kvel 的 `sirene.d` 要往 `BC0SIREN` 追加状态；而 Sirene 不探测 Kvel，所以 Sirene 装完不用回头。

一句话记法：**先装所有人，再装 Sirene，最后装 Kvel。** 顺序反了不报错，只缺对话；补装上游后必须重装"先装了的那个"（Sirene 或 Kvel），否则那段永久缺失。

## 七、顺带发现的两个问题



1. **Aura 与 Drake 撞变量**（模组自身的 bug）

   `aura.d` 第 9、11 行用的是 `Global("C0KvelDrake1","GLOBAL",0)` / `SetGlobal("C0KvelDrake1","GLOBAL",1)`，跟 `drake.d` 完全同一个变量。两个都装时，先触发的那一段会把变量置 1，另一段永远不再触发。想两段都看，得把 `aura.d`（连同写回后的现状）里的 `C0KvelDrake1` 改成 `C0KvelAura1`（两处），然后重装 Kvel。这属于逻辑改动，没你的话我不动。

2. **tp2 的&#x20;**`C0AS#P01`**&#x20;/&#x20;**`C0AS#P1`**&#x20;名字不一致**

   第 38 行探测 `C0AS#P01.SPL`，第 42/47 行添加的却是 `C0AS#P1`。本机 override 里两个都在，所以这段（把 Kvel 的 `SPCL423` 换成 kit 包的毒刃法术）会正常生效。换到只装了 `C0AS#P1` 没装 `P01` 的环境，这段会静默跳过。

## 八、针对这台机器的下一步

已具备：Emily（`X3milyB.dlg` 在 override）、Artisan's Kitpack（`C0AS#P1`、`C0AS#P01` 都在）。

Kvel 侧还缺 7 个：Sirene、Drake、Aura、Helga、Kale、Recorder、Vienxay。
Sirene 侧还缺 3 个：Glam's NPC Pack、White、Verr'Sza（本地 `E:\GitHub` 下都没有对应目录）。

* 本地有源可直接装：**Sirene**（`E:\GitHub\Sirene-BG1`，用已汉化那份）、**Drake**（`E:\GitHub\Drake`）。
* 需要另外获取：**Aura**、**Helga**、**Kale**、**Recorder**、**Vienxay**（BG1 版），以及**Glam's NPC Pack**、**White**、**Verr'Sza**。
* 装法：先装 Drake、Aura、Kale、Helga、Vienxay、Glam's NPC Pack、White、Verr'Sza（Recorder 也在此列）→ 装 Sirene → 装 Kvel。
* 若现在就先装 Kvel 尝鲜：等于放弃这 8 段 Kvel crossmod；之后补装上游 NPC，还得重装 Kvel 才补得回来。