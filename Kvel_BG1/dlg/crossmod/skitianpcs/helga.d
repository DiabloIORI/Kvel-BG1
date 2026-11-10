CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Helga1","GLOBAL",0)~ THEN X3HELGAB C0KvelX3Helga1
~你是个强壮的武士，卓尔。这我敬。~
DO ~SetGlobal("C0KvelX3Helga1","GLOBAL",1)~
== BC0KVEL ~“能敬”。看来你仍在疑我配不配得敬。~
== X3HELGAB ~呸，我不是个细斟字句的女人。你若非要从每个字母里找出意思，那我们大概处不好。~
== BC0KVEL ~你喜不喜欢、敬不敬我，都值不了多少。我唯一要的保证是：战阵上你的盾不会失手。~
== X3HELGAB ~是，这一点你大可十倍放心。我活这把年纪，凡我自己挑的仗，还没输过一场。~
== BC0KVEL ~那就够了。~
EXIT

CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("C0Kvel")
See("C0Kvel")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("C0Kvel",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0KvelX3Helga2","GLOBAL",0)~ THEN X3HELGAB C0KvelX3Helga2
~你打得确是好，卓尔，这点无疑。可有些……~
DO ~SetGlobal("C0KvelX3Helga2","GLOBAL",1)~
== BC0KVEL ~你看出什么了，矮人？~
== X3HELGAB ~我是个武士，可我当祭司与医者的职分，跟战阵上的力气一样要紧。我说不准，可我有些疑心，别的就没什么了。~
== BC0KVEL ~我请你别再提这事。这不干你的事。~
== X3HELGAB ~你把武士的自尊看得高过一切，嗯？说得过去。这我敬，只要你的身子不失手。~
== BC0KVEL ~不是那个。可我多谢你不多言。~
EXIT
