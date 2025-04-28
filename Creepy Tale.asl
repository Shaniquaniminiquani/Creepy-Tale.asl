state("CreepyTale")
{
    int levelNumber: "mono-2.0-bdwgc.dll", 0x00497DA8, 0x4B0, 0x230, 0x2B0, 0xF80;
	int menu: "UnityPlayer.dll", 0x196D4C0;
	int intro: "gameoverlayrenderer64.dll", 0x151A54;
}

start
{
    if (current.intro != 256 && current.levelNumber != 0 && old.levelNumber == 0) {
		return true;
	}
}

split
{
    if (old.levelNumber != 8 && current.levelNumber != old.levelNumber) {
        return true;
	} else {
		if (current.levelNumber == 0 && current.menu == 530) {
			return true;
		}
	}
}

reset
{
    if (current.menu == 0) {
		return true;
	}
}