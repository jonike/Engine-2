#
# Basically a giant file with all of the client sources in it.
# Basically have to do this because the glob would just grab everything and presumably lead to many issues
#
set(CLIENT_DIR	${ROOT_DIR}/game/client/)
set(CLIENT_HL2_DIR ${CLIENT_DIR}/hl2/)
set(CLIENT_HL2MP_DIR ${CLIENT_DIR}/hl2mp)
set(CLIENT_EP1_DIR ${CLIENT_DIR}/episodic)
set(CLIENT_BASE_FILES
				${ROOT_DIR}/vgui2/game_controls/FloatSlider.cpp
				${CLIENT_DIR}/hl2/C_Func_Monitor.cpp
				${CLIENT_DIR}/geiger.cpp
				${CLIENT_DIR}/history_resource.cpp
				${CLIENT_DIR}/hud_weapon.cpp
				${CLIENT_DIR}/train.cpp
				${ROOT_DIR}/game/shared/weapon_parse_default.cpp
				${ROOT_DIR}/game/shared/achievement_saverestore.cpp
				${ROOT_DIR}/game/shared/achievement_saverestore.h
				${ROOT_DIR}/game/shared/achievementmgr.cpp
				${ROOT_DIR}/game/shared/achievementmgr.h
				${ROOT_DIR}/game/shared/achievements_hlx.cpp
				${CLIENT_DIR}/achievement_notification_panel.cpp
				${CLIENT_DIR}/achievement_notification_panel.h
				${ROOT_DIR}/game/shared/activitylist.cpp
				${CLIENT_DIR}/alphamaterialproxy.cpp
				${ROOT_DIR}/game/shared/ammodef.cpp
				${CLIENT_DIR}/animatedentitytextureproxy.cpp
				${CLIENT_DIR}/animatedoffsettextureproxy.cpp
				${CLIENT_DIR}/animatedtextureproxy.cpp
				${CLIENT_DIR}/AnimateSpecificTextureProxy.cpp
				${ROOT_DIR}/game/shared/animation.cpp
				${ROOT_DIR}/game/shared/base_playeranimstate.cpp
				${ROOT_DIR}/game/shared/baseachievement.cpp
				${ROOT_DIR}/game/shared/baseachievement.h
				${CLIENT_DIR}/baseanimatedtextureproxy.cpp
				${CLIENT_DIR}/baseclientrendertargets.cpp
				${ROOT_DIR}/game/shared/basecombatcharacter_shared.cpp
				${ROOT_DIR}/game/shared/basecombatweapon_shared.cpp
				${ROOT_DIR}/game/shared/baseentity_shared.cpp
				${ROOT_DIR}/game/shared/basegrenade_shared.cpp
				${ROOT_DIR}/game/shared/baseparticleentity.cpp
				${ROOT_DIR}/game/shared/baseplayer_shared.cpp
				${ROOT_DIR}/game/shared/baseviewmodel_shared.cpp
				${CLIENT_DIR}/beamdraw.cpp
				${ROOT_DIR}/game/shared/beam_shared.cpp
				${ROOT_DIR}/public/bone_accessor.cpp
				${CLIENT_DIR}/bone_merge_cache.cpp
				${CLIENT_DIR}/c_ai_basehumanoid.cpp
				${CLIENT_DIR}/c_ai_basenpc.cpp
				${CLIENT_DIR}/c_baseanimating.cpp
				${CLIENT_DIR}/c_baseanimatingoverlay.cpp
				${CLIENT_DIR}/c_basecombatcharacter.cpp
				${CLIENT_DIR}/c_basecombatweapon.cpp
				${CLIENT_DIR}/c_basedoor.cpp
				${CLIENT_DIR}/c_baseentity.cpp
				${CLIENT_DIR}/c_baseflex.cpp
				${CLIENT_DIR}/c_baseplayer.cpp
				${CLIENT_DIR}/c_baseviewmodel.cpp
				${CLIENT_DIR}/c_breakableprop.cpp
				${CLIENT_DIR}/c_colorcorrection.cpp
				${CLIENT_DIR}/c_colorcorrectionvolume.cpp
				${CLIENT_DIR}/c_dynamiclight.cpp
				${CLIENT_DIR}/c_entitydissolve.cpp
				${CLIENT_DIR}/c_entityparticletrail.cpp
				${CLIENT_DIR}/c_env_fog_controller.cpp
				${CLIENT_DIR}/c_env_global_light.cpp
				${CLIENT_DIR}/c_env_particlescript.cpp
				${CLIENT_DIR}/c_env_projectedtexture.cpp
				${CLIENT_DIR}/c_env_screenoverlay.cpp
				${CLIENT_DIR}/c_env_tonemap_controller.cpp
				${CLIENT_DIR}/c_fire_smoke.cpp
				${CLIENT_DIR}/c_fish.cpp
				${CLIENT_DIR}/c_func_areaportalwindow.cpp
				${CLIENT_DIR}/c_func_breakablesurf.cpp
				${CLIENT_DIR}/c_func_conveyor.cpp
				${CLIENT_DIR}/c_func_dust.cpp
				${CLIENT_DIR}/c_func_lod.cpp
				${CLIENT_DIR}/c_func_occluder.cpp
				${CLIENT_DIR}/c_func_reflective_glass.cpp
				${CLIENT_DIR}/c_func_rotating.cpp
				${CLIENT_DIR}/c_func_smokevolume.cpp
				${CLIENT_DIR}/c_func_tracktrain.cpp
				${CLIENT_DIR}/c_gib.cpp
				${CLIENT_DIR}/c_hairball.cpp
				${CLIENT_DIR}/c_info_overlay_accessor.cpp
				${CLIENT_DIR}/c_lightglow.cpp
				${CLIENT_DIR}/c_lights.cpp
				${CLIENT_DIR}/C_MaterialModifyControl.cpp
				${CLIENT_DIR}/c_particle_system.cpp
				${CLIENT_DIR}/c_physbox.cpp
				${CLIENT_DIR}/c_physicsprop.cpp
				${CLIENT_DIR}/c_physmagnet.cpp
				${CLIENT_DIR}/c_pixel_visibility.cpp
				${CLIENT_DIR}/c_plasma.cpp
				${CLIENT_DIR}/c_playerresource.cpp
				${CLIENT_DIR}/c_point_camera.cpp
				${CLIENT_DIR}/c_point_commentary_node.cpp
				${CLIENT_DIR}/c_props.cpp
				${CLIENT_DIR}/c_props.h
				${CLIENT_DIR}/c_ragdoll_manager.cpp
				${CLIENT_DIR}/c_rope.cpp
				${CLIENT_DIR}/c_rumble.cpp
				${CLIENT_DIR}/c_sceneentity.cpp
				${CLIENT_DIR}/c_shadowcontrol.cpp
				${CLIENT_DIR}/c_slideshow_display.cpp
				${CLIENT_DIR}/c_slideshow_display.h
				${CLIENT_DIR}/c_soundscape.cpp
				${CLIENT_DIR}/c_spotlight_end.cpp
				${CLIENT_DIR}/c_sprite.cpp
				${CLIENT_DIR}/c_sprite_perfmonitor.cpp
				${CLIENT_DIR}/c_sun.cpp
				${CLIENT_DIR}/c_team.cpp
				${CLIENT_DIR}/c_tesla.cpp
				${CLIENT_DIR}/c_test_proxytoggle.cpp
				${CLIENT_DIR}/c_user_message_register.cpp
				${CLIENT_DIR}/c_vehicle_choreo_generic.cpp
				${CLIENT_DIR}/c_vehicle_jeep.cpp
				${CLIENT_DIR}/c_vguiscreen.cpp
				${CLIENT_DIR}/hl2/c_waterbullet.cpp
				${CLIENT_DIR}/hl2/hud_autoaim.cpp
				${CLIENT_DIR}/C_WaterLODControl.cpp
				${CLIENT_DIR}/c_world.cpp
				${CLIENT_DIR}/camomaterialproxy.cpp
				${CLIENT_DIR}/cdll_client_int.cpp
				${CLIENT_DIR}/cdll_bounded_cvars.cpp
				${CLIENT_DIR}/cdll_bounded_cvars.h
				${CLIENT_DIR}/cdll_util.cpp
				${CLIENT_DIR}/cl_mat_stub.cpp
				${CLIENT_DIR}/classmap.cpp
				${CLIENT_DIR}/client_factorylist.cpp
				${CLIENT_DIR}/client_thinklist.cpp
				${CLIENT_DIR}/clienteffectprecachesystem.cpp
				${CLIENT_DIR}/cliententitylist.cpp
				${CLIENT_DIR}/clientleafsystem.cpp
				${CLIENT_DIR}/clientmode_shared.cpp
				${CLIENT_DIR}/clientshadowmgr.cpp
				${CLIENT_DIR}/clientsideeffects.cpp
				${CLIENT_DIR}/clientsideeffects_test.cpp
				${CLIENT_DIR}/colorcorrectionmgr.cpp
				${ROOT_DIR}/game/shared/collisionproperty.cpp
				${ROOT_DIR}/game/shared/death_pose.cpp
				${ROOT_DIR}/game/shared/debugoverlay_shared.cpp
				${ROOT_DIR}/game/shared/decals.cpp
				${CLIENT_DIR}/detailobjectsystem.cpp
				${CLIENT_DIR}/dummyproxy.cpp
				${ROOT_DIR}/game/shared/effect_dispatch_data.cpp
				${CLIENT_DIR}/EffectsClient.cpp
				${ROOT_DIR}/game/shared/ehandle.cpp
				${ROOT_DIR}/game/shared/entitylist_base.cpp
				${CLIENT_DIR}/entityoriginmaterialproxy.cpp
				${ROOT_DIR}/game/shared/EntityParticleTrail_Shared.cpp
				${ROOT_DIR}/game/shared/env_detail_controller.cpp
				${ROOT_DIR}/game/shared/env_wind_shared.cpp
				${ROOT_DIR}/game/shared/eventlist.cpp
				${CLIENT_DIR}/flashlighteffect.cpp
				${ROOT_DIR}/game/shared/func_ladder.cpp
				${CLIENT_DIR}/functionproxy.cpp
				${CLIENT_DIR}/fx_blood.cpp
				${CLIENT_DIR}/fx_cube.cpp
				${CLIENT_DIR}/fx_explosion.cpp
				${CLIENT_DIR}/fx_fleck.cpp
				${CLIENT_DIR}/fx_impact.cpp
				${CLIENT_DIR}/fx_interpvalue.cpp
				${CLIENT_DIR}/fx_quad.cpp
				${CLIENT_DIR}/fx_shelleject.cpp
				${CLIENT_DIR}/fx_staticline.cpp
				${CLIENT_DIR}/fx_tracer.cpp
				${CLIENT_DIR}/fx_trail.cpp
				${CLIENT_DIR}/fx_water.cpp
				${ROOT_DIR}/game/shared/gamemovement.cpp
				${ROOT_DIR}/game/shared/gamerules.cpp
				${ROOT_DIR}/game/shared/gamerules_register.cpp
				${ROOT_DIR}/game/shared/gamestringpool.cpp
				${CLIENT_DIR}/gametrace_client.cpp
				${ROOT_DIR}/game/shared/gamevars_shared.cpp
				${CLIENT_DIR}/glow_overlay.cpp
				${ROOT_DIR}/game/shared/hintmessage.cpp
				${ROOT_DIR}/game/shared/hintsystem.cpp
				${CLIENT_DIR}/hltvcamera.cpp
				${CLIENT_DIR}/hud.cpp
				${CLIENT_DIR}/hud_animationinfo.cpp
				${CLIENT_DIR}/hud_basechat.cpp
				${CLIENT_DIR}/hud_basetimer.cpp
				${CLIENT_DIR}/hud_bitmapnumericdisplay.cpp
				${CLIENT_DIR}/hud_closecaption.cpp
				${CLIENT_DIR}/hud_crosshair.cpp
				${CLIENT_DIR}/hud_element_helper.cpp
				${CLIENT_DIR}/hl2/hud_filmdemo.cpp
				${CLIENT_DIR}/hl2/hud_hdrdemo.cpp
				${CLIENT_DIR}/hud_hintdisplay.cpp
				${CLIENT_DIR}/hud_msg.cpp
				${CLIENT_DIR}/hud_numericdisplay.cpp
				${CLIENT_DIR}/hud_pdump.cpp
				${CLIENT_DIR}/hud_redraw.cpp
				${CLIENT_DIR}/hud_vehicle.cpp
				${ROOT_DIR}/game/shared/igamesystem.cpp
				${CLIENT_DIR}/in_camera.cpp
				${CLIENT_DIR}/in_joystick.cpp
				${CLIENT_DIR}/in_main.cpp
				${CLIENT_DIR}/initializer.cpp
				${CLIENT_DIR}/interpolatedvar.cpp
				${CLIENT_DIR}/IsNPCProxy.cpp
				${CLIENT_DIR}/lampbeamproxy.cpp
				${CLIENT_DIR}/lamphaloproxy.cpp
				${ROOT_DIR}/game/shared/mapentities_shared.cpp
				${CLIENT_DIR}/mathproxy.cpp
				${CLIENT_DIR}/matrixproxy.cpp
				${CLIENT_DIR}/menu.cpp
				${CLIENT_DIR}/message.cpp
				${CLIENT_DIR}/movehelper_client.cpp
				${ROOT_DIR}/game/shared/movevars_shared.cpp
				${ROOT_DIR}/game/shared/multiplay_gamerules.cpp
				${ROOT_DIR}/game/shared/obstacle_pushaway.cpp
				${CLIENT_DIR}/panelmetaclassmgr.cpp
				${CLIENT_DIR}/particle_collision.cpp
				${CLIENT_DIR}/particle_litsmokeemitter.cpp
				${ROOT_DIR}/game/shared/particle_parse.cpp
				${ROOT_DIR}/game/shared/particle_parse.h
				${ROOT_DIR}/game/shared/particle_property.cpp
				${ROOT_DIR}/game/shared/particle_property.h
				${CLIENT_DIR}/particle_proxies.cpp
				${CLIENT_DIR}/particle_simple3d.cpp
				${CLIENT_DIR}/particlemgr.cpp
				${CLIENT_DIR}/particles_attractor.cpp
				${CLIENT_DIR}/particles_ez.cpp
				${CLIENT_DIR}/particles_localspace.cpp
				${CLIENT_DIR}/particles_new.cpp
				${CLIENT_DIR}/particles_simple.cpp
				${ROOT_DIR}/game/shared/particlesystemquery.cpp
				${CLIENT_DIR}/perfvisualbenchmark.cpp
				${CLIENT_DIR}/physics.cpp
				${CLIENT_DIR}/physics_main_client.cpp
				${ROOT_DIR}/game/shared/physics_main_shared.cpp
				${ROOT_DIR}/game/shared/physics_saverestore.cpp
				${ROOT_DIR}/game/shared/physics_shared.cpp
				${CLIENT_DIR}/physpropclientside.cpp
				${CLIENT_DIR}/playerandobjectenumerator.cpp
				${ROOT_DIR}/game/shared/point_bonusmaps_accessor.cpp
				${ROOT_DIR}/game/shared/point_bonusmaps_accessor.h
				${ROOT_DIR}/game/shared/point_posecontroller.cpp
				${ROOT_DIR}/game/shared/precache_register.cpp
				${ROOT_DIR}/game/shared/predictableid.cpp
				${CLIENT_DIR}/prediction.cpp
				${ROOT_DIR}/game/shared/predictioncopy.cpp
				${ROOT_DIR}/game/shared/props_shared.cpp
				${CLIENT_DIR}/proxyentity.cpp
				${CLIENT_DIR}/ProxyHealth.cpp
				${CLIENT_DIR}/proxyplayer.cpp
				${CLIENT_DIR}/proxypupil.cpp
				${CLIENT_DIR}/ragdoll.cpp
				${ROOT_DIR}/game/shared/ragdoll_shared.cpp
				${CLIENT_DIR}/recvproxy.cpp
				${ROOT_DIR}/game/shared/rope_helpers.cpp
				${ROOT_DIR}/game/shared/saverestore.cpp
				${ROOT_DIR}/game/shared/sceneentity_shared.cpp
				${CLIENT_DIR}/ScreenSpaceEffects.cpp
				${ROOT_DIR}/game/shared/sequence_Transitioner.cpp
				${CLIENT_DIR}/simple_keys.cpp
				${ROOT_DIR}/game/shared/simtimer.cpp
				${ROOT_DIR}/game/shared/singleplay_gamerules.cpp
				${ROOT_DIR}/game/shared/SoundEmitterSystem.cpp
				${ROOT_DIR}/game/shared/soundenvelope.cpp
				${ROOT_DIR}/public/SoundParametersInternal.cpp
				${CLIENT_DIR}/statgather.cpp
				${CLIENT_DIR}/splinepatch.cpp
				${ROOT_DIR}/game/shared/Sprite.cpp
				${CLIENT_DIR}/spritemodel.cpp
				${ROOT_DIR}/game/shared/SpriteTrail.cpp
				${ROOT_DIR}/game/shared/studio_shared.cpp
				${ROOT_DIR}/game/shared/takedamageinfo.cpp
				${ROOT_DIR}/game/shared/teamplay_gamerules.cpp
				${ROOT_DIR}/game/shared/teamplayroundbased_gamerules.cpp
				${ROOT_DIR}/game/shared/test_ehandle.cpp
				${CLIENT_DIR}/text_message.cpp
				${CLIENT_DIR}/texturescrollmaterialproxy.cpp
				${CLIENT_DIR}/timematerialproxy.cpp
				${CLIENT_DIR}/toggletextureproxy.cpp
				${ROOT_DIR}/game/shared/usercmd.cpp
				${ROOT_DIR}/game/shared/usermessages.cpp
				${ROOT_DIR}/game/shared/util_shared.cpp
				${ROOT_DIR}/game/shared/vehicle_viewblend_shared.cpp
				${CLIENT_DIR}/vgui_avatarimage.cpp
				${CLIENT_DIR}/vgui_avatarimage.h
				${CLIENT_DIR}/vgui_basepanel.cpp
				${CLIENT_DIR}/vgui_bitmapbutton.cpp
				${CLIENT_DIR}/vgui_bitmapimage.cpp
				${CLIENT_DIR}/vgui_bitmappanel.cpp
				${CLIENT_DIR}/vgui_centerstringpanel.cpp
				${CLIENT_DIR}/vgui_consolepanel.cpp
				${CLIENT_DIR}/vgui_debugoverlaypanel.cpp
				${CLIENT_DIR}/vgui_fpspanel.cpp
				${CLIENT_DIR}/vgui_game_viewport.cpp
				${CLIENT_DIR}/vgui_grid.cpp
				${CLIENT_DIR}/vgui_int.cpp
				${CLIENT_DIR}/vgui_loadingdiscpanel.cpp
				${CLIENT_DIR}/vgui_messagechars.cpp
				${CLIENT_DIR}/vgui_netgraphpanel.cpp
				${CLIENT_DIR}/vgui_slideshow_display_screen.cpp
				${CLIENT_DIR}/view.cpp
				${CLIENT_DIR}/view_beams.cpp
				${CLIENT_DIR}/view_effects.cpp
				${CLIENT_DIR}/view_scene.cpp
				${CLIENT_DIR}/viewangleanim.cpp
				${CLIENT_DIR}/ViewConeImage.cpp
				${CLIENT_DIR}/viewdebug.cpp
				${CLIENT_DIR}/viewdebug.h
				${CLIENT_DIR}/viewpostprocess.cpp
				${CLIENT_DIR}/viewpostprocess.h
				${CLIENT_DIR}/viewrender.cpp
				${ROOT_DIR}/game/shared/voice_banmgr.cpp
				${ROOT_DIR}/game/shared/voice_status.cpp
				${CLIENT_DIR}/warp_overlay.cpp
				${CLIENT_DIR}/WaterLODMaterialProxy.cpp
				${ROOT_DIR}/game/shared/weapon_parse.cpp
				${CLIENT_DIR}/weapon_selection.cpp
				${CLIENT_DIR}/weapons_resource.cpp
				${CLIENT_DIR}/WorldDimsProxy.cpp
				${CLIENT_DIR}/vgui_video.cpp
				${ROOT_DIR}/game/shared/mp_shareddefs.cpp
				${ROOT_DIR}/public/bone_setup.cpp						
				${ROOT_DIR}/public/posedebugger.cpp					
				${ROOT_DIR}/public/client_class.cpp					
				${ROOT_DIR}/common/compiledcaptionswap.cpp			
				${ROOT_DIR}/public/collisionutils.cpp			
				${ROOT_DIR}/public/crtmemdebug.cpp					
				${ROOT_DIR}/public/dt_recv.cpp						
				${ROOT_DIR}/public/dt_utlvector_common.cpp			
				${ROOT_DIR}/public/dt_utlvector_recv.cpp				
				${ROOT_DIR}/public/filesystem_helpers.cpp				
				${ROOT_DIR}/public/interpolatortypes.cpp				
				${ROOT_DIR}/game/shared/interval.cpp					
				${ROOT_DIR}/public/networkvar.cpp						
				${ROOT_DIR}/common/randoverride.cpp					
				${ROOT_DIR}/public/rope_physics.cpp					
				${ROOT_DIR}/public/scratchpad3d.cpp					
				${ROOT_DIR}/public/ScratchPadUtils.cpp				
				${ROOT_DIR}/public/sentence.cpp						
				${ROOT_DIR}/game/shared/sheetsimulator.cpp			
				${ROOT_DIR}/public/simple_physics.cpp					
				${ROOT_DIR}/public/stringregistry.cpp					
				${ROOT_DIR}/public/studio.cpp							
				${ROOT_DIR}/public/vallocator.cpp						
				${ROOT_DIR}/public/vgui_controls/vgui_controls.cpp	
				${ROOT_DIR}/public/jigglebones.cpp					
				${CLIENT_DIR}/in_mouse.cpp										
				${CLIENT_DIR}/c_basetempentity.cpp
				${CLIENT_DIR}/c_effects.cpp
				${CLIENT_DIR}/c_impact_effects.cpp
				${CLIENT_DIR}/c_movie_explosion.cpp
				${CLIENT_DIR}/c_particle_fire.cpp
				${CLIENT_DIR}/c_particle_smokegrenade.cpp
				${CLIENT_DIR}/c_prop_vehicle.cpp
				${CLIENT_DIR}/c_recipientfilter.cpp
				${CLIENT_DIR}/c_smoke_trail.cpp
				${CLIENT_DIR}/c_smokestack.cpp
				${CLIENT_DIR}/c_steamjet.cpp
				${CLIENT_DIR}/c_stickybolt.cpp
				${CLIENT_DIR}/c_te.cpp
				${CLIENT_DIR}/c_te_armorricochet.cpp
				${CLIENT_DIR}/c_te_basebeam.cpp
				${CLIENT_DIR}/c_te_beamentpoint.cpp
				${CLIENT_DIR}/c_te_beaments.cpp
				${CLIENT_DIR}/c_te_beamfollow.cpp
				${CLIENT_DIR}/c_te_beamlaser.cpp
				${CLIENT_DIR}/c_te_beampoints.cpp
				${CLIENT_DIR}/c_te_beamring.cpp
				${CLIENT_DIR}/c_te_beamringpoint.cpp
				${CLIENT_DIR}/c_te_beamspline.cpp
				${CLIENT_DIR}/c_te_bloodsprite.cpp
				${CLIENT_DIR}/c_te_bloodstream.cpp
				${CLIENT_DIR}/c_te_breakmodel.cpp
				${CLIENT_DIR}/c_te_bspdecal.cpp
				${CLIENT_DIR}/c_te_bubbles.cpp
				${CLIENT_DIR}/c_te_bubbletrail.cpp
				${CLIENT_DIR}/c_te_clientprojectile.cpp
				${CLIENT_DIR}/c_te_decal.cpp
				${CLIENT_DIR}/c_te_dynamiclight.cpp
				${CLIENT_DIR}/c_te_effect_dispatch.cpp
				${CLIENT_DIR}/c_te_energysplash.cpp
				${CLIENT_DIR}/c_te_explosion.cpp
				${CLIENT_DIR}/c_te_fizz.cpp
				${CLIENT_DIR}/c_te_footprint.cpp
				${CLIENT_DIR}/c_te_glassshatter.cpp
				${CLIENT_DIR}/c_te_glowsprite.cpp
				${CLIENT_DIR}/c_te_impact.cpp
				${CLIENT_DIR}/c_te_killplayerattachments.cpp
				${CLIENT_DIR}/c_te_largefunnel.cpp
				${CLIENT_DIR}/c_te_legacytempents.cpp
				${CLIENT_DIR}/c_te_muzzleflash.cpp
				${CLIENT_DIR}/c_te_particlesystem.cpp
				${CLIENT_DIR}/c_te_physicsprop.cpp
				${CLIENT_DIR}/c_te_playerdecal.cpp
				${CLIENT_DIR}/c_te_projecteddecal.cpp
				${CLIENT_DIR}/c_te_showline.cpp
				${CLIENT_DIR}/c_te_smoke.cpp
				${CLIENT_DIR}/c_te_sparks.cpp
				${CLIENT_DIR}/c_te_sprite.cpp
				${CLIENT_DIR}/c_te_spritespray.cpp
				${CLIENT_DIR}/c_te_worlddecal.cpp
				${CLIENT_DIR}/c_testtraceline.cpp
				${CLIENT_DIR}/c_tracer.cpp
				${CLIENT_DIR}/fx.cpp
				${CLIENT_DIR}/fx_discreetline.cpp
				${CLIENT_DIR}/fx_envelope.cpp
				${CLIENT_DIR}/fx_line.cpp
				${CLIENT_DIR}/fx_sparks.cpp
				${CLIENT_DIR}/particlesphererenderer.cpp
				${CLIENT_DIR}/smoke_fog_overlay.cpp
				${CLIENT_DIR}/game_controls/baseviewport.cpp
				${CLIENT_DIR}/game_controls/ClientScoreBoardDialog.cpp
				${CLIENT_DIR}/game_controls/commandmenu.cpp
				${CLIENT_DIR}/game_controls/intromenu.cpp
				${CLIENT_DIR}/game_controls/MapOverview.cpp
				${CLIENT_DIR}/game_controls/NavProgress.cpp
				${CLIENT_DIR}/game_controls/SpectatorGUI.cpp
				${CLIENT_DIR}/game_controls/teammenu.cpp
				${CLIENT_DIR}/game_controls/vguitextwindow.cpp
				${CLIENT_DIR}/game_controls/IconPanel.cpp
				${ROOT_DIR}/public/tools/bonelist.cpp
				${ROOT_DIR}/public/tools/bonelist.h
				${CLIENT_DIR}/entity_client_tools.cpp
				${CLIENT_DIR}/toolframework_client.cpp
				${CLIENT_DIR}/toolframework_client.h
				${CLIENT_DIR}/mp3player.cpp
				${CLIENT_DIR}/basepresence.cpp
)

