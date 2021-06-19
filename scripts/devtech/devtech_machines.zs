#priority 999

import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.TextureArea;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialCasting;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import scripts.gregtech_globals.intCircuit;

var stock_manipulator = IRecipeMap.recipeMapBuilder("stock_manipulator")
    .minInputs(3)
    .maxInputs(3)
    .minOutputs(1)
    .maxOutputs(4)
    .minFluidInputs(0)
    .maxFluidInputs(0)
    .minFluidOutputs(0)
    .maxFluidOutputs(0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("bender_overlay")), OverlaySlot.newOverlaySlot(false, false, true, GUITextures.get("bender_overlay")),
    OverlaySlot.newOverlaySlot(true, false, false, GUITextures.get("bender_overlay")),  OverlaySlot.newOverlaySlot(true, false, false, GUITextures.get("bender_overlay")),  OverlaySlot.newOverlaySlot(true, false, false, GUITextures.get("bender_overlay")),  OverlaySlot.newOverlaySlot(true, false, true, GUITextures.get("bender_overlay")))
    .setProgressBar(TextureArea.fullImage("gregtech:textures/gui/progress_bar/progress_bar_stock_manipulator.png"), MoveType.HORIZONTAL)
    .buildCircuit();

var rocket_assembler = IRecipeMap.recipeMapBuilder("rocket_assembler")
    .minInputs(1)
    .maxInputs(9)
    .maxFluidInputs(1)
    .setProgressBar(GUITextures.get("progress_bar_arrow"), MoveType.HORIZONTAL)
    .build();

val tiers as string[] = ["ulv", "lv", "mv", "hv", "ev", "iv", "luv", "zpm", "uv"];

RegisterMachine.CreateQuantumChest(5000, "super.chest." + tiers[0], 0, 2048);
RegisterMachine.CreateQuantumTank(5009, "super.tank." + tiers[0], 0, 1000000);

for i in 1 to 9 {
    RegisterMachine.CreateQuantumChest((5000 + i), "super.chest." + tiers[i], i, (2048 * pow(2, i)));
    RegisterMachine.CreateQuantumTank((5009 + i), "super.tank." + tiers[i], i, (2000000 * pow(2, i)));
    RegisterMachine.CreateSimpleMachine((5018 + i), "stock_manipulator." + tiers[i], stock_manipulator, Overlays.get("electromagnetic_separator"), i);
}

RegisterMachine.CreateSimpleMachine(5028, "rocket_assembler.uv", rocket_assembler, Overlays.get("assembler"), 8);




