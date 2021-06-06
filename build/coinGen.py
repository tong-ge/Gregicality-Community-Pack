import json
import os

out = "// THIS CODE WAS AUTOGENERATED WITH build/coinGen.py\n\n"
dirs = ["config/gregtech/worldgen/overworld/", "config/gregtech/worldgen/nether/", "config/gregtech/worldgen/end/",
        "config/gregtech/worldgen/beneath/", "config/gregtech/worldgen/advanced-rocketry/moon/", "config/gregtech/worldgen/advanced-rocketry/mars/"]

intCircuit = 0
for i in dirs:
    directory = os.fsencode(i)
    for file in os.listdir(directory):
        filename = os.fsdecode(file)
        if filename.endswith(".json") and not "natural_gas_plate" in filename and not "oil_sphere" in filename:
            voltage = input("what voltage should " + filename + " be?")
            cost = input("How much should " + filename + " cost?")
            out = out + "stock_manipulator.recipeBuilder()\n.notConsumable(intCircuit(" + str(intCircuit) + "))\n"
            with open(i + filename) as f:
                vein = json.load(f)
            
            if voltage.upper() == "LV":
                out = out + ".inputs(<contenttweaker:coin_steel> * " + cost + ")\n.EUt(30)\n.duration(" + str(10*int(cost)) + ")\n"
            elif voltage.upper() == "MV":
                out = out + ".inputs(<contenttweaker:coin_aluminium> * " + cost + ")\n.EUt(90)\n.duration(" + str(10*int(cost)) + ")\n"
            elif voltage.upper() == "HV":
                out = out + ".inputs(<contenttweaker:coin_steel> * " + cost + ")\n.EUt(270)\n.duration(" + str(10*int(cost)) + ")\n"

            for ore in vein["filler"]["value"]["values"]:
                orename = "ore_"
                for sub in ore["value"].split(":")[1:]:
                    orename = orename + sub + "_"
                orename = orename + "0"
                out = out + ".outputs(<gregtech:" + orename + "> * 32)\n"
            out = out + ".buildAndRegister();\n\n"
            intCircuit += 1
        else:
            print("skipped", filename)

with open("buildOut/out.zs","w") as f:
    f.write(out)
