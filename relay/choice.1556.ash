import "relay/choice.ash";

record LepRoom {
    int no;
    int furniture;
    string need1;
    string need2;
    boolean need1active;
    boolean need2active;
};

record FurnitureItem {
    int id;
    string name;
    string datapic;
};

record LepStuff {
    LepRoom [int] rooms;
    string [int] furniture;
    FurnitureItem [int] furnitures;
};

string [int, string] allFurnitures = {
1: { "id":"1", "name":"buckets of concrete", "location":"Any zone with hiding place", "need1":"exercise", "effect1": "Effect: Gym Bros (10 adv)<br>+1 Muscle Stats Per Fight<br>Muscle +20%", "need2":"", "effect2": ""},
2: { "id":"2", "name":"thrift store oil painting", "location":"Any zone with hiding place", "need1":"mental stimulation", "effect1": "Effect: Well Stimulated (10 adv) <br>+1 Mysticality Stats Per Fight<br>Mysticality +20%", "need2":"", "effect2": ""},
3: { "id":"3", "name":"boxes of old comic books", "location":"Any zone with hiding place", "need1":"dumb entertainment", "effect1": "Effect: Wasting Time (10 adv)<br>+1 Moxie Stats Per Fight<br>Moxie +20%", "need2":"", "effect2": ""},
4: { "id":"4", "name":"second-hand hot plate", "location":"Any zone with hiding place", "need1":"food", "effect1": "Items: random decent food from the drop pool", "need2":"", "effect2": ""},
5: { "id":"5", "name":"beer cooler", "location":"Any zone with hiding place", "need1":"booze", "effect1": "Items: random crappy/decent beer from drop pool", "need2":"", "effect2": ""},
6: { "id":"6", "name":"free mattress", "location":"Any zone with hiding place", "need1":"sleep", "effect1": "Effect: Good Night's Sleep (10 adv)<br>+25% Combat Initiative", "need2":"", "effect2": ""},
7: { "id":"7", "name":"gigantic chess set", "location":"An Octopus's Garden", "need1":"exercise", "effect1": "Effect: Work Out Smarter, Not Harder (10 adv)<br>Muscle +20<br>Weapon Damage +20<br>Maximum HP +50%", "need2":"mental stimulation", "effect2": "Effect: Well Stimulated (20 adv) <br>+1 Mysticality Stats Per Fight<br>Mysticality +20%"},
8: { "id":"8", "name":"UltraDance karaoke machine", "location":"Infernal Rackets Backstage", "need1":"exercise", "effect1": "Efffect: Vicarious Sweat (10 adv)<br>Maximum HP +30<br>+15% Item Drops from Monsters", "need2":"dumb entertainment", "effect2": "Effect: Your Days Are Numbed (10 adv)<br>+5 to Familiar Weight<br>+5 Familiar Experience Per Combat"},
9: { "id":"9", "name":"cupcake treadmill", "location":"Madness Bakery", "need1":"exercise", "effect1": "Effect: Your Days Are Numbed (10 adv)<br>+5 to Familiar Weight<br>+5 Familiar Experience Per Combat", "need2":"food", "effect2": "Item: standard-issue cupcake<br>(good food, it's an old item)"},
10: { "id":"10", "name":"beer pong table", "location":"The Orcish Frat House", "need1":"exercise", "effect1": "Item: table tennis ball (11863)<br>Combat item, delevels monster by 25%", "need2":"booze", "effect2": "Items: 2 random crappy-good beers from drop pool (duplicates possible)"},
11: { "id":"11", "name":"padded weight bench", "location":"The Degrassi Knoll Garage", "need1":"exercise", "effect1": "Effect: Gym Bros (10 adv)<br>+1 Muscle Stats Per Fight<br>Muscle +20%", "need2":"sleep", "effect2": "Effect: Tired Muscles (10 adv)<br>Monsters will be less attracted to you"},
12: { "id":"12", "name":"internet-connected laptop", "location":"The Hidden Office Building", "need1":"mental stimulation", "effect1": "Item: crafting plans (11866)<br>One free turn of crafting", "need2":"dumb entertainment", "effect2": "Effect: Wasting Time (10 adv)<br>+1 Moxie Stats Per Fight<br>Moxie +20%"},
13: { "id":"13", "name":"sous vide laboratory", "location":"The Haunted Kitchen", "need1":"mental stimulation", "effect1": "Effect: Counter Intelligence (10 adv)<br>Maximum MP +30<br>+30% Meat from Monsters", "need2":"food", "effect2": "Item: random good food from the drop pool"},
14: { "id":"14", "name":"programmable blender", "location":"Cobb's Knob Kitchens", "need1":"mental stimulation", "effect1": "Effect: Counter Intelligence (10 adv)<br>Maximum MP +30<br>+30% Meat from Monsters", "need2":"booze", "effect2": "Item: random good booze"},
15: { "id":"15", "name":"sensory deprivation tank", "location":"The Marinara Trench", "need1":"mental stimulation", "effect1": "Effect: Alone with Your Thoughts (10 adv)<br>Mysticality +20<br>Spell Damage +20<br>Maximum MP +50%", "need2":"sleep", "effect2": "Effect: Quiet Night's Sleep (10 adv)<br>+50% Combat Initiative<br>Regenerate 5-10 MP per Adventure"},
16: { "id":"16", "name":"fruit-smashing robot", "location":"The Hippy Camp (Verge of War) (In Frat Boy Ensemble or Frat Warrior Fatigues)", "need1":"dumb entertainment", "effect1": "Effect: You Might Have Gotten Wet (10 adv)<br>Moxie +20<br>Ranged Damage +20<br>Damage Reduction: 10", "need2":"food", "effect2": "Item: 2 crappy/decent fruits from the drop pool (duplicates possible)"},
17: { "id":"17", "name":"ManCave™ sports bar set", "location":"A Barroom Brawl", "need1":"dumb entertainment", "effect1": "Item: bar dart (11870)<br>Combat item, damage a foe and increase booze drops", "need2":"booze", "effect2": "Item: random good/awesome booze from the drop pool"},
18: { "id":"18", "name":"couch and flatscreen", "location":"The Orcish Frat House", "need1":"dumb entertainment", "effect1": "Effect: Your Days Are Numbed (10 adv)<br>+5 to Familiar Weight<br>+5 Familiar Experience Per Combat", "need2":"sleep", "effect2": "Effect: Good Night's Sleep (10 adv)<br>+25% Combat Initiative"},
19: { "id":"19", "name":"kegerator", "location":"The Orcish Frat House (Bombed Back to the Stone Age)", "need1":"food", "effect1": "Item: 2 random decent foods from the drop pool", "need2":"booze", "effect2": "Item: pint of Leprechaun Stout (awesome booze)"},
20: { "id":"20", "name":"fine upholstered dining set", "location":"The Hidden Apartment Building", "need1":"food", "effect1": "Item: random good food from the drop pool", "need2":"sleep", "effect2": "Sur La Table (20 advs)<br>Regenerate 5-10 MP per Adventure<br>Regenerate 5-10 HP per Adventure"},
21: { "id":"21", "name":"whiskeybed", "location":"The Castle in the Clouds in the Sky (Ground Floor)", "need1":"booze", "effect1": "Item: random decent/good booze from the drop pool", "need2":"sleep", "effect2": "Moist Night's Sleep<br>+50% Combat Initiative<br>So-So Hot Resistance (+2)<br>+10 Cold Damage"},
22: { "id":"22", "name":"high-end home workout system", "location":"The Degrassi Knoll Gym", "need1":"exercise", "effect1": "Item: scoop of pre-workout powder (11862)<br>Type: spleen item<br>Toxicity: 3<br>Grants skill called 'Punch Out Your Foe' that allows you to banish a foe for 20 turns for 10 MP", "need2":"", "effect2": ""},
23: { "id":"23", "name":"complete classics library", "location":"Haunted Library", "need1":"mental stimulation", "effect1": "Item: leprechaun antidepressant pill (11871) <br>Type: spleen item<br>Toxicity: 3<br>Effect: Ready for War (40 Adventures)<br>Monsters will be much more attracted to you<br>Weapon Damage +50%<br>Spell Damage +50%<br>Ranged Damage +50%", "need2":"", "effect2": ""},
24: { "id":"24", "name":"ultimate retro game console", "location":"Megalo-City", "need1":"dumb entertainment", "effect1": "Item: phosphor traces (11865)<br><br>Type: spleen item<br>Toxicity: 3<br>Selling Price: 100 Meat.<br><br>Create an afterimage of a foe", "need2":"", "effect2": ""},
25: { "id":"25", "name":"Omnipot", "location":"Cobb's Knob Laboratory", "need1":"food", "effect1": "Item: random awesome food from the drop pool", "need2":"", "effect2": ""},
26: { "id":"26", "name":"fully-stocked wet bar", "location":"The Purple Light District", "need1":"booze", "effect1": "Item: random awesome booze from the drop pool", "need2":"", "effect2": ""},
27: { "id":"27", "name":"four-poster bed", "location":"Dreadsylvanian Castle", "need1":"sleep", "effect1": "Effect: Spacious Night's Sleep (10 adv)<br>+100% Combat Initiative<br>Muscle +10%<br>Mysticality +10%<br>Moxie +10%", "need2":"", "effect2": ""}
};

