﻿if (GetLocale() ~= "zhTW") then
  return
end

PDLocals = setmetatable({
--enemies
  ["Sheep: 100 health, 1 gold each."] = "羊：100血，每個1金。",
  ["Cats: 150 health, 2 gold each."] = "貓：150血，每個2金",
  ["Snakes: 200 health, 2 gold each."] = "蛇：200血，每個2金",
  ["Bats: 125 health, 3 gold each.  Immune to cannon towers!"] = "蝙蝠：125血，每個3金。免疫加農塔！",
  ["Boars: 300 health, 3 gold each."] = "野豬：300血，每個3金。",
  ["Panthers: 300 health, 4 gold each.  Increased speed!"] = "黑豹：300血，每個4金。速度提升！",
  ["Bears: 400 health, 4 gold each.  Boss next level!"] = "熊：400血，每個4金。下一關Boss！",
  ["BOSS - Angry Cow: 4500 health, 50 gold."] = "Boss - 憤怒的奶牛：4500血，50金。",
  ["Gnomes: 350 health, 6 gold each.  Increased group size!"] = "侏儒：350血，每個6金。數量增多！",
  ["Dwarves: 650 health, 7 gold each."] = "矮人：650血，每個7金。",
  ["Humans: 650 health, 8 gold each.  Increased speed!"] = "人類：650血，每個8金。",
  ["Night Elves: 850 health, 9 gold each.  Boss next level!"] = "暗夜精靈：850血，每個9金。下一關Boss！",
  ["BOSS - Knight: 9500 health, 100 gold."] = "Boss - 騎士：9500血，100金。",
  ["Gyrocopters: 950 health, 11 gold each.  Immune to cannon towers!"] = "直升飛機：950血，每個11金。免疫加農塔！",
  ["Bloodlusted Orcs: 1450 health, 12 gold each."] = "嗜血獸人：1450血，每個12金。",
  ["Imps: 1450 health, 13 gold each.  Immune to fire towers!"] = "小鬼：1450血，每個13金。免疫火塔！",
  ["Leeches: 1950 health, 14 gold each.  Boss next level!"] = "吸血鬼：1950血，每個14金。下一關Boss！",
  ["BOSS - Avatar: 22500 health, 150 gold."] = "Boss - 天神下凡：22500血，150金。",
  ["Blood Elves: 1800 health, 16 gold each.  Increased group size!"] = "血精靈：1800血，每個16金。數量增多！",
  ["Trolls: 3250 health, 17 gold each."] = "巨魔：3250血，每個17金。",
  ["Forsaken: 3250 health, 18 gold each.  Increased speed!"] = "被遺忘者：3250血，每個18金。速度提升！",
  ["Tauren: 4250 health, 19 gold each.  Boss next level!"] = "牛頭人：4250血，每個19金。下一關Boss！",
  ["BOSS - Spectral Tiger: 47500 health, 200 gold."] = "Boss - 幽靈虎：47500血，200金。",
  ["Demons: 4750 health, 23 gold each.  Immune to shadow towers!"] = "惡魔：4750血，每個23金。免疫暗影塔！",
  ["Ghouls: 6550 health, 26 gold each."] = "食尸鬼：6550，每個26金。",
  ["Frozen Corpses: 6550 health, 29 gold each.  Immune to ice towers!"] = "冰尸：6550血，每個29金。免疫冰塔！",
  ["Soultakers: 8350 health, 32 gold each.  Boss next level!"] = "奪魂者：8350血，每個32金。下一關Boss！",
  ["Illidan: 92500 health, 350 gold."] = "伊利丹：92500血，350金。",
  ["Lava Spawns: 9250 health, 39 gold each.  Immune to fire towers!"] = "火元素：9250血，每個39金。免疫火塔！",
  ["Abyssal Fiends: 10850 health, 43 gold each.  Immune to shadow towers!"] = "深淵惡魔：10850血，每個43金。免疫暗影塔！",
  ["Water Elementals: 12450 health, 47 gold each.  Immune to ice towers!"] = "水元素：12450血，每個47金。免疫冰塔！",
  ["Nether Drakes: 15750 health, 51 gold each.  Boss next level!"] = "虛空龍：15750血，每個51金。下一關Boss！",
  ["Kil'Jaedan: 172500 health, 550 gold."] = "基爾加丹：172500血，550金。",
  ["Red Dragons: 17250 health, 62 gold.  Immune to fire towers!"] = "紅龍：17250血，62金。免疫火塔！",
  ["Black Dragons: 20250 health, 70 gold.  Immune to shadow towers!"] = "黑龍：20250血，70金。免疫暗影塔！",
  ["Blue Dragons: 23250 health, 77 gold.  Immune to ice towers!"] = "藍龍：23250血，77金。免疫冰塔！",
  ["Bronze Dragons: 29250 health, 85 gold."] = "青銅龍：29250血，85金。",
  ["Green Dragons: 32250 health, 92 gold.  Boss next level!"] = "綠龍：32250血，92金。下一關Boss！",
  ["C\'Thun: 350000 health, 1000 gold.  Boss next level!"] = "克蘇恩：350000血，1000金。下一關Boss！",
  ["Yogg Saron: 500000 health, 1500 gold.  One more level!"] = "尤格薩隆：500000血，1500金。還有最后一關！",
  ["Hula Girls: 50000 health, 1000 gold each.  Good luck!"] = "草裙舞女孩：50000血，每個1000金。祝好運！",
  
--TooltipData
  ["Cannon Tower~A basic physical damage tower.  Cannot hit flying enemies.  Upgradeable for higher damage."] = "加農塔~基礎物理傷害炮塔。不能攻擊飛行敵人。升級可獲得更高傷害。",
  ["%1$d gold\nMore damage.  Boom."] = "%1$d金\n更高傷害。轟隆。",
  ["%1$d gold\nEven more damage."] = "%1$d金\n再多傷害。",
  ["Arrow Tower~A simple tower which can attack both land and air units.  Upgradeable for higher damage."] = "箭塔~能同時攻擊地面和空中單位的簡單炮塔。",
  ["%1$d gold\nMore Damage.  Pew pew."] = "%1$d金\n更高傷害。Biu biu。",
  ["%1$d gold\nEven more damage."] = "%1$d金\n再多傷害。",
  ["Fire Tower~A tower with the ability to char the flesh of enemies.  Early levels deal splash damage.  Upgradeable to AoE damage."] = "火塔~燃燒敵人肉體的炮塔。開始造成濺射傷害。可升級為AoE傷害。",
  ["%1$d gold\nFires an explosive shell which explodes on impact for more splash damage."] = "%1$d金\n發射可爆炸彈丸，在爆炸時造成更多濺射傷害。",
  ["%1$d gold\nEngulfs the surrounding area, dealing damage to all enemies nearby."] = "%1$d金\n吞噬周圍的區域，對附近所有敵人造成傷害。",
  ["Ice Tower~A frozen tower that chills the spirit of attackers.  Early levels slow their targets, while later levels slow all enemies in the area."] = "冰塔~冰凍敵人靈魂的冰霜之塔。開始可以減速目標，后期可以減速區域內所有敵人。",
  ["%1$d gold\nFires an enchanted missile that slows the speed of attackers and deals more damage."] = "%1$d金\n發射增強的導彈，減速并造成更多的傷害。",
  ["%1$d gold\nChills the ground, slowing the speed of all enemies nearby but deals no damage."] = "%1$d金\n冰凍大地，讓周圍所有敵人減速但是不造成傷害。",
  ["Shadow Tower~A tower of darkness that consumes the soul of infidels.  Inflicts a high amount of damage over time, but multiple shadow effects do not stack.  Higher levels deal more damage."] = "暗影塔~吞噬異教徒靈魂的黑暗之塔。造成大量的DOT傷害，但是效果不疊加。更高等級造成更多傷害。",
  ["%1$d gold\nFires a plagued bolt that inflicts more damage over time."] = "%1$d金\n發射瘟疫之矢造成更多DOT傷害。",
  ["%1$d gold\nFires a plagued bolt that deals significantly more damage over time."] = "%1$d金\n發射瘟疫之矢造成極多DOT傷害。",
  ["%1$d gold\nChaotic energy infuses this tower, enabling it to deal significant single-target damage that pierces all immunities."] = "混亂的能量充斥著這座炮塔，使它能造成極大的單目標傷害，并穿越一切免疫效果。",
  ["Sell (|cffffffffX|r)~Sell this tower for a 75% refund of the current level\'s cost."] = "出售 (|cffffffffX|r)~出售該塔以獲得當前級別所花費的75%金幣。",
  ["Upgrade (|cffffffffU|r)"] = "升級 (|cffffffffU|r)",
  ["The Fury of Skoll~A fiery rage burns within the Amiran builders, allowing the creation of fire towers."] = "Skoll之怒~Amiran建造者們內心的強烈怒火，允許建造火塔。",
  ["The Song of Lorelei~By harnessing the enchanted melody of the river maiden, the Amiran builders are able to craft ice towers."] = "Lorelei之歌~利用河流少女的魔法旋律，Amiran建造者們可以制作冰塔。",
  ["The Blight of the Abyss~Forces from the great unknown compel the Amiran builders, granting the ability to forge shadow towers."] = "煉獄之疫~憑借Amiran建造者們強大而未知的力量，獲得鑄造暗影塔的能力。",
  
--Towers
  ["None"] = "無",
  ["Splash damage"] = "濺射傷害",
  ["AoE damage"] = "AoE傷害",
  ["Single slow"] = "單體減速",
  ["AoE slow"] = "AoE減速",
  ["DoT damage"] = "DoT傷害",
  ["Heavy DoT damage"] = "大量DoT傷害",
  ["Chaos Damage"] = "混亂傷害",
  
--PrimalDefense_StartLevel
  ["You've saved the Amirans from destruction!  All too easy..."] = "你已經拯救了Amirans！一切都太簡單了...",

--reset game
  ["Level"] = "等級 ",
  ["Lives"] = "生命",
  ["Gold"] = "金幣",
  ["Essence"] = "精華",
  ["Fury of Skoll"] = "Skoll之怒",
  ["Song of Lorelei"] = "Lorelei之歌",
  ["Blight of the Abyss"] = "煉獄之疫",
  ["Welcome to Primal Defense!"] = "歡迎來到Primal Defense!",
  
--PrimalDefense_UpdateBlessingsTexts
  ["You are fully blessed."] = "你已經被完全祝福。",
  
--PrimalDefense_UpdateCostTexts
  ["Requires Blessing"] = "需要祝福",
  ["Cannon"] = "加農塔",
  ["Arrow"] = "箭塔",
  ["Fire"] = "火塔",
  ["Ice"] = "冰塔",
  ["Shadow"] = "暗影塔",
  
--PrimalDefense_MapTileOnClick
  ["Range"] = "射程",
  ["Damage"] = "傷害",
  ["Speed"] = "速度",
  ["Ability"] = "技能",
}, {__index = PDLocals})