set(CLIENT_HL2_FILES
				${CLIENT_DIR}/hud_chat.cpp
				${CLIENT_DIR}/c_team_objectiveresource.cpp
				${CLIENT_DIR}/c_team_objectiveresource.h
				${ROOT_DIR}/game/shared/hl2/basehlcombatweapon_shared.cpp
				${ROOT_DIR}/game/shared/hl2/achievements_hl2.cpp
				${CLIENT_DIR}/hl2/c_antlion_dust.cpp
				${CLIENT_DIR}/hl2/c_ar2_explosion.cpp
				${CLIENT_DIR}/hl2/c_barnacle.cpp
				${CLIENT_DIR}/hl2/c_barney.cpp
				${CLIENT_DIR}/hl2/c_basehelicopter.cpp
				${CLIENT_DIR}/hl2/c_basehelicopter.h
				${CLIENT_DIR}/hl2/c_basehlcombatweapon.cpp
				${CLIENT_DIR}/hl2/c_basehlcombatweapon.h
				${CLIENT_DIR}/hl2/c_basehlplayer.cpp
				${CLIENT_DIR}/hl2/c_basehlplayer.h
				${CLIENT_DIR}/hl2/c_citadel_effects.cpp
				${CLIENT_DIR}/hl2/c_corpse.cpp
				${CLIENT_DIR}/hl2/c_corpse.h
				${CLIENT_DIR}/hl2/c_env_alyxtemp.cpp
				${CLIENT_DIR}/hl2/c_env_headcrabcanister.cpp
				${CLIENT_DIR}/hl2/c_env_starfield.cpp
				${CLIENT_DIR}/hl2/c_func_tankmortar.cpp
				${CLIENT_DIR}/hl2/c_hl2_playerlocaldata.cpp
				${CLIENT_DIR}/hl2/c_hl2_playerlocaldata.h
				${CLIENT_DIR}/hl2/c_info_teleporter_countdown.cpp
				${CLIENT_DIR}/hl2/c_npc_antlionguard.cpp
				${CLIENT_DIR}/hl2/c_npc_combinegunship.cpp
				${CLIENT_DIR}/hl2/c_npc_manhack.cpp
				${CLIENT_DIR}/hl2/c_npc_rollermine.cpp
				${CLIENT_DIR}/hl2/c_plasma_beam_node.cpp
				${CLIENT_DIR}/hl2/c_prop_combine_ball.cpp
				${CLIENT_DIR}/hl2/c_prop_combine_ball.h
				${CLIENT_DIR}/hl2/c_rotorwash.cpp
				${CLIENT_DIR}/hl2/c_script_intro.cpp
				${ROOT_DIR}/game/shared/script_intro_shared.cpp
				${CLIENT_DIR}/hl2/c_strider.cpp
				${CLIENT_DIR}/hl2/c_te_concussiveexplosion.cpp
				${CLIENT_DIR}/hl2/c_te_flare.cpp
				${CLIENT_DIR}/hl2/c_thumper_dust.cpp
				${CLIENT_DIR}/hl2/c_vehicle_airboat.cpp
				${CLIENT_DIR}/hl2/c_vehicle_cannon.cpp
				${CLIENT_DIR}/hl2/c_vehicle_crane.cpp
				${CLIENT_DIR}/hl2/c_vehicle_crane.h
				${CLIENT_DIR}/hl2/c_vehicle_prisoner_pod.cpp
				${CLIENT_DIR}/hl2/c_weapon__stubs_hl2.cpp
				${CLIENT_DIR}/hl2/c_weapon_crossbow.cpp
				${CLIENT_DIR}/hl2/c_weapon_physcannon.cpp
				${CLIENT_DIR}/hl2/c_weapon_stunstick.cpp
				${ROOT_DIR}/game/shared/hl2/citadel_effects_shared.h
				${CLIENT_DIR}/hl2/clientmode_hlnormal.cpp
				${CLIENT_DIR}/hl2/clientmode_hlnormal.h
				${CLIENT_DIR}/death.cpp
				${ROOT_DIR}/game/shared/hl2/env_headcrabcanister_shared.cpp
				${ROOT_DIR}/game/shared/hl2/env_headcrabcanister_shared.h
				${CLIENT_DIR}/hl2/fx_antlion.cpp
				${CLIENT_DIR}/hl2/fx_bugbait.cpp
				${CLIENT_DIR}/hl2/fx_hl2_impacts.cpp
				${CLIENT_DIR}/hl2/fx_hl2_tracers.cpp
				${CLIENT_DIR}/hl2/hl2_clientmode.cpp
				${ROOT_DIR}/game/shared/hl2/hl2_gamerules.cpp
				${ROOT_DIR}/game/shared/hl2/hl2_gamerules.h
				${ROOT_DIR}/game/shared/hl2/hl2_shareddefs.h
				${ROOT_DIR}/game/shared/hl2/hl2_usermessages.cpp
				${ROOT_DIR}/game/shared/hl2/hl_gamemovement.cpp
				${ROOT_DIR}/game/shared/hl2/hl_gamemovement.h
				${CLIENT_DIR}/hl2/hl_in_main.cpp
				${CLIENT_DIR}/hl2/hl_prediction.cpp
				${CLIENT_DIR}/hl2/hud_ammo.cpp
				${CLIENT_DIR}/hl2/hud_battery.cpp
				${CLIENT_DIR}/hl2/hud_blood.cpp
				${CLIENT_DIR}/hl2/hud_credits.cpp
				${CLIENT_DIR}/hl2/hud_damageindicator.cpp
				${CLIENT_DIR}/hl2/hud_flashlight.cpp
				${CLIENT_DIR}/hl2/hud_health.cpp
				${CLIENT_DIR}/hl2/hud_poisondamageindicator.cpp
				${CLIENT_DIR}/hud_posture.cpp
				${CLIENT_DIR}/hl2/hud_quickinfo.cpp
				${CLIENT_DIR}/hud_squadstatus.cpp
				${CLIENT_DIR}/hl2/hud_suitpower.cpp
				${CLIENT_DIR}/hl2/hud_suitpower.h
				${CLIENT_DIR}/hl2/hud_weaponselection.cpp
				${CLIENT_DIR}/hl2/hud_zoom.cpp
				${CLIENT_DIR}/hl2/shieldproxy.cpp
				${CLIENT_DIR}/hl2/vgui_rootpanel_hl2.cpp
				${CLIENT_DIR}/episodic/c_vort_charge_token.cpp
)

