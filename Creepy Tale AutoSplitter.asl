// Written by JayC_ 4/28/2025 intended for use with the latest version of "Creepy Tale" from steam.
// Updated 4/29/2025

state("CreepyTale")
{
	int chapter: "mono-2.0-bdwgc.dll", 0x00497DC8, 0x40, 0xF80;
	int menu: "UnityPlayer.dll", 0x019687C0, 0x0, 0x20, 0x4C8, 0x10, 0x7A0;
	int credits: "UnityPlayer.dll", 0x1A1E660;
}

start
{
	if ((old.menu == 1) && (current.chapter != old.chapter)) {
		return true;
	}
}

split
{
	if ((current.chapter != 0) && (current.chapter != old.chapter)) {
		return true;
	} else {
		if ((current.chapter == 0) && (old.chapter == 8) && (current.credits == 1)) {
			return true;
		}
	}
}

reset
{
	if (current.menu == 1) {
		return true;
	}
}