string [string] shortNeeds = {
    "booze": "booze",
    "dumb entertainment": "ent.",
    "sleep": "sleep",
    "exercise": "exercise",
    "food": "food",
    "mental stimulation": "stim."
};

string getNeedForFurnitureId(int id, int need) {
    return allFurnitures[id, "need" + to_string(need)];
}

string makeOption(FurnitureItem fi, LepRoom room) {
    string result = "";
    string idStr = to_string(fi.id);
    result += "<option ";
    if (room.furniture == fi.id) {
        result += "selected ";
    }
    string needs = "(" + shortNeeds[allFurnitures[fi.id, "need1"]];
    if (allFurnitures[fi.id, "need2"].length() > 0) {
        needs += ", " + shortNeeds[allFurnitures[fi.id, "need2"]];
    }
    needs += ")";
    result += "value=\"" + idStr + "\" data-id=\"" + idStr + "\" data-pic=\"" + fi.datapic + "\">" + fi.name + " " + needs + "</option>\n\r";

    return result;
}

string makeComboBox(LepStuff lepData, int roomNo) {
    string result = "";
    result += "<select id=\"r" + to_string(roomNo) + "\" name=\"r" + to_string(roomNo) + "\" class=\"lep-choice\">\n\r";
    result += "<option value=\"\">-- empty --</option>\n\r";

    foreach key, data in lepData.furnitures {
        result += makeOption(data, lepData.rooms[roomNo]);
    }

    LepRoom lr = lepData.rooms[roomNo];
    string c1 = (lr.need1.length() > 0) ? " " + lr.need1.replace_string(" ", "-") + (lr.need1active ? "" : " inactive") : "";
    string c2 = (lr.need2.length() > 0) ? " " + lr.need2.replace_string(" ", "-") + (lr.need2active ? "" : " inactive") : "";
    
    result += "</select>\n\r";
    result += "<div class=\"lep-effect" + c1 + "\" id=\"lep-id-r" + to_string(roomNo) + "-1\">";
    if (lr.furniture > 0) {
        result += allFurnitures[lr.furniture]["effect1"];
    }
    result += "</div>";
    result += "<div class=\"lep-effect" + c2 + "\" id=\"lep-id-r" + to_string(roomNo) + "-2\">";
    if (lr.furniture > 0) {
        result += allFurnitures[lr.furniture]["effect2"];
    }
    result += "</div>";

    return result;
}

