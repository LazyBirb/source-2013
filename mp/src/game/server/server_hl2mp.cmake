# server_hl2mp.cmake

include("${CMAKE_CURRENT_LIST_DIR}/server_base.cmake")

if (${IS_SOURCESDK})
	include("${CMAKE_CURRENT_LIST_DIR}/nav_mesh.cmake")
endif()

set(SERVER_HL2MP_DIR ${CMAKE_CURRENT_LIST_DIR})
set(
	SERVER_HL2MP_SOURCE_FILES

	"${SERVER_HL2MP_DIR}/ai_relationship.cpp"
	"${SERVER_HL2MP_DIR}/basegrenade_concussion.cpp"
	"${SERVER_HL2MP_DIR}/basegrenade_contact.cpp"
	"${SERVER_HL2MP_DIR}/basegrenade_timed.cpp"
	"${SERVER_HL2MP_DIR}/EntityFlame.h"
	"${SERVER_HL2MP_DIR}/hl2/Func_Monitor.cpp"
	"${SERVER_HL2MP_DIR}/grenadethrown.cpp"
	"${SERVER_HL2MP_DIR}/grenadethrown.h"
	"${SERVER_HL2MP_DIR}/h_cycler.cpp"
	"${SERVER_HL2MP_DIR}/h_cycler.h"
	"${SERVER_HL2MP_DIR}/monstermaker.cpp"
	"${SERVER_HL2MP_DIR}/monstermaker.h"
	"${SERVER_HL2MP_DIR}/physics_bone_follower.h"
	"${SRCDIR}/game/shared/predicted_viewmodel.cpp"
	"${SRCDIR}/game/shared/predicted_viewmodel.h"
	"${SRCDIR}/game/shared/ragdoll_shared.h"
	"${SRCDIR}/game/shared/solidsetdefaults.h"
	"${SRCDIR}/game/shared/hl2/survival_gamerules.cpp"
	"${SERVER_HL2MP_DIR}/team_objectiveresource.cpp"
	"${SERVER_HL2MP_DIR}/team_objectiveresource.h"
	"${SERVER_HL2MP_DIR}/team_spawnpoint.cpp"
	"${SERVER_HL2MP_DIR}/team_spawnpoint.h"
	"${SERVER_HL2MP_DIR}/team_control_point.cpp"
	"${SERVER_HL2MP_DIR}/team_control_point.h"
	"${SERVER_HL2MP_DIR}/team_control_point_master.cpp"
	"${SERVER_HL2MP_DIR}/team_control_point_master.h"
	"${SERVER_HL2MP_DIR}/team_control_point_round.cpp"
	"${SERVER_HL2MP_DIR}/team_control_point_round.h"
	"${SERVER_HL2MP_DIR}/team_train_watcher.cpp"
	"${SERVER_HL2MP_DIR}/team_train_watcher.h"
	"${SRCDIR}/game/shared/teamplayroundbased_gamerules.cpp"
	"${SRCDIR}/game/shared/touchlink.h"
	"${SERVER_HL2MP_DIR}/trigger_area_capture.cpp"
	"${SERVER_HL2MP_DIR}/trigger_area_capture.h"
	"${SRCDIR}/game/shared/teamplay_round_timer.cpp"
	"${SRCDIR}/game/shared/teamplay_round_timer.h"

	# HL2 DLL
	"${SERVER_HL2MP_DIR}/hl2/ai_allymanager.cpp"
	"${SERVER_HL2MP_DIR}/hl2/ai_behavior_actbusy.cpp"
	"${SERVER_HL2MP_DIR}/hl2/ai_behavior_actbusy.h"
	"${SERVER_HL2MP_DIR}/hl2/ai_behavior_functank.cpp"
	"${SERVER_HL2MP_DIR}/hl2/ai_behavior_functank.h"
	"${SERVER_HL2MP_DIR}/hl2/ai_behavior_holster.cpp"
	"${SERVER_HL2MP_DIR}/hl2/ai_behavior_holster.h"
	"${SERVER_HL2MP_DIR}/hl2/ai_behavior_police.cpp"
	"${SERVER_HL2MP_DIR}/hl2/ai_behavior_police.h"
	"${SERVER_HL2MP_DIR}/hl2/ai_goal_police.cpp"
	"${SERVER_HL2MP_DIR}/hl2/ai_goal_police.h"
	"${SERVER_HL2MP_DIR}/hl2/ai_interactions.h"
	"${SERVER_HL2MP_DIR}/hl2/ai_spotlight.cpp"
	"${SERVER_HL2MP_DIR}/hl2/ai_spotlight.h"
	"${SERVER_HL2MP_DIR}/hl2/antlion_dust.cpp"
	"${SERVER_HL2MP_DIR}/hl2/antlion_dust.h"
	"${SERVER_HL2MP_DIR}/hl2/antlion_maker.cpp"
	"${SERVER_HL2MP_DIR}/hl2/antlion_maker.h"
	"${SERVER_HL2MP_DIR}/hl2/ar2_explosion.cpp"
	"${SERVER_HL2MP_DIR}/hl2/ar2_explosion.h"
	"${SERVER_HL2MP_DIR}/basebludgeonweapon.cpp"
	"${SERVER_HL2MP_DIR}/basebludgeonweapon.h"
	"${SERVER_HL2MP_DIR}/hl2/basehlcombatweapon.cpp"
	"${SERVER_HL2MP_DIR}/hl2/basehlcombatweapon.h"
	"${SRCDIR}/game/shared/hl2/basehlcombatweapon_shared.cpp"
	"${SRCDIR}/game/shared/hl2/basehlcombatweapon_shared.h"
	"${SERVER_HL2MP_DIR}/hl2/cbasehelicopter.cpp"
	"${SERVER_HL2MP_DIR}/hl2/cbasehelicopter.h"
	"${SERVER_HL2MP_DIR}/hl2/cbasespriteprojectile.cpp"
	"${SERVER_HL2MP_DIR}/hl2/cbasespriteprojectile.h"
	"${SERVER_HL2MP_DIR}/hl2/citadel_effects.cpp"
	"${SRCDIR}/game/shared/hl2/citadel_effects_shared.h"
	"${SERVER_HL2MP_DIR}/hl2/combine_mine.cpp"
	"${SERVER_HL2MP_DIR}/hl2/combine_mine.h"
	"${SERVER_HL2MP_DIR}/hl2/energy_wave.h"
	"${SERVER_HL2MP_DIR}/hl2/env_alyxemp.cpp"
	"${SRCDIR}/game/shared/hl2/env_alyxemp_shared.h"
	"${SERVER_HL2MP_DIR}/hl2/env_headcrabcanister.cpp"
	"${SRCDIR}/game/shared/hl2/env_headcrabcanister_shared.cpp"
	"${SRCDIR}/game/shared/hl2/env_headcrabcanister_shared.h"
	"${SERVER_HL2MP_DIR}/hl2/env_speaker.cpp"
	"${SERVER_HL2MP_DIR}/hl2/env_starfield.cpp"
	"${SERVER_HL2MP_DIR}/hl2/func_recharge.cpp"
	"${SERVER_HL2MP_DIR}/hl2/func_tank.cpp"
	"${SERVER_HL2MP_DIR}/hl2/func_tank.h"
	"${SERVER_HL2MP_DIR}/hl2/grenade_ar2.cpp"
	"${SERVER_HL2MP_DIR}/hl2/grenade_ar2.h"
	"${SERVER_HL2MP_DIR}/hl2/grenade_bugbait.cpp"
	"${SERVER_HL2MP_DIR}/hl2/grenade_bugbait.h"
	"${SERVER_HL2MP_DIR}/hl2/grenade_frag.cpp"
	"${SERVER_HL2MP_DIR}/hl2/grenade_frag.h"
	"${SERVER_HL2MP_DIR}/hl2/hl2_ai_network.cpp"
	"${SERVER_HL2MP_DIR}/hl2/hl2_eventlog.cpp"
	"${SRCDIR}/game/shared/hl2/hl2_gamerules.cpp"
	"${SRCDIR}/game/shared/hl2/hl2_gamerules.h"
	"${SERVER_HL2MP_DIR}/hl2/hl2_player.cpp"
	"${SERVER_HL2MP_DIR}/hl2/hl2_player.h"
	"${SRCDIR}/game/shared/hl2/hl2_player_shared.h"
	"${SERVER_HL2MP_DIR}/hl2/hl2_playerlocaldata.cpp"
	"${SERVER_HL2MP_DIR}/hl2/hl2_playerlocaldata.h"
	"${SRCDIR}/game/shared/hl2/hl2_shareddefs.h"
	"${SERVER_HL2MP_DIR}/hl2/hl2_triggers.cpp"
	"${SRCDIR}/game/shared/hl2/hl2_usermessages.cpp"
	"${SRCDIR}/game/shared/hl2/hl_gamemovement.cpp"
	"${SRCDIR}/game/shared/hl2/hl_gamemovement.h"
	"${SRCDIR}/game/shared/hl2/hl_movedata.h"
	"${SERVER_HL2MP_DIR}/hl2/hl_playermove.cpp"
	"${SERVER_HL2MP_DIR}/hl2/info_teleporter_countdown.cpp"
	"${SERVER_HL2MP_DIR}/hl2/item_ammo.cpp"
	"${SERVER_HL2MP_DIR}/hl2/item_battery.cpp"
	"${SERVER_HL2MP_DIR}/hl2/item_dynamic_resupply.cpp"
	"${SERVER_HL2MP_DIR}/hl2/item_dynamic_resupply.h"
	"${SERVER_HL2MP_DIR}/hl2/item_healthkit.cpp"
	"${SERVER_HL2MP_DIR}/hl2/item_itemcrate.cpp"
	"${SERVER_HL2MP_DIR}/hl2/item_suit.cpp"
	"${SERVER_HL2MP_DIR}/hl2/look_door.cpp"
	"${SERVER_HL2MP_DIR}/hl2/monster_dummy.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_alyx.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_alyx.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_antlion.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_antlion.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_antlionguard.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_apcdriver.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_attackchopper.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_attackchopper.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_barnacle.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_barnacle.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_barney.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_basescanner.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_basescanner.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_BaseZombie.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_BaseZombie.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_breen.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_bullseye.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_bullseye.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_citizen17.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_citizen17.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_combine.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_combine.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_combinecamera.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_combinedropship.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_combinegunship.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_combines.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_combines.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_cranedriver.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_crow.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_crow.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_dog.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_eli.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_enemyfinder.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_fisherman.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_gman.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_headcrab.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_headcrab.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_ichthyosaur.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_kleiner.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_launcher.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_manhack.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_manhack.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_metropolice.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_metropolice.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_monk.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_mossman.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_playercompanion.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_playercompanion.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_PoisonZombie.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_rollermine.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_rollermine.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_scanner.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_stalker.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_stalker.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_strider.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_strider.h"
	"${SERVER_HL2MP_DIR}/npc_talker.cpp"
	"${SERVER_HL2MP_DIR}/npc_talker.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_turret_ceiling.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_turret_floor.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_turret_ground.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_vortigaunt_episodic.cpp"
	"${SERVER_HL2MP_DIR}/hl2/npc_vortigaunt_episodic.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_zombie.cpp"
	"${SERVER_HL2MP_DIR}/hl2/point_apc_controller.cpp"
	"${SERVER_HL2MP_DIR}/hl2/prop_combine_ball.cpp"
	"${SERVER_HL2MP_DIR}/hl2/prop_combine_ball.h"
	"${SERVER_HL2MP_DIR}/hl2/prop_thumper.cpp"
	"${SERVER_HL2MP_DIR}/hl2/proto_sniper.cpp"
	"${SERVER_HL2MP_DIR}/hl2/rotorwash.cpp"
	"${SERVER_HL2MP_DIR}/hl2/rotorwash.h"
	"${SERVER_HL2MP_DIR}/hl2/script_intro.cpp"
	"${SERVER_HL2MP_DIR}/hl2/script_intro.h"
	"${SRCDIR}/game/shared/script_intro_shared.cpp"
	"${SERVER_HL2MP_DIR}/hl2/vehicle_airboat.cpp"
	"${SERVER_HL2MP_DIR}/hl2/vehicle_apc.h"
	"${SERVER_HL2MP_DIR}/hl2/vehicle_crane.cpp"
	"${SERVER_HL2MP_DIR}/hl2/vehicle_crane.h"
	"${SERVER_HL2MP_DIR}/hl2/vehicle_prisoner_pod.cpp"
	"${SERVER_HL2MP_DIR}/hl2/vehicle_viewcontroller.cpp"
	"${SERVER_HL2MP_DIR}/hl2/weapon_alyxgun.h"
	"${SERVER_HL2MP_DIR}/hl2/weapon_annabelle.cpp"
	"${SERVER_HL2MP_DIR}/hl2/weapon_bugbait.cpp"
	"${SERVER_HL2MP_DIR}/hl2/weapon_crowbar.h"
	"${SERVER_HL2MP_DIR}/weapon_cubemap.cpp"

	# HL2 DLL->unused
	"${SERVER_HL2MP_DIR}/hl2/grenade_beam.cpp"
	"${SERVER_HL2MP_DIR}/hl2/grenade_beam.h"
	"${SERVER_HL2MP_DIR}/hl2/grenade_homer.cpp"
	"${SERVER_HL2MP_DIR}/hl2/grenade_homer.h"
	"${SERVER_HL2MP_DIR}/hl2/grenade_pathfollower.cpp"
	"${SERVER_HL2MP_DIR}/hl2/grenade_pathfollower.h"
	"${SERVER_HL2MP_DIR}/hl2/npc_missiledefense.cpp"
	"${SERVER_HL2MP_DIR}/hl2/vehicle_apc.cpp"
	"${SERVER_HL2MP_DIR}/hl2/weapon_cguard.cpp"
	"${SERVER_HL2MP_DIR}/hl2/weapon_flaregun.cpp"
	"${SERVER_HL2MP_DIR}/hl2/weapon_flaregun.h"

	# HL2MP
	"${SERVER_HL2MP_DIR}/hl2mp/hl2mp_bot_temp.cpp"
	"${SERVER_HL2MP_DIR}/hl2mp/hl2mp_bot_temp.h"
	"${SERVER_HL2MP_DIR}/hl2mp/hl2mp_client.cpp"
	"${SERVER_HL2MP_DIR}/hl2mp/hl2mp_cvars.cpp"
	"${SERVER_HL2MP_DIR}/hl2mp/hl2mp_gameinterface.cpp"
	"${SERVER_HL2MP_DIR}/hl2mp/hl2mp_gameinterface.h"
	"${SRCDIR}/game/shared/hl2mp/hl2mp_gamerules.cpp"
	"${SRCDIR}/game/shared/hl2mp/hl2mp_gamerules.h"
	"${SERVER_HL2MP_DIR}/hl2mp/hl2mp_player.cpp"
	"${SERVER_HL2MP_DIR}/hl2mp/hl2mp_player.h"
	"${SRCDIR}/game/shared/hl2mp/hl2mp_player_shared.cpp"
	"${SRCDIR}/game/shared/hl2mp/hl2mp_player_shared.h"
	"${SRCDIR}/game/shared/hl2mp/hl2mp_weapon_parse.cpp"
	"${SRCDIR}/game/shared/hl2mp/hl2mp_weapon_parse.h"

	# HL2MP->Weapons
	"${SERVER_HL2MP_DIR}/hl2mp/grenade_satchel.cpp"
	"${SERVER_HL2MP_DIR}/hl2mp/grenade_satchel.h"
	"${SERVER_HL2MP_DIR}/hl2mp/grenade_tripmine.cpp"
	"${SERVER_HL2MP_DIR}/hl2mp/grenade_tripmine.h"
	"${SERVER_HL2MP_DIR}/hl2mp/te_hl2mp_shotgun_shot.cpp"
	"${SERVER_HL2MP_DIR}/hl2mp/te_hl2mp_shotgun_shot.h"
	"${SRCDIR}/game/shared/hl2mp/weapon_357.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_ar2.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_ar2.h"
	"${SRCDIR}/game/shared/hl2mp/weapon_crossbow.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_crowbar.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_frag.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_hl2mpbase.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_hl2mpbase.h"
	"${SRCDIR}/game/shared/hl2mp/weapon_hl2mpbase_machinegun.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_hl2mpbase_machinegun.h"
	"${SRCDIR}/game/shared/hl2mp/weapon_hl2mpbasebasebludgeon.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_hl2mpbasehlmpcombatweapon.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_hl2mpbasehlmpcombatweapon.h"
	"${SRCDIR}/game/shared/hl2mp/weapon_physcannon.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_physcannon.h"
	"${SRCDIR}/game/shared/hl2mp/weapon_pistol.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_rpg.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_rpg.h"
	"${SRCDIR}/game/shared/hl2mp/weapon_shotgun.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_slam.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_slam.h"
	"${SRCDIR}/game/shared/hl2mp/weapon_smg1.cpp"
	"${SRCDIR}/game/shared/hl2mp/weapon_stunstick.cpp"
)

