#pragma semicolon 1

#define DEBUG

#define PLUGIN_AUTHOR "FlumeZ"
#define PLUGIN_VERSION "0.1"

#include <sourcemod>
#include <sdktools>
#include <cstrike>
#include <sdkhooks>

EngineVersion g_Game;

public Plugin myinfo = 
{
	name = "Block Weapons Drops",
	author = PLUGIN_AUTHOR,
	description = "Block Weapons Drops With G Key",
	version = PLUGIN_VERSION,
	url = "http://gamers-il.com"
};

public void OnPluginStart()
{
	AddCommandListener(Listener_Drop, "drop");
}

public Action Listener_Drop(int client, const char[] command, int argc)
{
	return Plugin_Stop;
}

public Action CS_OnCSWeaponDrop(int client, int weapon)
{
    return Plugin_Handled;
}
