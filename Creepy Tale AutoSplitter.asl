 // Written by JayC_ 4/28/2025 intended for use with the latest version of "Creepy Tale" from steam.
 // Thanks to EnkiSpeedRuns for the original foundation of the splitter as well as the level pointer
 // Reverted. I don't want to deal with this if its getting remade :)
 
 /*
 	Values:
 	256 = intro,
 	530 = end,
 */
 
 state("CreepyTale")
 {
 	int levelNumber: "mono-2.0-bdwgc.dll", 0x00497DA8, 0x4B0, 0x230, 0x2B0, 0xF80;
 	int chapter: "mono-2.0-bdwgc.dll", 0x00497DA8, 0x4B0, 0x230, 0x2B0, 0xF80;
 	int menu: "UnityPlayer.dll", 0x196D4C0;
 	int intro: "gameoverlayrenderer64.dll", 0x151A54;
 }
 
 start
 {
 	if (current.intro != 256 && current.levelNumber != 0 && old.levelNumber == 0) {
 	if ((current.intro != 256) && (current.chapter != 0) && (old.chapter == 0)) {
 		return true;
 	}
 }
 
 split
 {
 	if (old.levelNumber != 8 && current.levelNumber != old.levelNumber) {
         	return true;
 	if ((current.chapter != 0) && (current.menu != 0) && (current.chapter != old.chapter)) {
 		return true;
 	} else {
 		if (current.levelNumber == 0 && current.menu == 530) {
 		if ((current.chapter == 0) && (current.menu == 530)) {
 			return true;
 		}
 	}
 }
 
 reset
 {
 	if (current.menu == 0) {
 	if ((current.chapter == 0) && (current.menu == 0)) {
 		return true;
 	}
 }