set(
	SERVER_HL2MP_EXCLUDE_SOURCES
)

add_library(server_hl2mp MODULE ${SERVER_HL2MP_SOURCE_FILES})

set_target_properties(
	server_hl2mp PROPERTIES
	OUTPUT_NAME "server"
	PREFIX ""
	LIBRARY_OUTPUT_DIRECTORY "${GAMEDIR}/mod_hl2mp/bin"
	LIBRARY_OUTPUT_DIRECTORY_RELEASE "${GAMEDIR}/mod_hl2mp/bin"
	LIBRARY_OUTPUT_DIRECTORY_DEBUG "${GAMEDIR}/mod_hl2mp/bin"
)

target_use_server_base(server_hl2mp SERVER_HL2MP_EXCLUDE_SOURCES)

target_include_directories(
	server_hl2mp PRIVATE
	"${SRCDIR}/game/shared/hl2"
	"${SERVER_HL2MP_DIR}/hl2"
	"${SERVER_HL2MP_DIR}/hl2mp"
	"${SRCDIR}/game/shared/hl2mp"
)

target_compile_definitions(
	server_hl2mp PRIVATE
	HL2MP
	HL2_DLL
)

if (${IS_SOURCESDK})
	target_use_nav_mesh(server_hl2mp)
endif()