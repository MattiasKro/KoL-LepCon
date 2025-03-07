const __lepcon_effects = [
    ["exercise", "Effect: Gym Bros (10 adv)<br>+1 Muscle Stats Per Fight<br>Muscle +20%", "", ""],
    ["mental stimulation", "Effect: Well Stimulated (10 adv) <br>+1 Mysticality Stats Per Fight<br>Mysticality +20%", "", ""],
    ["dumb entertainment", "Effect: Wasting Time (10 adv)<br>+1 Moxie Stats Per Fight<br>Moxie +20%", "", ""],
    ["food", "Items: random food from the drop pool", "", ""],
    ["booze", "Items: random beer from drop pool", "", ""],
    ["sleep", "Effect: Good Night's Sleep (10 adv)<br>+25% Combat Initiative", "", ""],
    ["exercise", "Effect: Work Out Smarter, Not Harder (10 adv)<br>Muscle +20<br>Weapon Damage +20<br>Maximum HP +50%", "mental stimulation", "Effect: Well Stimulated (20 adv) <br>+1 Mysticality Stats Per Fight<br>Mysticality +20%"],
    ["exercise", "Efffect: Vicarious Sweat (10 adv)<br>Maximum HP +30<br>+15% Item Drops from Monsters", "dumb entertainment", "Effect: Your Days Are Numbed (10 adv)<br>+5 to Familiar Weight<br>+5 Familiar Experience Per Combat"],
    ["exercise", "Effect: Your Days Are Numbed (10 adv)<br>+5 to Familiar Weight<br>+5 Familiar Experience Per Combat", "food", "Item: standard-issue cupcake<br>(good food, it's an old item)"],
    ["exercise", "Item: table tennis ball (11863)<br>Combat item, delevels monster by 25%", "booze", "Items: 2 random beers from drop pool (duplicates possible)"],
    ["exercise", "Effect: Gym Bros (10 adv)<br>+1 Muscle Stats Per Fight<br>Muscle +20%", "sleep", "Effect: Tired Muscles (10 adv)<br>Monsters will be less attracted to you"],
    ["mental stimulation", "Item: crafting plans (11866)<br>One free turn of crafting", "dumb entertainment", "Effect: Wasting Time (10 adv)<br>+1 Moxie Stats Per Fight<br>Moxie +20%"],
    ["mental stimulation", "Effect: Counter Intelligence (10 adv)<br>Maximum MP +30<br>+30% Meat from Monsters", "food", "Item: random food from the drop pool"],
    ["mental stimulation", "Effect: Counter Intelligence (10 adv)<br>Maximum MP +30<br>+30% Meat from Monsters", "booze", "Item: random booze"],
    ["mental stimulation", "Effect: Alone with Your Thoughts (10 adv)<br>Mysticality +20<br>Spell Damage +20<br>Maximum MP +50%", "sleep", "Effect: Quiet Night's Sleep (10 adv)<br>+50% Combat Initiative<br>Regenerate 5-10 MP per Adventure"],
    ["dumb entertainment", "Effect: You Might Have Gotten Wet (10 adv)<br>Moxie +20<br>Ranged Damage +20<br>Damage Reduction: 10", "food", "Item: 2 fruits from the drop pool (duplicates possible)"],
    ["dumb entertainment", "Item: bar dart (11870)<br>Combat item, damage a foe and increase booze drops", "booze", "Item: random booze from the drop pool"],
    ["dumb entertainment", "Effect: Your Days Are Numbed (10 adv)<br>+5 to Familiar Weight<br>+5 Familiar Experience Per Combat", "sleep", "Effect: Good Night's Sleep (10 adv)<br>+25% Combat Initiative"],
    ["food", "Item: 2 random foods from the drop pool", "booze", "Item: pint of Leprechaun Stout"],
    ["food", "Item: random food from the drop pool", "sleep", "Sur La Table (20 advs)<br>Regenerate 5-10 MP per Adventure<br>Regenerate 5-10 HP per Adventure"],
    ["booze", "Item: random booze from the drop pool", "sleep", "Moist Night's Sleep<br>+50% Combat Initiative<br>So-So Hot Resistance (+2)<br>+10 Cold Damage"],
    ["exercise", "Item: scoop of pre-workout powder (11862)<br>Type: spleen item, Toxicity: 3<br>Grants skill called \"Punch Out Your Foe\" that allows you to banish a foe for 20 turns for 10 MP", "", ""],
    ["mental stimulation", "Item: leprechaun antidepressant pill (11871) <br>Type: spleen item, Toxicity: 3<br>Effect: Ready for War (40 Adventures)<br>Monsters will be much more attracted to you<br>Weapon Damage +50%<br>Spell Damage +50%<br>Ranged Damage +50%", "", ""],
    ["dumb entertainment", "Item: phosphor traces (11865)<br>Type: spleen item, Toxicity: 3<br>Selling Price: 100 Meat.<br><br>Create an afterimage of a foe", "", ""],
    ["food", "Item: random food from the drop pool", "", ""],
    ["booze", "Item: random booze from the drop pool", "", ""],
    ["sleep", "Effect: Spacious Night's Sleep (10 adv)<br>+100% Combat Initiative<br>Muscle +10%, Mysticality +10%, Moxie +10%", "", ""]
];

function emptyChoice(id) {
    document.getElementById("lep-id-"+id+"-1").innerHTML="";
    document.getElementById("lep-id-"+id+"-2").innerHTML="";
    document.getElementById("lep-id-"+id+"-1").className = "lep-effect";
    document.getElementById("lep-id-"+id+"-2").className = "lep-effect";
}

function handleFurniture(event) {
//    event.stopPropagation();
    const source = event.target || event.srcElement;
    if (source.value > 0) {
        document.getElementById("lep-id-"+source.id+"-1").className = "lep-effect " + __lepcon_effects[source.value-1][0].replace(" ", "-");
        document.getElementById("lep-id-"+source.id+"-1").innerHTML=__lepcon_effects[source.value-1][1];
        document.getElementById("lep-id-"+source.id+"-2").className = "lep-effect " + __lepcon_effects[source.value-1][2].replace(" ", "-");
        document.getElementById("lep-id-"+source.id+"-2").innerHTML=__lepcon_effects[source.value-1][3];

        for (var i = 0; i < 4; i++) {
            if (("r"+i) == source.id) continue;
            sel = $('#r' + i);
            if (sel.val() == $(this).val()) {
                emptyChoice('r'+i);
            }
        }
    } else {
        emptyChoice(source.id);
    }
}