// THIS CODE WAS AUTOGENERATED WITH build/coinGen.py

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(3))
    .inputs(<contenttweaker:coin_steel> * 2)
    .EUt(30)
    .duration(20)
    .outputs(<gregtech:ore_apatite_0> * 32)
    .outputs(<gregtech:ore_phosphor_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(4))
    .inputs(<contenttweaker:coin_steel> * 2)
    .EUt(30)
    .duration(20)
    .outputs(<gregtech:ore_basaltic_mineral_sand_0> * 32)
    .outputs(<gregtech:ore_granitic_mineral_sand_0> * 32)
    .outputs(<gregtech:ore_gypsum_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(5))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_bornite_0> * 32)
    .outputs(<gregtech:ore_chalcocite_0> * 32)
    .outputs(<gregtech:ore_enargite_0> * 32)
    .outputs(<gregtech:ore_copper_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(6))
    .inputs(<contenttweaker:coin_steel> * 7)
    .EUt(30)
    .duration(70)
    .outputs(<gregtech:ore_cassiterite_sand_0> * 32)
    .outputs(<gregtech:ore_garnet_sand_0> * 32)
    .outputs(<gregtech:ore_asbestos_0> * 32)
    .outputs(<gregtech:ore_diatomite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(7))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_chalcopyrite_0> * 32)
    .outputs(<gregtech:ore_iron_0> * 32)
    .outputs(<gregtech:ore_pyrite_0> * 32)
    .outputs(<gregtech:ore_copper_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(8))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_chalcopyrite_0> * 32)
    .outputs(<gregtech:ore_vermiculite_0> * 32)
    .outputs(<gregtech:ore_cassiterite_0> * 32)
    .outputs(<gregtech:ore_alunite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(9))
    .inputs(<contenttweaker:coin_steel> * 2)
    .EUt(30)
    .duration(20)
    .outputs(<gregtech:ore_lignite_0> * 32)
    .outputs(<gregtech:ore_coal_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(10))
    .inputs(<contenttweaker:coin_aluminium> * 10)
    .EUt(90)
    .duration(100)
    .outputs(<gregtech:ore_graphite_0> * 32)
    .outputs(<gregtech:ore_diamond_0> * 32)
    .outputs(<gregtech:ore_coal_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(11))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_dolomite_0> * 32)
    .outputs(<gregtech:ore_wollastonite_0> * 32)
    .outputs(<gregtech:ore_trona_0> * 32)
    .outputs(<gregtech:ore_andradite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(12))
    .inputs(<contenttweaker:coin_steel> * 10)
    .EUt(30)
    .duration(100)
    .outputs(<gregtech:ore_galena_0> * 32)
    .outputs(<gregtech:ore_silver_0> * 32)
    .outputs(<gregtech:ore_lead_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(13))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_brown_limonite_0> * 32)
    .outputs(<gregtech:ore_yellow_limonite_0> * 32)
    .outputs(<gregtech:ore_banded_iron_0> * 32)
    .outputs(<gregtech:ore_malachite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(14))
    .inputs(<contenttweaker:coin_steel> * 2)
    .EUt(30)
    .duration(20)
    .outputs(<gregtech:ore_kyanite_0> * 32)
    .outputs(<gregtech:ore_mica_0> * 32)
    .outputs(<gregtech:ore_cassiterite_0> * 32)
    .outputs(<gregtech:ore_pollucite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(15))
    .inputs(<contenttweaker:coin_steel> * 3)
    .EUt(30)
    .duration(30)
    .outputs(<gregtech:ore_lazurite_0> * 32)
    .outputs(<gregtech:ore_sodalite_0> * 32)
    .outputs(<gregtech:ore_lapis_0> * 32)
    .outputs(<gregtech:ore_calcite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(16))
    .inputs(<contenttweaker:coin_steel> * 6)
    .EUt(30)
    .duration(60)
    .outputs(<gregtech:ore_mica_0> * 32)
    .outputs(<gregtech:ore_asbestos_0> * 32)
    .outputs(<gregtech:ore_gypsum_0> * 32)
    .outputs(<gregtech:ore_kaolinite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(17))
    .inputs(<contenttweaker:coin_steel> * 3)
    .EUt(30)
    .duration(30)
    .outputs(<gregtech:ore_bastnasite_0> * 32)
    .outputs(<gregtech:ore_monazite_0> * 32)
    .outputs(<gregtech:ore_neodymium_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(18))
    .inputs(<contenttweaker:coin_steel> * 8)
    .EUt(30)
    .duration(80)
    .outputs(<gregtech:ore_garnierite_0> * 32)
    .outputs(<gregtech:ore_nickel_0> * 32)
    .outputs(<gregtech:ore_cobaltite_0> * 32)
    .outputs(<gregtech:ore_pentlandite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(19))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(20)
    .outputs(<gregtech:ore_oilsands_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(20))
    .inputs(<contenttweaker:coin_steel> * 10)
    .EUt(30)
    .duration(100)
    .outputs(<gregtech:ore_quartzite_0> * 32)
    .outputs(<gregtech:ore_barite_0> * 32)
    .outputs(<gregtech:ore_certus_quartz_0> * 32)
    .outputs(<gregtech:ore_tennantite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(21))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_redstone_0> * 32)
    .outputs(<gregtech:ore_ruby_0> * 32)
    .outputs(<gregtech:ore_cinnabar_0> * 32)
    .outputs(<gregtech:ore_chromite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(22))
    .inputs(<contenttweaker:coin_steel> * 1)
    .EUt(30)
    .duration(10)
    .outputs(<gregtech:ore_salt_0> * 32)
    .outputs(<gregtech:ore_rock_salt_0> * 32)
    .outputs(<gregtech:ore_lepidolite_0> * 32)
    .outputs(<gregtech:ore_spodumene_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(23))
    .inputs(<contenttweaker:coin_steel> * 3)
    .EUt(30)
    .duration(30)
    .outputs(<gregtech:ore_almandine_0> * 32)
    .outputs(<gregtech:ore_pyrope_0> * 32)
    .outputs(<gregtech:ore_sapphire_0> * 32)
    .outputs(<gregtech:ore_green_sapphire_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(24))
    .inputs(<contenttweaker:coin_steel> * 3)
    .EUt(30)
    .duration(30)
    .outputs(<gregtech:ore_soapstone_0> * 32)
    .outputs(<gregtech:ore_talc_0> * 32)
    .outputs(<gregtech:ore_glauconite_0> * 32)
    .outputs(<gregtech:ore_pentlandite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(25))
    .inputs(<contenttweaker:coin_steel> * 3)
    .EUt(30)
    .duration(30)
    .outputs(<gregtech:ore_tenorite_0> * 32)
    .outputs(<gregtech:ore_copper_0> * 32)
    .outputs(<gregtech:ore_cuprite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(26))
    .inputs(<contenttweaker:coin_steel> * 3)
    .EUt(30)
    .duration(30)
    .outputs(<gregtech:ore_tetrahedrite_0> * 32)
    .outputs(<gregtech:ore_copper_0> * 32)
    .outputs(<gregtech:ore_stibnite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(27))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_tin_0> * 32)
    .outputs(<gregtech:ore_cassiterite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(28))
    .inputs(<contenttweaker:coin_steel> * 10)
    .EUt(30)
    .duration(100)
    .outputs(<gregtech:ore_topaz_0> * 32)
    .outputs(<gregtech:ore_blue_topaz_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(29))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_chalcopyrite_0> * 32)
    .outputs(<gregtech:ore_iron_0> * 32)
    .outputs(<gregtech:ore_pyrite_0> * 32)
    .outputs(<gregtech:ore_copper_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(30))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_brown_limonite_0> * 32)
    .outputs(<gregtech:ore_yellow_limonite_0> * 32)
    .outputs(<gregtech:ore_banded_iron_0> * 32)
    .outputs(<gregtech:ore_malachite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(31))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_magnetite_0> * 32)
    .outputs(<gregtech:ore_iron_0> * 32)
    .outputs(<gregtech:ore_vanadium_magnetite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(1))
    .notConsumable(intCircuit(32))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_nether_quartz_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(4))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_garnierite_0> * 32)
    .outputs(<gregtech:ore_nickel_0> * 32)
    .outputs(<gregtech:ore_cobaltite_0> * 32)
    .outputs(<gregtech:ore_pentlandite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(5))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_redstone_0> * 32)
    .outputs(<gregtech:ore_ruby_0> * 32)
    .outputs(<gregtech:ore_cinnabar_0> * 32)
    .outputs(<gregtech:ore_chromite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(6))
    .inputs(<contenttweaker:coin_steel> * 10)
    .EUt(30)
    .duration(100)
    .outputs(<gregtech:ore_sulfur_0> * 32)
    .outputs(<gregtech:ore_niter_0> * 32)
    .outputs(<gregtech:ore_pyrite_0> * 32)
    .outputs(<gregtech:ore_sphalerite_0> * 32)
    .outputs(<gregtech:ore_tennantite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(7))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_tetrahedrite_0> * 32)
    .outputs(<gregtech:ore_copper_0> * 32)
    .outputs(<gregtech:ore_stibnite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(8))
    .inputs(<contenttweaker:coin_steel> * 10)
    .EUt(30)
    .duration(100)
    .outputs(<gregtech:ore_topaz_0> * 32)
    .outputs(<gregtech:ore_blue_topaz_0> * 32)
    .outputs(<gregtech:ore_zirkelite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(9))
    .inputs(<contenttweaker:coin_aluminium> * 10)
    .EUt(90)
    .duration(100)
    .outputs(<gregtech:ore_beryllium_0> * 32)
    .outputs(<gregtech:ore_emerald_0> * 32)
    .outputs(<gregtech:ore_thorium_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(10))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_lazurite_0> * 32)
    .outputs(<gregtech:ore_sodalite_0> * 32)
    .outputs(<gregtech:ore_lapis_0> * 32)
    .outputs(<gregtech:ore_calcite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(11))
    .inputs(<contenttweaker:coin_aluminium> * 5)
    .EUt(90)
    .duration(50)
    .outputs(<gregtech:ore_grossular_0> * 32)
    .outputs(<gregtech:ore_spessartine_0> * 32)
    .outputs(<gregtech:ore_pyrolusite_0> * 32)
    .outputs(<gregtech:ore_tantalite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(12))
    .inputs(<contenttweaker:coin_stainless_steel> * 10)
    .EUt(270)
    .duration(100)
    .outputs(<gregtech:ore_wulfenite_0> * 32)
    .outputs(<gregtech:ore_molybdenite_0> * 32)
    .outputs(<gregtech:ore_powellite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(13))
    .inputs(<contenttweaker:coin_steel> * 5)
    .EUt(30)
    .duration(50)
    .outputs(<gregtech:ore_garnierite_0> * 32)
    .outputs(<gregtech:ore_nickel_0> * 32)
    .outputs(<gregtech:ore_cobaltite_0> * 32)
    .outputs(<gregtech:ore_pentlandite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(14))
    .inputs(<contenttweaker:coin_stainless_steel> * 20)
    .EUt(270)
    .duration(200)
    .outputs(<gregtech:ore_platinum_metallic_powder_0> * 32)
    .outputs(<gregtech:ore_palladium_metallic_powder_0> * 32)
    .outputs(<gregtech:ore_rarest_metal_residue_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(15))
    .outputs(<gregtech:ore_wulfenite_0> * 32)
    .outputs(<gregtech:ore_molybdenite_0> * 32)
    .outputs(<gregtech:ore_powellite_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(16))
    .inputs(<contenttweaker:coin_stainless_steel> * 20)
    .EUt(270)
    .duration(200)
    .outputs(<gregtech:ore_silver_0> * 32)
    .outputs(<gregtech:ore_precious_metal_0> * 32)
    .outputs(<gregtech:ore_gold_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(17))
    .inputs(<contenttweaker:coin_stainless_steel> * 10)
    .EUt(810)
    .duration(100)
    .outputs(<gregtech:ore_bauxite_0> * 32)
    .outputs(<gregtech:ore_aluminium_0> * 32)
    .outputs(<gregtech:ore_ilmenite_0> * 32)
    .outputs(<gregtech:ore_rutile_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(18))
    .outputs(<gregtech:poor_ore_scheelite_0> * 32)
    .outputs(<gregtech:poor_ore_tungstate_0> * 32)
    .outputs(<gregtech:ore_lithium_0> * 32)
    .outputs(<gregtech:ore_tellurium_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(19))
    .inputs(<contenttweaker:coin_aluminium> * 10)
    .EUt(90)
    .duration(100)
    .outputs(<gregtech:ore_pitchblende_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(20))
    .inputs(<contenttweaker:coin_stainless_steel> * 32)
    .EUt(810)
    .duration(320)
    .outputs(<gregtech:ore_scheelite_0> * 32)
    .outputs(<gregtech:ore_tungstate_0> * 32)
    .outputs(<gregtech:ore_lithium_0> * 32)
    .outputs(<gregtech:ore_tellurium_0> * 32)
    .buildAndRegister();