set(CLIENT_HL2MP_FILES
					${ROOT_DIR}/game/shared/weapon_parse_default.cpp
					${CLIENT_DIR}/c_team_objectiveresource.cpp
					${CLIENT_DIR}/c_team_objectiveresource.h
					${CLIENT_DIR}/hud_voicestatus.cpp
					${ROOT_DIR}/game/shared/predicted_viewmodel.cpp
					${ROOT_DIR}/game/shared/predicted_viewmodel.h
					${CLIENT_DIR}/episodic/c_vort_charge_token.cpp
					${ROOT_DIR}/game/shared/hl2/basehlcombatweapon_shared.cpp
					${CLIENT_DIR}/hl2/c_antlion_dust.cpp
					${CLIENT_DIR}/hl2/c_ar2_explosion.cpp
					${CLIENT_DIR}/hl2/c_barnacle.cpp
					${CLIENT_DIR}/hl2/c_barney.cpp
					${CLIENT_DIR}/hl2/c_basehelicopter.cpp
					${CLIENT_DIR}/hl2/c_basehelicopter.h
					${CLIENT_DIR}/hl2/c_basehlcombatweapon.cpp
					${CLIENT_DIR}/hl2/c_basehlcombatweapon.h
					${CLIENT_DIR}/hl2/c_basehlplayer.cpp
					${CLIENT_DIR}/hl2/c_basehlplayer.h
					${CLIENT_DIR}/hl2/c_citadel_effects.cpp
					${CLIENT_DIR}/hl2/c_corpse.cpp
					${CLIENT_DIR}/hl2/c_corpse.h
					${CLIENT_DIR}/hl2/c_env_alyxtemp.cpp
					${CLIENT_DIR}/hl2/c_env_headcrabcanister.cpp
					${CLIENT_DIR}/hl2/c_env_starfield.cpp
					${CLIENT_DIR}/hl2/c_func_tankmortar.cpp
					${CLIENT_DIR}/hl2/c_hl2_playerlocaldata.cpp
					${CLIENT_DIR}/hl2/c_hl2_playerlocaldata.h
					${CLIENT_DIR}/hl2/c_info_teleporter_countdown.cpp
					${CLIENT_DIR}/hl2/c_npc_antlionguard.cpp
					${CLIENT_DIR}/hl2/c_npc_combinegunship.cpp
					${CLIENT_DIR}/hl2/c_npc_manhack.cpp
					${CLIENT_DIR}/hl2/c_npc_rollermine.cpp
					${CLIENT_DIR}/hl2/c_plasma_beam_node.cpp
					${CLIENT_DIR}/hl2/c_prop_combine_ball.cpp
					${CLIENT_DIR}/hl2/c_prop_combine_ball.h
					${CLIENT_DIR}/hl2/c_rotorwash.cpp
					${CLIENT_DIR}/hl2/c_script_intro.cpp
					${ROOT_DIR}/game/shared/script_intro_shared.cpp
					${CLIENT_DIR}/hl2/c_strider.cpp
					${CLIENT_DIR}/hl2/c_te_concussiveexplosion.cpp
					${CLIENT_DIR}/hl2/c_te_flare.cpp
					${CLIENT_DIR}/hl2/c_thumper_dust.cpp
					${CLIENT_DIR}/hl2/c_vehicle_airboat.cpp
					${CLIENT_DIR}/hl2/c_vehicle_cannon.cpp
					${CLIENT_DIR}/hl2/c_vehicle_crane.cpp
					${CLIENT_DIR}/hl2/c_vehicle_crane.h
					${CLIENT_DIR}/hl2/c_vehicle_prisoner_pod.cpp
					${CLIENT_DIR}/hl2/c_weapon__stubs_hl2.cpp
					${CLIENT_DIR}/hl2/c_weapon_crossbow.cpp
					${ROOT_DIR}/game/shared/hl2/citadel_effects_shared.h
					${ROOT_DIR}/game/shared/hl2/env_headcrabcanister_shared.cpp
					${ROOT_DIR}/game/shared/hl2/env_headcrabcanister_shared.h
					${CLIENT_DIR}/hl2/fx_antlion.cpp
					${CLIENT_DIR}/hl2/fx_bugbait.cpp
					${CLIENT_DIR}/hl2/fx_hl2_impacts.cpp
					${CLIENT_DIR}/hl2/fx_hl2_tracers.cpp
					${CLIENT_DIR}/hl2/hl2_clientmode.cpp
					${ROOT_DIR}/game/shared/hl2/hl2_gamerules.cpp
					${ROOT_DIR}/game/shared/hl2/hl2_gamerules.h
					${ROOT_DIR}/game/shared/hl2/hl2_shareddefs.h
					${ROOT_DIR}/game/shared/hl2/hl2_usermessages.cpp
					${ROOT_DIR}/game/shared/hl2/hl_gamemovement.cpp
					${ROOT_DIR}/game/shared/hl2/hl_gamemovement.h
					${CLIENT_DIR}/hl2/hl_in_main.cpp
					${CLIENT_DIR}/hl2/hl_prediction.cpp
					${CLIENT_DIR}/hl2/hud_ammo.cpp
					${CLIENT_DIR}/hl2/hud_battery.cpp
					${CLIENT_DIR}/hl2/hud_blood.cpp
					${CLIENT_DIR}/hl2/hud_credits.cpp
					${CLIENT_DIR}/hl2/hud_damageindicator.cpp
					${CLIENT_DIR}/hl2/hud_flashlight.cpp
					${CLIENT_DIR}/hl2/hud_health.cpp
					${CLIENT_DIR}/hl2/hud_poisondamageindicator.cpp
					${CLIENT_DIR}/hl2/hud_quickinfo.cpp
					${CLIENT_DIR}/hud_squadstatus.cpp
					${CLIENT_DIR}/hl2/hud_suitpower.cpp
					${CLIENT_DIR}/hl2/hud_suitpower.h
					${CLIENT_DIR}/hl2/hud_weaponselection.cpp
					${CLIENT_DIR}/hl2/hud_zoom.cpp
					${CLIENT_DIR}/hl2/shieldproxy.cpp
					${CLIENT_DIR}/hl2/vgui_rootpanel_hl2.cpp
					${CLIENT_DIR}/hl2mp/c_hl2mp_player.cpp
					${CLIENT_DIR}/hl2mp/c_hl2mp_player.h
					${CLIENT_DIR}/hl2mp/c_te_hl2mp_shotgun_shot.cpp
					${CLIENT_DIR}/hl2mp/clientmode_hl2mpnormal.cpp
					${CLIENT_DIR}/hl2mp/clientmode_hl2mpnormal.h
					${ROOT_DIR}/game/shared/hl2mp/hl2mp_gamerules.cpp
					${ROOT_DIR}/game/shared/hl2mp/hl2mp_gamerules.h
					${ROOT_DIR}/game/shared/hl2mp/hl2mp_player_shared.cpp
					${ROOT_DIR}/game/shared/hl2mp/hl2mp_player_shared.h
					${ROOT_DIR}/game/shared/hl2mp/hl2mp_weapon_parse.cpp
					${ROOT_DIR}/game/shared/hl2mp/hl2mp_weapon_parse.h
					${ROOT_DIR}/game/shared/hl2mp/weapon_357.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_ar2.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_ar2.h
					${ROOT_DIR}/game/shared/hl2mp/weapon_crossbow.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_crowbar.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_frag.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_hl2mpbase.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_hl2mpbase.h
					${ROOT_DIR}/game/shared/hl2mp/weapon_hl2mpbase_machinegun.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_hl2mpbase_machinegun.h
					${ROOT_DIR}/game/shared/hl2mp/weapon_hl2mpbasebasebludgeon.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_hl2mpbasehlmpcombatweapon.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_hl2mpbasehlmpcombatweapon.h
					${ROOT_DIR}/game/shared/hl2mp/weapon_physcannon.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_physcannon.h
					${ROOT_DIR}/game/shared/hl2mp/weapon_pistol.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_rpg.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_rpg.h
					${ROOT_DIR}/game/shared/hl2mp/weapon_shotgun.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_slam.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_slam.h
					${ROOT_DIR}/game/shared/hl2mp/weapon_smg1.cpp
					${ROOT_DIR}/game/shared/hl2mp/weapon_stunstick.cpp
					${CLIENT_DIR}/hl2mp/ui/backgroundpanel.cpp
					${CLIENT_DIR}/hl2mp/ui/backgroundpanel.h
					${CLIENT_DIR}/hl2mp/hl2mp_hud_chat.cpp
					${CLIENT_DIR}/hl2mp/hl2mp_hud_chat.h
					${CLIENT_DIR}/hl2mp/hl2mp_hud_target_id.cpp
					${CLIENT_DIR}/hl2mp/hl2mp_hud_team.cpp
					${CLIENT_DIR}/hl2mp/ui/hl2mpclientscoreboard.cpp
					${CLIENT_DIR}/hl2mp/ui/hl2mpclientscoreboard.h
					${CLIENT_DIR}/hl2mp/ui/hl2mptextwindow.cpp
					${CLIENT_DIR}/hl2mp/ui/hl2mptextwindow.h
					${CLIENT_DIR}/hl2mp/hud_deathnotice.cpp
)