LepStuff getRooms(string pageData) {
    LepStuff result;
    matcher roommatcher = create_matcher("<select id=\"r(\\d+)\" name=\"r(\\d+)\">(.*?)<\\/select>", pageData);
    while (find(roommatcher)) {
        LepRoom curRoom;
        curRoom.no = to_int(group(roommatcher, 1));
        string stuff = group(roommatcher, 3);
        matcher stuffmatcher = create_matcher("<option (.*?)value=\'(\\d+)\' data-id=\'(.*?)\' data-pic=\'(.*?)\'>(.*?)<\\/option>", stuff);
        while (find(stuffmatcher)) {
            string selected = group(stuffmatcher, 1);
            int stuffid = to_int(group(stuffmatcher, 2));
            if (index_of(selected, "selected") >= 0) {
                curRoom.furniture = stuffid;
                curRoom.need1 = getNeedForFurnitureId(stuffid, 1);
                curRoom.need2 = getNeedForFurnitureId(stuffid, 2);
            }
            if (!(result.furniture contains stuffid)) {
                result.furniture[stuffid] = group(stuffmatcher, 5);
            }
            if (!(result.furnitures contains stuffid)) {
                FurnitureItem fi;
                fi.id = stuffid;
                fi.name = group(stuffmatcher, 5);
                fi.datapic = group(stuffmatcher, 4);
                result.furnitures[stuffid] = fi;
            }
        }
        result.rooms[curRoom.no] = curRoom;
    }

    boolean [string] needsUsed;
    foreach key in result.rooms {
        LepRoom curRoom = result.rooms[3 - key];
        if (needsUsed contains curRoom.need1) {
            curRoom.need1active = false;
        } else {
            curRoom.need1active = true;
            needsUsed[curRoom.need1] = true;
        }
        if (needsUsed contains curRoom.need2) {
            curRoom.need2active = false;
        } else {
            curRoom.need2active = true;
            needsUsed[curRoom.need2] = true;
        }
    }

    return result;
}

