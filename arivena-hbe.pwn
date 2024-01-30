//buat manggil fungsi hook
#include <YSI_Coding\y_hooks>

// By aupa
// Hbe Aeterne

//perlu di ketahui, ini adalah SC untuk gm basic yang menggunakan Player Enum yaitu "PlayerData", jika kalian menggunakan LRP ubah "PlayerData" Menjadi "pData" jika inferno "PlayerInfo" tergantung gm yang lu pake

//Perlu di ketahui, ubah bagian pHealth, pArmor, pHunger, pThirst, pStress, sesuai dengan GM kalian, beda gm beda enum

//file ini sudah include menjadi 1 untuk hbe, tinggal jadikan file ini .pwn ( jangan di compile )
//panggil ke gm utama kalian
//#include "module/namafile.pwn"

new PlayerText: HbeArivenaAufa[MAX_PLAYERS][15];

stock ShowHbeaufa(playerid) {
    for(new i = 0; i < 15; i++)
    {
        PlayerTextDrawShow(playerid, HbeArivenaAufa[playerid][i]);
    }
}
stock UpdateHBE(playerid) {
    if (PlayerData[playerid][pSpawned] && !PlayerData[playerid][pTogHud]) {

        new Float:health, Float:armour, Float:aufalapar, Float:aufahaus, Float:stress;

        GetPlayerHealth(playerid, PlayerData[playerid][pHealth]);
        GetPlayerArmour(playerid, PlayerData[playerid][pArmor]);

        health = PlayerData[playerid][pHealth] * 27.0 / 100;
        PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][8], health, 4.0);
        PlayerTextDrawShow(playerid, HbeArivenaAufa[playerid][8]);

        armour = PlayerData[playerid][pArmor] * 27.0 / 100;
        PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][2], armour, 4.0);
        PlayerTextDrawShow(playerid, HbeArivenaAufa[playerid][2]);

        aufalapar = PlayerData[playerid][pHunger] * 27.0 / 100;
        PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][5], aufalapar, 4.0);
        PlayerTextDrawShow(playerid, HbeArivenaAufa[playerid][5]);

        aufahaus = PlayerData[playerid][pThirst] * 27.0 / 100;
        PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][11], aufahaus, 4.0);
        PlayerTextDrawShow(playerid, HbeArivenaAufa[playerid][11]);

        stress = PlayerData[playerid][pStress] * 27.0 / 100;
        PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][14], stress, 4.0);
        PlayerTextDrawShow(playerid, HbeArivenaAufa[playerid][14]);

        GetPlayerHealth(playerid, PlayerData[playerid][pHealth]);
        GetPlayerArmour(playerid, PlayerData[playerid][pArmor]);
    }
    return 1;
}

hook OnPlayerConnect(playerid){
	ShowHbeaufa(playerid);
}

hook OnGameModeInit() {
    HbeArivenaAufa[playerid][0] = CreatePlayerTextDraw(playerid, 273.000, 406.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][0], 27.000, 29.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][0], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][0], 673720575);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][0], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][0], 1);

    HbeArivenaAufa[playerid][1] = CreatePlayerTextDraw(playerid, 280.000, 413.000, "HUD:radar_tshirt");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][1], 13.000, 14.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][1], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][1], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][1], 1);

    HbeArivenaAufa[playerid][2] = CreatePlayerTextDraw(playerid, 273.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][2], 27.000, 4.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][2], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][2], 1266537983);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][2], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][2], 1);

    HbeArivenaAufa[playerid][3] = CreatePlayerTextDraw(playerid, 309.000, 406.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][3], 27.000, 29.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][3], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][3], 673720575);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][3], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][3], 1);

    HbeArivenaAufa[playerid][4] = CreatePlayerTextDraw(playerid, 317.000, 413.000, "HUD:radar_pizza");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][4], 10.000, 14.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][4], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][4], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][4], 1);

    HbeArivenaAufa[playerid][5] = CreatePlayerTextDraw(playerid, 309.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][5], 27.000, 4.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][5], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][5], -227537409);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][5], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][5], 1);

    HbeArivenaAufa[playerid][6] = CreatePlayerTextDraw(playerid, 237.000, 406.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][6], 27.000, 29.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][6], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][6], 673720575);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][6], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][6], 1);

    HbeArivenaAufa[playerid][7] = CreatePlayerTextDraw(playerid, 244.000, 413.000, "HUD:radar_girlfriend");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][7], 14.000, 12.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][7], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][7], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][7], 1);

    HbeArivenaAufa[playerid][8] = CreatePlayerTextDraw(playerid, 237.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][8], 27.000, 4.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][8], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][8], 884770303);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][8], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][8], 1);

    HbeArivenaAufa[playerid][9] = CreatePlayerTextDraw(playerid, 345.000, 406.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][9], 27.000, 29.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][9], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][9], 673720575);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][9], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][9], 1);

    HbeArivenaAufa[playerid][10] = CreatePlayerTextDraw(playerid, 353.000, 412.000, "HUD:radar_centre");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][10], 11.000, 13.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][10], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][10], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][10], 1);

    HbeArivenaAufa[playerid][11] = CreatePlayerTextDraw(playerid, 345.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][11], 27.000, 4.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][11], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][11], 662486015);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][11], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][11], 1);

    HbeArivenaAufa[playerid][12] = CreatePlayerTextDraw(playerid, 380.000, 406.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][12], 27.000, 29.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][12], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][12], 673720575);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][12], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][12], 1);

    HbeArivenaAufa[playerid][13] = CreatePlayerTextDraw(playerid, 388.000, 414.000, "HUD:radar_waypoint");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][13], 10.000, 11.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][13], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][13], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][13], 1);

    HbeArivenaAufa[playerid][14] = CreatePlayerTextDraw(playerid, 380.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeArivenaAufa[playerid][14], 27.000, 4.000);
    PlayerTextDrawAlignment(playerid, HbeArivenaAufa[playerid][14], 1);
    PlayerTextDrawColor(playerid, HbeArivenaAufa[playerid][14], -1962934017);
    PlayerTextDrawSetShadow(playerid, HbeArivenaAufa[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, HbeArivenaAufa[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeArivenaAufa[playerid][14], 255);
    PlayerTextDrawFont(playerid, HbeArivenaAufa[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, HbeArivenaAufa[playerid][14], 1);
}