stock_manipulator.recipeBuilder()
    .notConsumable(intCircuit(2))
    .notConsumable(intCircuit(21))
    .inputs(<contenttweaker:coin_stainless_steel> * 32)
    .EUt(810)
    .duration(320)
    .outputs(<gregtech:ore_scheelite_0> * 32)
    .outputs(<gregtech:ore_tungstate_0> * 32)
    .outputs(<gregtech:ore_lithium_0> * 32)
    .outputs(<gregtech:ore_tellurium_0> * 32)
    .buildAndRegister();

recipes.addShaped("gt_coin_iron", <metaitem:dustIron> * 32, [
    [<contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>],
    [null, null, null],
    [null, null, null]
]);
recipes.addShaped("gt_coin_copper", <metaitem:dustCopper> * 32, [
    [null, null, null],
    [<contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>],
    [null, null, null]
]);
recipes.addShaped("gt_coin_tin", <metaitem:dustTin> * 32, [
    [null, null, null],
    [null, null, null],
    [<contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>]
]);
recipes.addShaped("gt_coin_redstone", <minecraft:redstone> * 32, [
    [null, null, null],
    [null, <contenttweaker:coin_bronze>, null],
    [null, null, null]
]);
recipes.addShaped("gt_coin_silver", <metaitem:dustSilver> * 32, [
    [<contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>],
    [null, <contenttweaker:coin_bronze>, null],
    [<contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>, <contenttweaker:coin_bronze>]
]);
recipes.addShaped("gt_coin_diamond", <minecraft:diamond> * 4, [
    [<contenttweaker:coin_bronze>, null, <contenttweaker:coin_bronze>],
    [null, <contenttweaker:coin_bronze>, null],
    [<contenttweaker:coin_bronze>, null, <contenttweaker:coin_bronze>]
]);

canner.recipeBuilder().inputs(<minecraft:stone>*8).duration(100).EUt(8).inputs(<ore:dyeWhite>).outputs(<gregtech:mineral:0>*8).buildAndRegister();
canner.recipeBuilder().inputs(<minecraft:stone>*8).duration(100).EUt(8).inputs(<ore:dyeRed>).outputs(<gregtech:granite:1>*8).buildAndRegister();
canner.recipeBuilder().inputs(<minecraft:stone>*8).duration(100).EUt(8).inputs(<ore:dyeBlack>).outputs(<gregtech:granite:0>*8).buildAndRegister();