string [int] missingFurniture(FurnitureItem [int] usedFurniture) {
    string [int] result;
    foreach ix in allFurnitures {
        if (!(usedFurniture contains ix)) {
            result[ix] = allFurnitures[ix, "location"];
        }
    }
    return result;
}

string insertIntoFromThisToThat(string fullText, string insertedText, string startText, string endText) {
    int startPos = fullText.index_of(startText);
    int endPos = fullText.index_of(endText, startPos) + endText.length();

    return fullText.substring(0, startPos) + insertedText + fullText.substring(endPos);
}

void main(string page_text_encoded) {
    string page_text = page_text_encoded.choiceOverrideDecodePageText();
    string newPage;

    LepStuff ls = getRooms(page_text);

    string currentConfig = "<strong>Current configuration</strong><br>\n\r";
    foreach key in ls.rooms {
        LepRoom curRoom = ls.rooms[key];
        string need1 = curRoom.need1;
        string needs = need1;
        if (!curRoom.need1active) {
            needs = "<s>" + need1 + "</s> [inactive]";
        }
        string need2 = curRoom.need2;
        if (need2.length() > 0) {
            needs += ", ";
            if (curRoom.need2active) {
                needs += need2;
            } else {
                needs += "<s>" + need2 + "</s> [inactive]";
            }
        }
        currentConfig += "Room " + to_string(curRoom.no + 1) + ": " + ls.furnitures[curRoom.furniture].name + " (" + needs + ")<br>";
    }
    currentConfig += "<br>";

    string missingMessage = "";
    string [int] missing = missingFurniture(ls.furnitures);
    if (missing.length() > 0) {
        missingMessage = "<strong>Missing furniture from the following locations:</strong><br>";
        foreach key, val in missing {
            if (val.length() > 0) {
                missingMessage += val + "<br>";
            }
        }
    }

    if (missingMessage.length() > 0) {
        newPage = page_text.replace_string("</a></center>", "</a><br><br>" + currentConfig + missingMessage + "</center>");
    }
    newPage.replace_string("top left", "top left room");

    for n from 0 to 3 {
        string fromStr = "<select id=\"r" + to_string(n);
        newPage = insertIntoFromThisToThat(newPage, makeComboBox(ls, n), fromStr, "</select>");
    }

    newPage = newPage.replace_string("</head>", "<script type=\"text/javascript\" src=\"LepCon.js\"></script></head>");
    newPage = newPage.replace_string("</head>", "<link rel=\"stylesheet\" type=\"text/css\" href=\"LepCon.css\"></head>");

    buffer newFooter;
    newFooter.append("<script>\n");
    newFooter.append('const dropdowns = document.querySelectorAll(".lep-choice");\n');
    newFooter.append('dropdowns.forEach(dropdown => { dropdown.addEventListener("change", handleFurniture, true); });\n');
    newFooter.append("</script>\n");

    int startPos = newPage.last_index_of("</table>");
    int endPos = startPos + length("</table>");
    if (startPos > 0) {
        newPage = newPage.substring(0, startPos) + newFooter + newPage.substring(endPos);
    }

    newPage.write();
}