set(CLIENT_EP1_FILES
				${CLIENT_DIR}/hud_chat.cpp
				${CLIENT_DIR}/c_team_objectiveresource.cpp
				${CLIENT_DIR}/c_team_objectiveresource.h
				${ROOT_DIR}/game/shared/hl2/basehlcombatweapon_shared.cpp
				${ROOT_DIR}/game/shared/episodic/achievements_ep1.cpp
				${ROOT_DIR}/game/shared/episodic/achievements_ep2.cpp
				${ROOT_DIR}/game/shared/episodic/achievements_epx.cpp
				${CLIENT_DIR}/hl2/c_antlion_dust.cpp
				${CLIENT_DIR}/hl2/c_ar2_explosion.cpp
				${CLIENT_DIR}/hl2/c_barnacle.cpp
				${CLIENT_DIR}/hl2/c_barney.cpp
				${CLIENT_DIR}/hl2/c_basehelicopter.cpp
				${CLIENT_DIR}/hl2/c_basehelicopter.h
				${CLIENT_DIR}/hl2/c_basehlcombatweapon.cpp
				${CLIENT_DIR}/hl2/c_basehlcombatweapon.h
				${CLIENT_DIR}/hl2/c_basehlplayer.cpp
				${CLIENT_DIR}/hl2/c_basehlplayer.h
				${CLIENT_DIR}/hl2/c_citadel_effects.cpp
				${CLIENT_DIR}/hl2/c_corpse.cpp
				${CLIENT_DIR}/hl2/c_corpse.h
				${CLIENT_DIR}/hl2/c_env_alyxtemp.cpp
				${CLIENT_DIR}/hl2/c_env_headcrabcanister.cpp
				${CLIENT_DIR}/hl2/c_env_starfield.cpp
				${CLIENT_DIR}/hl2/c_func_tankmortar.cpp
				${CLIENT_DIR}/hl2/c_hl2_playerlocaldata.cpp
				${CLIENT_DIR}/hl2/c_hl2_playerlocaldata.h
				${CLIENT_DIR}/hl2/c_info_teleporter_countdown.cpp
				${CLIENT_DIR}/hl2/c_npc_antlionguard.cpp
				${CLIENT_DIR}/hl2/c_npc_combinegunship.cpp
				${CLIENT_DIR}/hl2/c_npc_manhack.cpp
				${CLIENT_DIR}/hl2/c_npc_rollermine.cpp
				${CLIENT_DIR}/hl2/c_plasma_beam_node.cpp
				${CLIENT_DIR}/hl2/c_prop_combine_ball.cpp
				${CLIENT_DIR}/hl2/c_prop_combine_ball.h
				${CLIENT_DIR}/episodic/c_prop_scalable.cpp
				${CLIENT_DIR}/hl2/c_rotorwash.cpp
				${CLIENT_DIR}/hl2/c_script_intro.cpp
				${ROOT_DIR}/game/shared/script_intro_shared.cpp
				${CLIENT_DIR}/hl2/c_strider.cpp
				${CLIENT_DIR}/hl2/c_te_concussiveexplosion.cpp
				${CLIENT_DIR}/hl2/c_te_flare.cpp
				${CLIENT_DIR}/hl2/c_thumper_dust.cpp
				${CLIENT_DIR}/hl2/c_vehicle_airboat.cpp
				${CLIENT_DIR}/hl2/c_vehicle_cannon.cpp
				${CLIENT_DIR}/hl2/c_vehicle_crane.cpp
				${CLIENT_DIR}/hl2/c_vehicle_crane.h
				${CLIENT_DIR}/episodic/c_vehicle_jeep_episodic.cpp
				${CLIENT_DIR}/hl2/c_vehicle_prisoner_pod.cpp
				${CLIENT_DIR}/episodic/c_vort_charge_token.cpp
				${CLIENT_DIR}/hl2/c_weapon__stubs_hl2.cpp
				${CLIENT_DIR}/hl2/c_weapon_crossbow.cpp
				${CLIENT_DIR}/episodic/c_weapon_hopwire.cpp
				${CLIENT_DIR}/hl2/c_weapon_physcannon.cpp
				${CLIENT_DIR}/hl2/c_weapon_stunstick.cpp
				${ROOT_DIR}/game/shared/hl2/citadel_effects_shared.h
				${CLIENT_DIR}/hl2/clientmode_hlnormal.cpp
				${CLIENT_DIR}/hl2/clientmode_hlnormal.h
				${CLIENT_DIR}/death.cpp
				${ROOT_DIR}/game/shared/hl2/env_headcrabcanister_shared.cpp
				${ROOT_DIR}/game/shared/hl2/env_headcrabcanister_shared.h
				${ROOT_DIR}/game/shared/episodic/npc_advisor_shared.h
				${CLIENT_DIR}/episodic/c_npc_advisor.cpp
				${CLIENT_DIR}/episodic/episodic_screenspaceeffects.cpp
				${CLIENT_DIR}/episodic/episodic_screenspaceeffects.h
				${CLIENT_DIR}/episodic/flesh_internal_material_proxy.cpp
				${CLIENT_DIR}/hl2/fx_antlion.cpp
				${CLIENT_DIR}/hl2/fx_bugbait.cpp
				${CLIENT_DIR}/hl2/fx_hl2_impacts.cpp
				${CLIENT_DIR}/hl2/fx_hl2_tracers.cpp
				${CLIENT_DIR}/hl2/hl2_clientmode.cpp
				${ROOT_DIR}/game/shared/hl2/hl2_gamerules.cpp
				${ROOT_DIR}/game/shared/hl2/hl2_gamerules.h
				${ROOT_DIR}/game/shared/hl2/hl2_shareddefs.h
				${ROOT_DIR}/game/shared/hl2/hl2_usermessages.cpp
				${ROOT_DIR}/game/shared/hl2/hl_gamemovement.cpp
				${ROOT_DIR}/game/shared/hl2/hl_gamemovement.h
				${CLIENT_DIR}/hl2/hl_in_main.cpp
				${CLIENT_DIR}/hl2/hl_prediction.cpp
				${CLIENT_DIR}/hl2/hud_ammo.cpp
				${CLIENT_DIR}/hl2/hud_battery.cpp
				${CLIENT_DIR}/hl2/hud_blood.cpp
				${CLIENT_DIR}/hl2/hud_credits.cpp
				${CLIENT_DIR}/hl2/hud_damageindicator.cpp
				${CLIENT_DIR}/hl2/hud_flashlight.cpp
				${CLIENT_DIR}/hl2/hud_locator.cpp
				${CLIENT_DIR}/hl2/hud_health.cpp
				${CLIENT_DIR}/hl2/hud_poisondamageindicator.cpp			
				${CLIENT_DIR}/hud_posture.cpp
				${CLIENT_DIR}/hl2/hud_quickinfo.cpp
				${CLIENT_DIR}/hl2/hud_radar.cpp
				${CLIENT_DIR}/hl2/hud_radar.h
				${CLIENT_DIR}/hud_squadstatus.cpp
				${CLIENT_DIR}/hl2/hud_suitpower.cpp
				${CLIENT_DIR}/hl2/hud_suitpower.h
				${CLIENT_DIR}/hl2/hud_weaponselection.cpp
				${CLIENT_DIR}/hl2/hud_zoom.cpp
				${CLIENT_DIR}/hl2/shieldproxy.cpp
				${ROOT_DIR}/game/shared/hl2/survival_gamerules.cpp
				${CLIENT_DIR}/hl2/vgui_rootpanel_hl2.cpp
				${CLIENT_DIR}/episodic/c_npc_puppet.cpp
)