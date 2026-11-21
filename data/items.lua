--[[
	Lunar 腳本的相關物品存放於 custom/items_lunar.lua
]]--

local items = {
	['testburger'] = {
		label = '測試漢堡包',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = '舔一口',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = '捏扁它',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = '素食漢堡叫什麼？',
				group = '漢堡冷笑話',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = '青蛙吃漢堡喜歡配什麼？',
				group = '漢堡冷笑話',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = '為什麼漢堡和薯條在跑步？',
				group = '漢堡冷笑話',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	--[[
	-- 與 `wasabi_ambulance_v2` 重複，已停用
	['bandage'] = {
		label = '繃帶',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
	]]--

	['black_money'] = {
		label = '黑錢',
	},

	['burger'] = {
		label = '漢堡包',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = '你吃了一個美味的漢堡包'
		},
	},

	['sprunk'] = {
		label = '雪碧（Sprunk）',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = '你喝了一罐雪碧解渴'
		}
	},

	['parachute'] = {
		label = '降落傘',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = '垃圾',
	},

	['paperbag'] = {
		label = '紙袋',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = '身分證明文件',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = '女裝內褲',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	--[[
	-- 與 qs-housing 重複，已停用
	['lockpick'] = {
		label = '開鎖工具',
		weight = 160,
	},
	]]--

	["phone"] = {
		label = "手提電話",
		weight = 190,
		stack = false,
		consume = 0
	},

	['money'] = {
		label = '現金',
	},

	['mustard'] = {
		label = '黃芥末醬',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = '你……竟然直接喝了黃芥末醬'
		}
	},

	['water'] = {
		label = '樽裝水',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = '你喝了一瓶清涼的樽裝水'
		}
	},

	--[[
	-- 已由 mm_radio 取代
	['radio'] = {
		label = '對講機',
		weight = 1000,
		stack = false,
		allowArmed = true
	},
	]]--

	['armour'] = {
		label = '防彈背心',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = '服裝',
		consume = 0,
	},

	['mastercard'] = {
		label = '全福銀行提款卡',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = '廢金屬',
		weight = 80,
	},
}

local function insert(source, overwrite)
    for itemName, itemData in pairs(source) do
        if items[itemName] and not overwrite then
            s = ('[ox_inventory] Duplicate ITEM skipped: %s'):format(itemName)
			print(s)
        else
            items[itemName] = itemData
        end
    end
end

insert({ -- wasabi_ambulance_v2
    -- =====================================
    -- 治療物品（對應 healingItems 設定）
    -- 可直接從背包中使用
    -- Wasabi 進階救護職業系統 V2
    -- =====================================
    ["bandage"] = {      -- 請確保原版 items.lua 中沒有重複定義
        label = '繃帶',
        description = '用於止住輕微出血的簡易醫用繃帶',
        weight = 25,
        server = {
            export = "wasabi_ambulance_v2.bandage"
        }
    },
    ["medkit"] = {
        label = '醫療包',
        description = '用於處理各類傷勢的醫用急救包',
        weight = 250,
        server = {
            export = "wasabi_ambulance_v2.medkit"
        }
    },
    ["firstaidkit"] = {
        label = '急救箱',
        description = '配備齊全的綜合急救箱，適用於處理嚴重傷勢',
        weight = 350,
        server = {
            export = "wasabi_ambulance_v2.firstaidkit"
        }
    },
    ["painkillers"] = {
        label = '止痛藥',
        description = '可暫時舒緩疼痛並減輕暈眩效果的藥丸',
        weight = 10,
        server = {
            export = "wasabi_ambulance_v2.painkillers"
        }
    },
    ["ifak"] = {
        label = '個人急救包（IFAK）',
        description = '戰術及緊急救援專用的單兵個人急救包',
        weight = 150,
        server = {
            export = "wasabi_ambulance_v2.ifak"
        }
    },
    ["sedative"] = {
        label = '鎮靜劑',
        description = '供救護員使用的受管制鎮靜藥物',
        weight = 25,
        consume = 0, -- 施用動作完成後由伺服器端自動扣除。
        server = {
            export = "wasabi_ambulance_v2.sedative"
        }
    },
    ["defibrillator"] = {
        label = '心臟除顫器（AED）',
        description = '可重複使用的自動體外心臟除顫器，用於搶救倒地昏迷傷者',
        weight = 2500,
        stack = false,
        close = true,
        consume = 0,
        server = {
            export = "wasabi_ambulance_v2.defibrillator"
        }
    },

    -- =====================================
    -- 專科傷勢處理器材（對應 medicalItems 設定）
    -- 需於傷勢檢查介面中拖放至對應受傷部位使用
    -- 無需設定 export —— 由傷勢介面系統自動處理消耗
    -- Wasabi 進階救護職業系統
    -- =====================================
    ["forceps"] = {
        label = '手術鉗',
        description = '用於取出彈頭及處理槍傷',
        weight = 100,
    },
    ["pliers"] = {
        label = '拔針鉗',
        description = '用於拔除電槍電極針及處理電擊傷',
        weight = 25,
    },
    ["suture"] = {
        label = '縫合針線',
        description = '用於縫合割傷及裂傷傷口',
        weight = 25,
    },
    ["splint"] = {
        label = '固定夾板',
        description = '用於固定骨折部位',
        weight = 50,
    },
    ["icepack"] = {
        label = '冰敷袋',
        description = '用於冷敷處理拳擊傷及瘀腫',
        weight = 25,
    },
    ["traumakit"] = {
        label = '創傷急救包',
        description = '用於處理鈍器撞擊造成的創傷',
        weight = 75,
    },
    ["burncream"] = {
        label = '燒傷藥膏',
        description = '用於塗抹及治療燒傷與燙傷',
        weight = 10,
    },

    -- =====================================
    -- 醫療設備物品
    -- Wasabi 進階救護職業系統
    -- =====================================
    ["medbag"] = {
        label = '急救醫療箱',
        description = '內含多種急救物資的手提醫療箱',
        weight = 50,
        stack = false,
        close = true,
        consume = 0,
        server = {
            export = "wasabi_ambulance_v2.medbag"
        }
    }
})

insert({	-- wasabi_carlock 車鎖系統
    ["carkeys"] = { -- 若 items.lua 中已存在 carkeys，請略過此項。
        label = '車匙',
        description = '車輛的實體鑰匙。',
        weight = 100,
        stack = false,
        close = true,
        consume = 0,
        server = { export = 'wasabi_carlock.useKeyItem' },
    },
    ["carkey_fob"] = {
        label = '智能遙控車匙',
        description = '車輛的電子遙控鑰匙。',
        weight = 100,
        stack = false,
        close = true,
        consume = 0,
        server = { export = 'wasabi_carlock.useKeyItem' },
    },
    ["flapper_device"] = {
        label = '汽車防盜破解器',
        description = '用於繞過車輛電子防盜系統的破解裝置。',
        weight = 750,
        stack = true,
        close = true,
    },
})

insert({	-- wasabi_police_v2 警務系統
	-- 手銬與束縛工具
	["handcuffs"] = {
		label = '手銬',
		weight = 500,
		stack = false,
		close = true,
		consume = 0,
		description = '警用標準制式手銬。',
		server = { export = 'wasabi_police_v2.handcuffs' },
	},
	["cuff_key"] = {
		label = '手銬鑰匙',
		weight = 50,
		stack = true,
		close = true,
		consume = 0,
		description = '用於開啟標準手銬的鑰匙。',
		server = { export = 'wasabi_police_v2.cuff_key' },
	},
	["ziptie"] = {
		label = '索帶',
		weight = 50,
		stack = true,
		close = true,
		consume = 0,
		description = '一次性使用的尼龍束縛索帶。',
		server = { export = 'wasabi_police_v2.ziptie' },
	},
	["bolt_cutter"] = {
		label = '斷線鉗（大剪鉗）',
		weight = 2000,
		stack = false,
		close = true,
		consume = 0,
		description = '可強行剪斷金屬手銬的重型剪鉗。',
		server = { export = 'wasabi_police_v2.bolt_cutter' },
	},
	["tracking_bracelet_cutter"] = {
		label = '追蹤腳鐐破壞鉗',
		weight = 500,
		stack = false,
		close = true,
		consume = 0,
		description = '可強行剪斷電子追蹤腳鐐的專用工具。',
		server = { export = 'wasabi_police_v2.tracking_bracelet_cutter' },
	},
	["flush_cutter"] = {
		label = '斜口剪鉗',
		weight = 100,
		stack = true,
		close = true,
		consume = 0,
		description = '用於剪斷尼龍索帶的小型剪鉗。',
		server = { export = 'wasabi_police_v2.flush_cutter' },
	},
	["soft_cuffs"] = {
		label = '軟質手銬',
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		description = '雙手拷於身前的軟質束縛帶。',
	},

	-- 證物與鑑證
	["empty_evidence_bag"] = {
		label = '空白證物袋',
		weight = 100,
		stack = true,
		close = true,
		consume = 0,
		description = '用於採集及封存現場證物樣本的空白證物袋。',
	},
	["evidence_bag_full"] = {
		label = '已封存證物袋',
		weight = 150,
		stack = false,
		close = true,
		consume = 0,
		description = '內含已採集證物樣本的密封證物袋。',
		server = { export = 'wasabi_police_v2.evidence_bag_full' },
	},
	["bleachwipes"] = {
		label = '漂白濕紙巾', 
		weight = 100, 
		stack = true, 
		close = true, 
		consume = 0,
		description = '配合「清理血跡證物」目標互動使用，可抹除現場血跡。',
	},
	["uvlight"] = {
		label = '紫外光燈（UV 燈）',
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		description = '用於掃描車輛軚盤上的殘留指紋。',
		server = { export = 'wasabi_police_v2.uvlight' },
	},

	-- 警用裝備（可主動使用）
	["breathalyzer"] = {
		label = '酒精呼氣測試儀',
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		description = '用於檢測駕駛者的血液酒精濃度。',
		server = { export = 'wasabi_police_v2.breathalyzer' },
	},

	["radar_post"] = {
		label = '便攜式超速偵察器',
		weight = 1500,
		stack = false,
		close = true,
		consume = 0,
		description = '可部署於路邊的自動雷達測速攝影機。',
		server = { export = 'wasabi_police_v2.radar_post' },
	},
	["spike_strip"] = {
		label = '破胎刺帶',
		weight = 2000,
		stack = false,
		close = true,
		consume = 0,
		description = '部署於路面，車輛輾過時會刺穿輪胎。',
		server = { export = 'wasabi_police_v2.spike_strip' },
	},
	["bodycam"] = {
		label = '隨身攝錄機（BodyCam）',
		weight = 300,
		stack = false,
		close = true,
		consume = 0,
		description = '用於錄製警員執勤期間的隨身影像紀錄。',
		server = { export = 'wasabi_police_v2.bodycam' },
	},
	["cctv_camera"] = {
		label = '閉路電視鏡頭',
		weight = 500,
		stack = false,
		close = true,
		consume = 0,
		description = '可安裝於牆面或柱上的遠端監控鏡頭。',
		server = { export = 'wasabi_police_v2.cctv_camera' },
	},

	-- 警用裝備（被動／目標互動觸發）
	["tracking_bracelet"] = {
		label = '電子追蹤腳鐐',
		weight = 100,
		stack = true,
		close = true,
		consume = 0,
		description = '可即時定位目標行蹤的 GPS 追蹤腳鐐。',
		server = { export = 'wasabi_police_v2.tracking_bracelet' },
	},
	["police_cone"] = {
		label = '雪糕筒（交通錐）',
		weight = 500,
		stack = true,
		close = true,
		consume = 0,
		description = '用於交通管制的反光雪糕筒。',
	},
	["police_barrier"] = {
		label = '警用路障',
		weight = 1000,
		stack = false,
		close = true,
		consume = 0,
		description = '用於封鎖道路的警用護欄路障。',
	},
	["gsr_kit"] = {
		label = '硝煙反應測試套裝',
		weight = 100,
		stack = true,
		close = true,
		consume = 0,
		description = '用於檢測疑犯手部是否殘留開槍硝煙反應。',
	},
	["police_radio"] = {
		label = '警用加密對講機',
		weight = 300,
		stack = false,
		close = true,
		consume = 0,
		description = '警隊專用的加密通訊無線電對講機。',
	},
})

insert({	-- wasabi_crutch 拐杖與輪椅系統
    ["crutch"] = {
        ["name"] = "crutch",
        ["label"] = "醫用拐杖",
        ["weight"] = 650,
        ["type"] = "item",
        ["image"] = "crutch.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "協助腿部受傷人士步行支撐的醫用拐杖。"
    },
    ["wheelchair"] = {
        ["name"] = "wheelchair",
        ["label"] = "輪椅",
        ["weight"] = 850,
        ["type"] = "item",
        ["image"] = "wheelchair.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "協助行動不便人士代步的醫療輪椅。"
    }
})

insert({	-- fishing_simulator 釣魚模擬器
	-- 魚餌（Bait）
	["bread"] = {
		label = "麵包碎",
		weight = 10,
		stack = true,
		close = true,
		description = "適合用來釣小型淡水魚的麵包餌。",
		client = {
			image = "bread.png",
		}
	},
	
	["earthworm"] = {
		label = "蚯蚓",
		weight = 10,
		stack = true,
		close = true,
		description = "鮮活的蚯蚓魚餌。",
		client = {
			image = "earthworm.png",
		}
	},
	
	["dough"] = {
		label = "麵糰魚餌",
		weight = 10,
		stack = true,
		close = true,
		description = "搓揉好的釣魚專用麵糰。",
		client = {
			image = "dough.png",
		}
	},
	
	["grub"] = {
		label = "幼蟲餌（蟲蛆）",
		weight = 10,
		stack = true,
		close = true,
		description = "肥美的甲蟲幼蟲魚餌。",
		client = {
			image = "grub.png",
		}
	},
	
	["caddis_fly"] = {
		label = "石蠶蛾餌",
		weight = 10,
		stack = true,
		close = true,
		description = "飛蠅釣常用的石蠶蛾水生昆蟲餌。",
		client = {
			image = "caddis_fly.png",
		}
	},
	
	["cheese"] = {
		label = "芝士塊",
		weight = 10,
		stack = true,
		close = true,
		description = "氣味濃郁的芝士魚餌。",
		client = {
			image = "cheese.png",
		}
	},
	
	["fly"] = {
		label = "蒼蠅餌",
		weight = 10,
		stack = true,
		close = true,
		description = "適合水面垂釣的昆蟲餌。",
		client = {
			image = "fly.png",
		}
	},
	
	["dragonfly"] = {
		label = "蜻蜓餌",
		weight = 10,
		stack = true,
		close = true,
		description = "吸引掠食性魚類的蜻蜓魚餌。",
		client = {
			image = "dragonfly.png",
		}
	},
	
	["grasshoper"] = {
		label = "草蜢餌",
		weight = 10,
		stack = true,
		close = true,
		description = "活蹦亂跳的草蜢魚餌。",
		client = {
			image = "grasshoper.png",
		}
	},
	
	["shrimp"] = {
		label = "蝦仁餌",
		weight = 10,
		stack = true,
		close = true,
		description = "海釣及磯釣極受歡迎的鮮蝦魚餌。",
		client = {
			image = "shrimp.png",
		}
	},
	
	["leech"] = {
		label = "水蛭餌",
		weight = 10,
		stack = true,
		close = true,
		description = "生命力頑強的水蛭魚餌。",
		client = {
			image = "leech.png",
		}
	},
	
	["snail"] = {
		label = "田螺／蝸牛餌",
		weight = 10,
		stack = true,
		close = true,
		description = "適合釣底棲魚類的螺肉魚餌。",
		client = {
			image = "snail.png",
		}
	},
	
	["liver"] = {
		label = "動物肝臟餌",
		weight = 10,
		stack = true,
		close = true,
		description = "血腥味濃厚、專攻大型魚類的內臟魚餌。",
		client = {
			image = "liver.png",
		}
	},
	-- 魚絲（Lines）
	["express_fishing_super_line"] = {
		label = "Express 超強魚絲 0.1mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.1mm 的超細高拉力魚絲。",
		client = {
			image = "express_fishing_super_line.png",
		}
	},
	
	["syberia_indiana_green"] = {
		label = "Indiana 綠色魚絲 0.14mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.14mm 的綠色隱形魚絲。",
		client = {
			image = "syberia_indiana_green.png",
		}
	},
	
	["syberia_indiana_white"] = {
		label = "Indiana 白色魚絲 0.18mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.18mm 的白色魚絲。",
		client = {
			image = "syberia_indiana_white.png",
		}
	},
	
	["simmons_mono_original"] = {
		label = "Simmons 原廠單絲魚線 0.25mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.25mm 的耐用單絲尼龍魚線。",
		client = {
			image = "simmons_mono_original.png",
		}
	},
	
	["simmons_mono_ss"] = {
		label = "Simmons SS 單絲魚線 0.28mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.28mm 的強化單絲魚線。",
		client = {
			image = "simmons_mono_ss.png",
		}
	},
	
	["syberia_indiana_green_2"] = {
		label = "Indiana 綠色魚絲 0.32mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.32mm 的加粗綠色魚絲。",
		client = {
			image = "syberia_indiana_green_2.png",
		}
	},
	
	["syberia_indiana_white_2"] = {
		label = "Indiana 白色魚絲 0.36mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.36mm 的加粗白色魚絲。",
		client = {
			image = "syberia_indiana_white_2.png",
		}
	},
	
	["snake_power_line_clr"] = {
		label = "Snake 強力透明魚絲 0.41mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.41mm 的高強度透明魚絲。",
		client = {
			image = "snake_power_line_clr.png",
		}
	},
	
	["simmons_mono_original_2"] = {
		label = "Simmons 原廠單絲魚線 0.48mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.48mm 的重型單絲魚線。",
		client = {
			image = "simmons_mono_original_2.png",
		}
	},
	
	["simmons_mono_ss_2"] = {
		label = "Simmons SS 單絲魚線 0.52mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.52mm 的重型強化魚線。",
		client = {
			image = "simmons_mono_ss_2.png",
		}
	},
	
	["snake_power_line_clr_2"] = {
		label = "Snake 強力透明魚絲 0.65mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.65mm 的超粗透明魚絲。",
		client = {
			image = "snake_power_line_clr_2.png",
		}
	},
	
	["solid_hipower_nylon"] = {
		label = "HiPower 尼龍魚絲 0.8mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.8mm 的高拉力尼龍魚絲。",
		client = {
			image = "solid_hipower_nylon.png",
		}
	},
	
	["solid_hipower_nylon_lime"] = {
		label = "HiPower 螢光綠尼龍魚絲 0.85mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.85mm 的螢光綠高拉力尼龍魚絲。",
		client = {
			image = "solid_hipower_nylon_lime.png",
		}
	},
	
	["solid_hipower_nylon_orange"] = {
		label = "HiPower 橙色尼龍魚絲 0.9mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 0.9mm 的橙色高拉力尼龍魚絲。",
		client = {
			image = "solid_hipower_nylon_orange.png",
		}
	},
	
	["solid_hipower_nylon_2"] = {
		label = "HiPower 尼龍魚絲 1.05mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 1.05mm 的特粗尼龍魚絲。",
		client = {
			image = "solid_hipower_nylon_2.png",
		}
	},
	
	["solid_hipower_nylon_lime_2"] = {
		label = "HiPower 螢光綠尼龍魚絲 1.15mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 1.15mm 的特粗螢光綠尼龍魚絲。",
		client = {
			image = "solid_hipower_nylon_lime_2.png",
		}
	},
	
	["solid_hipower_nylon_orange_2"] = {
		label = "HiPower 橙色尼龍魚絲 1.25mm",
		weight = 70,
		stack = true,
		close = true,
		description = "線徑 1.25mm 的巨物專用橙色尼龍魚絲。",
		client = {
			image = "solid_hipower_nylon_orange_2.png",
		}
	},
	-- 釣魚竿（Rods）
	["ufe_telerod_370"] = {
		label = "UFE Telerod 370 伸縮竿",
		weight = 150,
		stack = false,
		close = true,
		description = "UFE Telerod 370 輕便伸縮釣竿。",
		client = {
			image = "ufe_telerod_370.png",
		}
	},
	
	["carptack_feeder_master_250"] = {
		label = "Carptack Feeder Master 250 釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Carptack Feeder Master 250 沉底投餌釣竿。",
		client = {
			image = "carptack_feeder_master_250.png",
		}
	},
	
	["sakura_tsubarea_tsa_552_xul"] = {
		label = "Sakura Tsubarea TSA 552 XUL 路亞竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Tsubarea TSA 552 XUL 超輕量路亞釣竿。",
		client = {
			image = "sakura_tsubarea_tsa_552_xul.png",
		}
	},
	
	["carpex_hybid_carp_270"] = {
		label = "Carpex Hybrid Carp 270 鯉魚竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Carpex Hybrid Carp 270 混合碳纖維鯉魚釣竿。",
		client = {
			image = "carpex_hybid_carp_270.png",
		}
	},
	
	["ufe_float_x5_300"] = {
		label = "UFE Float X5 300 浮標竿",
		weight = 150,
		stack = false,
		close = true,
		description = "UFE Float X5 300 浮標釣竿。",
		client = {
			image = "ufe_float_x5_300.png",
		}
	},
	
	["predatek_fast_perch_210"] = {
		label = "Predatek Fast Perch 210 鱸魚竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Predatek Fast Perch 210 敏銳型路亞釣竿。",
		client = {
			image = "predatek_fast_perch_210.png",
		}
	},
	
	["sakura_ionizer_bass_insb_701_ml"] = {
		label = "Sakura Ionizer Bass INSB 701 鱸魚竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Ionizer Bass INSB 701 專業鱸魚釣竿。",
		client = {
			image = "sakura_ionizer_bass_insb_701_ml.png",
		}
	},
	
	["sakura_redbird_rds_602_l"] = {
		label = "Sakura Redbird RDS 602 L 釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Redbird RDS 602 L 輕調性路亞竿。",
		client = {
			image = "sakura_redbird_rds_602_l.png",
		}
	},
	
	["carpex_cobalt_carp_360"] = {
		label = "Carpex Cobalt Carp 360 鯉魚竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Carpex Cobalt Carp 360 遠投鯉魚釣竿。",
		client = {
			image = "carpex_cobalt_carp_360.png",
		}
	},
	
	["sakura_salt_sniper_salss_611_mj1"] = {
		label = "Sakura Salt Sniper SALSS 611 海釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Salt Sniper SALSS 611 鐵板海釣竿。",
		client = {
			image = "sakura_salt_sniper_salss_611_mj1.png",
		}
	},
	
	["sakura_speciz_spes_light_602_zander"] = {
		label = "Sakura Speciz Spes Light 602 釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Speciz Spes Light 602 梭鱸專用竿。",
		client = {
			image = "sakura_speciz_spes_light_602_zander.png",
		}
	},
	
	["sakura_redbird_rds_662"] = {
		label = "Sakura Redbird RDS 662 釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Redbird RDS 662 通用路亞釣竿。",
		client = {
			image = "sakura_redbird_rds_662.png",
		}
	},
	
	["sakura_salt_sniper_salss_902_h"] = {
		label = "Sakura Salt Sniper SALSS 902 重型海釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Salt Sniper SALSS 902 重型岸拋海釣竿。",
		client = {
			image = "sakura_salt_sniper_salss_902_h.png",
		}
	},
	
	["predatek_seahunter_230"] = {
		label = "Predatek Seahunter 230 船釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Predatek Seahunter 230 深海船釣竿。",
		client = {
			image = "predatek_seahunter_230.png",
		}
	},
	
	["sakura_shukan_shuc_661_lj"] = {
		label = "Sakura Shukan Shuc 661 LJ 輕型鐵板竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Sakura Shukan Shuc 661 LJ 輕型鐵板海釣竿。",
		client = {
			image = "sakura_shukan_shuc_661_lj.png",
		}
	},
	
	["ufe_powercatch_270"] = {
		label = "UFE Powercatch 270 強力釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "UFE Powercatch 270 高負荷釣魚竿。",
		client = {
			image = "ufe_powercatch_270.png",
		}
	},
	
	["predatek_pilk_200"] = {
		label = "Predatek Pilk 200 船釣鐵板竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Predatek Pilk 200 重型船釣竿。",
		client = {
			image = "predatek_pilk_200.png",
		}
	},
	
	["robinson_carbonic_nordic_pilk_300"] = {
		label = "Robinson Carbonic Nordic Pilk 300 碳纖海釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Robinson Carbonic Nordic Pilk 300 北歐碳纖海釣竿。",
		client = {
			image = "robinson_carbonic_nordic_pilk_300.png",
		}
	},
	
	["carptack_bottom_cast_360"] = {
		label = "Carptack Bottom Cast 360 沉底遠投竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Carptack Bottom Cast 360 重型沉底遠投竿。",
		client = {
			image = "carptack_bottom_cast_360.png",
		}
	},
	
	["seax_salfighter_170"] = {
		label = "Seax Salfighter 170 搏魚海釣竿",
		weight = 150,
		stack = false,
		close = true,
		description = "Seax Salfighter 170 專攻大型海魚的強力釣竿。",
		client = {
			image = "seax_salfighter_170.png",
		}
	},
	-- 魚絞（Reels）
	["ufe_canta_1000"] = {
		label = "UFE Canta 1000 魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Canta 1000 輕量紡車魚絞。",
		client = {
			image = "ufe_canta_1000.png",
		}
	},
	
	["ufe_barracuda_2000bt"] = {
		label = "UFE Barracuda 2000BT 魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Barracuda 2000BT 紡車魚絞。",
		client = {
			image = "ufe_barracuda_2000bt.png",
		}
	},
	
	["sakura_alpax_4508"] = {
		label = "Sakura Alpax 4508 魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "Sakura Alpax 4508 中型海釣魚絞。",
		client = {
			image = "sakura_alpax_4508.png",
		}
	},
	
	["sakura_alpax_8508"] = {
		label = "Sakura Alpax 8508 重型魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "Sakura Alpax 8508 大容量重型海釣魚絞。",
		client = {
			image = "sakura_alpax_8508.png",
		}
	},
	
	["ufe_belona_4000"] = {
		label = "UFE Belona 4000 魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Belona 4000 通用紡車魚絞。",
		client = {
			image = "ufe_belona_4000.png",
		}
	},
	
	["ufe_bigspin_8000b"] = {
		label = "UFE Bigspin 8000B 遠投魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Bigspin 8000B 大型遠投魚絞。",
		client = {
			image = "ufe_bigspin_8000b.png",
		}
	},
	
	["ufe_batara_8000g"] = {
		label = "UFE Batara 8000G 魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Batara 8000G 高拉力魚絞。",
		client = {
			image = "ufe_batara_8000g.png",
		}
	},
	
	["ufe_batara_1000r"] = {
		label = "UFE Batara 1000R 魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Batara 1000R 精緻型魚絞。",
		client = {
			image = "ufe_batara_1000r.png",
		}
	},
	
	["robinson_big_runner_807qd"] = {
		label = "Robinson Big Runner 807QD 魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "Robinson Big Runner 807QD 雙卸力遠投魚絞。",
		client = {
			image = "robinson_big_runner_807qd.png",
		}
	},
	
	["spooler_catchpro_4000fd"] = {
		label = "Spooler Catchpro 4000FD 魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "Spooler Catchpro 4000FD 前卸力紡車魚絞。",
		client = {
			image = "spooler_catchpro_4000fd.png",
		}
	},
	
	["ufe_opensea_8000_x"] = {
		label = "UFE Opensea 8000-X 深海魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "UFE Opensea 8000-X 深海遠洋專用魚絞。",
		client = {
			image = "ufe_opensea_8000-x.png",
		}
	},
	
	["spooler_catchpro_8000fd"] = {
		label = "Spooler Catchpro 8000FD 重型魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "Spooler Catchpro 8000FD 重型前卸力魚絞。",
		client = {
			image = "spooler_catchpro_8000fd.png",
		}
	},
	
	["spooler_catchpro_14000fd"] = {
		label = "Spooler Catchpro 14000FD 巨物魚絞",
		weight = 100,
		stack = false,
		close = true,
		description = "Spooler Catchpro 14000FD 超大容量巨物魚絞。",
		client = {
			image = "spooler_catchpro_14000fd.png",
		}
	},
	-- 魚鉤（Hooks）
	["ufa_bait_hook"] = {
		label = "UFA 活餌魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA 通用掛餌魚鉤。",
		client = {
			image = "ufa_bait_hook.png",
		}
	},
	
	["ufa_sproat_hook"] = {
		label = "UFA Sproat 魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Sproat 經典弧形魚鉤。",
		client = {
			image = "ufa_sproat_hook.png",
		}
	},
	
	["captack_claw_xl_hook"] = {
		label = "Captack Claw XL 鷹爪大鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "Captack Claw XL 特大號鷹爪魚鉤。",
		client = {
			image = "captack_claw_xl_hook.png",
		}
	},
	
	["ufa_sproat_g_hook"] = {
		label = "UFA Sproat-G 魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Sproat-G 強化型魚鉤。",
		client = {
			image = "ufa_sproat_g_hook.png",
		}
	},
	
	["carptack_carp_ss_hook"] = {
		label = "Carptack Carp S&S 鯉魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "Carptack Carp S&S 專用鯉魚鉤。",
		client = {
			image = "carptack_carp_ss_hook.png",
		}
	},
	
	["ufa_wide_gap_bl_hook"] = {
		label = "UFA Wide Gap BL 寬腹無倒刺魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Wide Gap BL 寬門距無倒刺魚鉤。",
		client = {
			image = "ufa_wide_gap_bl_hook.png",
		}
	},
	
	["ufa_aberdeen_hook"] = {
		label = "UFA Aberdeen 長柄魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Aberdeen 細長柄魚鉤。",
		client = {
			image = "ufa_aberdeen_hook.png",
		}
	},
	
	["ufa_octopus_bl_hook"] = {
		label = "UFA Octopus BL 八爪無倒刺魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Octopus BL 無倒刺八爪魚鉤。",
		client = {
			image = "ufa_octopus_bl_hook.png",
		}
	},
	
	["ufa_livebait_hook"] = {
		label = "UFA 活餌專用鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA 專為掛載活餌設計的魚鉤。",
		client = {
			image = "ufa_livebait_hook.png",
		}
	},
	
	["carptack_micro_barb_hook"] = {
		label = "Carptack 微倒刺魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "Carptack 微型倒刺精密魚鉤。",
		client = {
			image = "carptack_micro_barb_hook.png",
		}
	},
	
	["carptack_carp_hook"] = {
		label = "Carptack 鯉魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "Carptack 標準鯉魚鉤。",
		client = {
			image = "carptack_carp_hook.png",
		}
	},
	
	["ufa_fusion_bl_hook"] = {
		label = "UFA Fusion BL 複合無倒刺魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "UFA Fusion BL 高強度無倒刺魚鉤。",
		client = {
			image = "ufa_fusion_bl_hook.png",
		}
	},
	
	["predatek_octopus_hook"] = {
		label = "Predatek 八爪魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "Predatek 掠食魚專用八爪魚鉤。",
		client = {
			image = "predatek_octopus_hook.png",
		}
	},
	
	["predatek_fusion_hook"] = {
		label = "Predatek Fusion 魚鉤",
		weight = 40,
		stack = true,
		close = true,
		description = "Predatek Fusion 高穿透力魚鉤。",
		client = {
			image = "predatek_fusion_hook.png",
		}
	},
	-- 潛水裝備
	["scuba"] = {
		label = "水肺潛水裝備",
		weight = 300,
		stack = false,
		close = true,
		description = "全套水肺潛水呼吸裝備。",
		client = {
			image = "scuba.png",
		}
	},
	-- 漁獲魚類（Fish）
	
	["alligator_gar"] = {
		label = "鱷雀鱔",
		weight = 550,
		stack = true,
		close = true,
		description = "一條體型修長的鱷雀鱔。",
		client = {
			image = "alligator_gar.png",
		}
	},
	
	["amur_pike"] = {
		label = "黑龍江狗魚",
		weight = 750,
		stack = true,
		close = true,
		description = "一條兇猛的黑龍江狗魚。",
		client = {
			image = "amur_pike.png",
		}
	},
	
	["atlantic_cod"] = {
		label = "大西洋鱈魚",
		weight = 300,
		stack = true,
		close = true,
		description = "一條新鮮的大西洋鱈魚。",
		client = {
			image = "atlantic_cod.png",
		}
	},
	
	["fishing_gear"] = {
		label = "釣魚工具包",
		weight = 30,
		stack = false,
		close = true,
		description = "進行垂釣活動必備的工具套裝。",
		client = {
			image = "fishing_gear.png",
		}
	},
	
	["aquarium_pass"] = {
		label = "水族館通行證",
		weight = 30,
		stack = false,
		close = true,
		description = "進入水族館的專用通行證。",
		client = {
			image = "aquarium_pass.png",
		}
	},
	
	["research_kit"] = {
		label = "野外研究工具箱",
		weight = 30,
		stack = false,
		close = true,
		description = "適合進行戶外生態及水域採樣研究的工具箱。",
		client = {
			image = "research_kit.png",
		}
	},
	["special_boots"] = {
		label = "防滑涉水靴",
		weight = 30,
		stack = false,
		close = true,
		description = "專為崎嶇濕滑地形設計的防水防滑靴。",
		client = {
			image = "special_boots.png",
		}
	},
	
	["museum_ticket"] = {
		label = "博物館入場券",
		weight = 30,
		stack = false,
		close = true,
		description = "進入海洋歷史博物館的入場券。",
		client = {
			image = "museum_ticket.png",
		}
	},
	
	["atlantic_salmon"] = {
		label = "大西洋三文魚",
		weight = 500,
		stack = true,
		close = true,
		description = "一條肥美的大西洋三文魚。",
		client = {
			image = "atlantic_salmon.png",
		}
	},
	
	["barbel"] = {
		label = "魮魚",
		weight = 600,
		stack = true,
		close = true,
		description = "一條河床常見的魮魚。",
		client = {
			image = "barbel.png",
		}
	},
	
	["beluga_sturgeon"] = {
		label = "歐洲鰉（白鱘）",
		weight = 264,
		stack = true,
		close = true,
		description = "一條珍貴的歐洲鰉。",
		client = {
			image = "beluga_sturgeon.png",
		}
	},
	
	["black_grayling"] = {
		label = "黑茴魚",
		weight = 120,
		stack = true,
		close = true,
		description = "一條棲息於清澈溪流的黑茴魚。",
		client = {
			image = "black_grayling.png",
		}
	},
	
	["blacktip_reef_shark"] = {
		label = "黑鰭礁鯊",
		weight = 1500,
		stack = true,
		close = true,
		description = "一條在珊瑚礁海域出沒的黑鰭礁鯊。",
		client = {
			image = "blacktip_reef_shark.png",
		}
	},
	
	["blue_marlin"] = {
		label = "藍槍魚（馬林魚）",
		weight = 200,
		stack = true,
		close = true,
		description = "一條速度極快的藍槍魚。",
		client = {
			image = "blue_marlin.png",
		}
	},
	
	["bluefin_tuna"] = {
		label = "藍鰭吞拿魚",
		weight = 270,
		stack = true,
		close = true,
		description = "一條價值不菲的藍鰭吞拿魚。",
		client = {
			image = "bluefin_tuna.png",
		}
	},
	
	["bluegill"] = {
		label = "藍鰓太陽魚",
		weight = 120,
		stack = true,
		close = true,
		description = "一條色彩斑斕的藍鰓太陽魚。",
		client = {
			image = "bluegill.png",
		}
	},
	
	["brook_trout"] = {
		label = "美洲紅點鮭",
		weight = 700,
		stack = true,
		close = true,
		description = "一條溪流中的美洲紅點鮭。",
		client = {
			image = "brook_trout.png",
		}
	},
	
	["brown_trout"] = {
		label = "褐鱒",
		weight = 230,
		stack = true,
		close = true,
		description = "一條野生的褐鱒。",
		client = {
			image = "brown_trout.png",
		}
	},
	
	["bull_trout"] = {
		label = "公牛紅點鮭",
		weight = 200,
		stack = true,
		close = true,
		description = "一條強壯的公牛紅點鮭。",
		client = {
			image = "bull_trout.png",
		}
	},
	
	["chub"] = {
		label = "歐洲鰱魚",
		weight = 150,
		stack = true,
		close = true,
		description = "一條淡水歐洲鰱魚。",
		client = {
			image = "chub.png",
		}
	},
	
	["chum_salmon"] = {
		label = "大馬哈魚（狗鮭）",
		weight = 600,
		stack = true,
		close = true,
		description = "一條洄游的大馬哈魚。",
		client = {
			image = "chum_salmon.png",
		}
	},
	
	["coho_salmon"] = {
		label = "銀三文魚",
		weight = 500,
		stack = true,
		close = true,
		description = "一條銀白色的銀三文魚。",
		client = {
			image = "coho_salmon.png",
		}
	},
	
	["common_bleak"] = {
		label = "歐鰷魚",
		weight = 10,
		stack = true,
		close = true,
		description = "一條體型小巧的歐鰷魚。",
		client = {
			image = "common_bleak.png",
		}
	},
	
	["common_bream"] = {
		label = "歐鯿魚",
		weight = 400,
		stack = true,
		close = true,
		description = "一條身形扁平的歐鯿魚。",
		client = {
			image = "common_bream.png",
		}
	},
	
	["common_carp"] = {
		label = "鯉魚",
		weight = 700,
		stack = true,
		close = true,
		description = "一條常見的野生鯉魚。",
		client = {
			image = "common_carp.png",
		}
	},
	["crucian_carp"] = {
		label = "鯽魚",
		weight = 140,
		stack = true,
		close = true,
		description = "一條鮮活的鯽魚。",
		client = {
			image = "crucian_carp.png",
		}
	},
	
	["european_bass"] = {
		label = "歐洲海鱸",
		weight = 250,
		stack = true,
		close = true,
		description = "一條肉質鮮美的歐洲海鱸。",
		client = {
			image = "european_bass.png",
		}
	},
	
	["european_eel"] = {
		label = "歐洲鰻鱺",
		weight = 300,
		stack = true,
		close = true,
		description = "一條滑溜的歐洲鰻鱺。",
		client = {
			image = "european_eel.png",
		}
	},
	
	["european_flounder"] = {
		label = "歐洲比目魚",
		weight = 170,
		stack = true,
		close = true,
		description = "一條扁平的歐洲比目魚。",
		client = {
			image = "european_flounder.png",
		}
	},
	
	["european_perch"] = {
		label = "歐洲河鱸",
		weight = 500,
		stack = true,
		close = true,
		description = "一條帶有條紋的歐洲河鱸。",
		client = {
			image = "european_perch.png",
		}
	},
	
	["european_sea_sturgeon"] = {
		label = "歐洲海鱘",
		weight = 2000,
		stack = true,
		close = true,
		description = "一條體型龐大的歐洲海鱘。",
		client = {
			image = "european_sea_sturgeon.png",
		}
	},
	
	["electric_eel"] = {
		label = "電鰻",
		weight = 1500,
		stack = true,
		close = true,
		description = "一條會釋放高壓電流的電鰻。",
		client = {
			image = "electric_eel.png",
		}
	},
	
	["garfish"] = {
		label = "鶴鱵（針魚）",
		weight = 50,
		stack = true,
		close = true,
		description = "一條長嘴細身的鶴鱵。",
		client = {
			image = "garfish.png",
		}
	},
	
	["giant_freshwater_stingray"] = {
		label = "巨型淡水魔鬼魚",
		weight = 350,
		stack = true,
		close = true,
		description = "一條罕見的巨型淡水魔鬼魚。",
		client = {
			image = "giant_freshwater_stingray.png",
		}
	},
	
	["giant_grouper"] = {
		label = "龍躉（巨型石斑）",
		weight = 260,
		stack = true,
		close = true,
		description = "一條體型碩大的龍躉。",
		client = {
			image = "giant_grouper.png",
		}
	},
	
	["giant_squid"] = {
		label = "大王烏賊（巨型魷魚）",
		weight = 2000,
		stack = true,
		close = true,
		description = "一隻來自深海的巨型大王烏賊。",
		client = {
			image = "giant_squid.png",
		}
	},
	
	["giant_trevally"] = {
		label = "浪人鰺（牛港鰺）",
		weight = 200,
		stack = true,
		close = true,
		description = "一條拉力極強的浪人鰺。",
		client = {
			image = "giant_trevally.png",
		}
	},
	
	["golden_trout"] = {
		label = "金鱒",
		weight = 40,
		stack = true,
		close = true,
		description = "一條閃耀金黃色澤的金鱒。",
		client = {
			image = "golden_trout.png",
		}
	},
	
	["grass_carp"] = {
		label = "鯇魚（草魚）",
		weight = 120,
		stack = true,
		close = true,
		description = "一條常見的淡水鯇魚。",
		client = {
			image = "grass_carp.png",
		}
	},
	
	["grass_pickerel"] = {
		label = "草狗魚",
		weight = 90,
		stack = true,
		close = true,
		description = "一條小型掠食性草狗魚。",
		client = {
			image = "grass_pickerel.png",
		}
	},
	
	["grayling"] = {
		label = "茴魚",
		weight = 80,
		stack = true,
		close = true,
		description = "一條背鰭寬大的茴魚。",
		client = {
			image = "grayling.png",
		}
	},
	
	["great_barracuda"] = {
		label = "大梭魚（海狼）",
		weight = 900,
		stack = true,
		close = true,
		description = "一條牙齒鋒利的大梭魚。",
		client = {
			image = "great_barracuda.png",
		}
	},
	
	["grey_snapper"] = {
		label = "灰笛鯛",
		weight = 400,
		stack = true,
		close = true,
		description = "一條常見的灰笛鯛。",
		client = {
			image = "grey_snapper.png",
		}
	},
	
	["huchen"] = {
		label = "哲羅鮭",
		weight = 1500,
		stack = true,
		close = true,
		description = "一條大型淡水猛魚哲羅鮭。",
		client = {
			image = "huchen.png",
		}
	},
	
	["ide"] = {
		label = "圓腹雅羅魚",
		weight = 100,
		stack = true,
		close = true,
		description = "一條淡水圓腹雅羅魚。",
		client = {
			image = "ide.png",
		}
	},
	
	["indian_threadfish"] = {
		label = "印度絲鰺",
		weight = 250,
		stack = true,
		close = true,
		description = "一條背鰭拖著長絲的印度絲鰺。",
		client = {
			image = "indian_threadfish.png",
		}
	},
	
	["lake_sturgeon"] = {
		label = "湖鱘",
		weight = 1600,
		stack = true,
		close = true,
		description = "一條古老的淡水湖鱘。",
		client = {
			image = "lake_sturgeon.png",
		}
	},
	
	["largemouth_bass"] = {
		label = "大口黑鱸",
		weight = 100,
		stack = true,
		close = true,
		description = "一條路亞釣手最愛的大口黑鱸。",
		client = {
			image = "largemouth_bass.png",
		}
	},
	
	["mahi_mahi"] = {
		label = "鬼頭刀（鯕鰍）",
		weight = 1000,
		stack = true,
		close = true,
		description = "一條色彩艷麗的遠洋鬼頭刀。",
		client = {
			image = "mahi_mahi.png",
		}
	},
	
	["malabar_grouper"] = {
		label = "瑪拉巴石斑魚",
		weight = 1500,
		stack = true,
		close = true,
		description = "一條大型瑪拉巴石斑魚。",
		client = {
			image = "malabar_grouper.png",
		}
	},
	
	["mirror_carp"] = {
		label = "鏡鯉",
		weight = 700,
		stack = true,
		close = true,
		description = "一條魚鱗大而稀疏的鏡鯉。",
		client = {
			image = "mirror_carp.png",
		}
	},
	
	["northern_pike"] = {
		label = "白斑狗魚",
		weight = 500,
		stack = true,
		close = true,
		description = "一條伏擊型淡水掠食者白斑狗魚。",
		client = {
			image = "northern_pike.png",
		}
	},
	
	["pink_river_dolphin"] = {
		label = "亞馬遜粉紅河豚",
		weight = 1550,
		stack = true,
		close = true,
		description = "一條罕見的粉紅色淡水豚。",
		client = {
			image = "pink_river_dolphin.png",
		}
	},
	
	["pink_salmon"] = {
		label = "粉紅三文魚",
		weight = 200,
		stack = true,
		close = true,
		description = "一條野生的粉紅三文魚。",
		client = {
			image = "pink_salmon.png",
		}
	},
	
	["prussian_carp"] = {
		label = "銀鯽",
		weight = 90,
		stack = true,
		close = true,
		description = "一條銀白色的淡水銀鯽。",
		client = {
			image = "prussian_carp.png",
		}
	},
	
	["pufferfish"] = {
		label = "雞泡魚（河豚）",
		weight = 150,
		stack = true,
		close = true,
		description = "一條受驚時會鼓起身體的雞泡魚。",
		client = {
			image = "pufferfish.png",
		}
	},
	
	["pumpkinseed"] = {
		label = "瓜子太陽魚",
		weight = 40,
		stack = true,
		close = true,
		description = "一條花紋精緻的瓜子太陽魚。",
		client = {
			image = "pumpkinseed.png",
		}
	},
	
	["rainbow_trout"] = {
		label = "虹鱒",
		weight = 100,
		stack = true,
		close = true,
		description = "一條體側帶有粉紅彩虹紋的虹鱒。",
		client = {
			image = "rainbow_trout.png",
		}
	},
	
	["red_lionfish"] = {
		label = "紅獅子魚",
		weight = 100,
		stack = true,
		close = true,
		description = "一條背鰭帶毒且外型華麗的紅獅子魚。",
		client = {
			image = "red_lionfish.png",
		}
	},
	
	["redeye_piranha"] = {
		label = "紅眼食人魚",
		weight = 120,
		stack = true,
		close = true,
		description = "一條牙齒極其鋒利的紅眼食人魚。",
		client = {
			image = "redeye_piranha.png",
		}
	},
	
	["redfin_pickerel"] = {
		label = "紅鰭狗魚",
		weight = 40,
		stack = true,
		close = true,
		description = "一條魚鰭呈紅橙色的紅鰭狗魚。",
		client = {
			image = "redfin_pickerel.png",
		}
	},
	
	["roach"] = {
		label = "擬鯉",
		weight = 50,
		stack = true,
		close = true,
		description = "一條常見的淡水擬鯉。",
		client = {
			image = "roach.png",
		}
	},
	
	["sea_trout"] = {
		label = "海鱒",
		weight = 200,
		stack = true,
		close = true,
		description = "一條在河口與大海間洄游的海鱒。",
		client = {
			image = "sea_trout.png",
		}
	},
	
	["silver_carp"] = {
		label = "鰱魚（白鰱）",
		weight = 1000,
		stack = true,
		close = true,
		description = "一條體型較大的淡水鰱魚。",
		client = {
			image = "silver_carp.png",
		}
	},
	
	["skeleton"] = {
		label = "魚骨骸骨",
		weight = 10,
		stack = true,
		close = true,
		description = "一副從水底釣上來的神秘魚骨。",
		client = {
			image = "skeleton.png",
		}
	},
	
	["smallmouth_bass"] = {
		label = "小口黑鱸",
		weight = 150,
		stack = true,
		close = true,
		description = "一條爆發力十足的小口黑鱸。",
		client = {
			image = "smallmouth_bass.png",
		}
	},
	
	["sockeye_salmon"] = {
		label = "紅三文魚",
		weight = 300,
		stack = true,
		close = true,
		description = "一條肉色鮮紅的紅三文魚。",
		client = {
			image = "sockeye_salmon.png",
		}
	},
	
	["south_sea_pearl_oyster"] = {
		label = "南海珍珠蠔",
		weight = 10,
		stack = true,
		close = true,
		description = "一隻可能孕育著珍貴珍珠的南海珍珠蠔。",
		client = {
			image = "south_sea_pearl_oyster.png",
		}
	},
	
	["tench"] = {
		label = "丁鱥",
		weight = 250,
		stack = true,
		close = true,
		description = "一條體色墨綠的淡水丁鱥。",
		client = {
			image = "tench.png",
		}
	},
	
	["tiger_shark"] = {
		label = "虎鯊",
		weight = 5500,
		stack = true,
		close = true,
		description = "一條體型巨大的深海虎鯊。",
		client = {
			image = "tiger_shark.png",
		}
	},
	
	["wels_catfish"] = {
		label = "歐洲巨鯰",
		weight = 400,
		stack = true,
		close = true,
		description = "一條體型龐大的淡水歐洲巨鯰。",
		client = {
			image = "wels_catfish.png",
		}
	},
	
	["white_sturgeon"] = {
		label = "白鱘",
		weight = 800,
		stack = true,
		close = true,
		description = "一條大型白鱘。",
		client = {
			image = "white_sturgeon.png",
		}
	},
	
	["yellow_perch"] = {
		label = "黃鱸",
		weight = 40,
		stack = true,
		close = true,
		description = "一條金黃色的淡水黃鱸。",
		client = {
			image = "yellow_perch.png",
		}
	},
	
	["yellowfin_tuna"] = {
		label = "黃鰭吞拿魚",
		weight = 900,
		stack = true,
		close = true,
		description = "一條新鮮捕獲的黃鰭吞拿魚。",
		client = {
			image = "yellowfin_tuna.png",
		}
	},
	
	["yellowtail_barracuda"] = {
		label = "黃尾梭魚",
		weight = 110,
		stack = true,
		close = true,
		description = "一條尾鰭泛黃的黃尾梭魚。",
		client = {
			image = "yellowtail_barracuda.png",
		}
	},
	
	["zander"] = {
		label = "梭鱸",
		weight = 200,
		stack = true,
		close = true,
		description = "一條眼神銳利的淡水梭鱸。",
		client = {
			image = "zander.png",
		}
	},
	
	["paddlefish"] = {
		label = "匙吻鱘",
		weight = 1000,
		stack = true,
		close = true,
		description = "一條稀有且受法例保護的受管制匙吻鱘。",
		client = {
			image = "paddlefish.png",
		}
	},
	
	["sawfish"] = {
		label = "鋸鰩",
		weight = 1000,
		stack = true,
		close = true,
		description = "一條稀有且受法例保護的受管制鋸鰩。",
		client = {
			image = "sawfish.png",
		}
	},
	
	["eel"] = {
		label = "海鰻",
		weight = 1000,
		stack = true,
		close = true,
		description = "一條稀有且受法例保護的受管制海鰻。",
		client = {
			image = "eel.png",
		}
	},
	
	["hammerheadshark"] = {
		label = "錘頭鯊（雙髻鯊）",
		weight = 2500,
		stack = true,
		close = true,
		description = "一條稀有且受法例保護的受管制錘頭鯊。",
		client = {
			image = "hammerheadshark.png",
		}
	},
	
	["seaturtle"] = {
		label = "海龜",
		weight = 2500,
		stack = true,
		close = true,
		description = "一隻稀有且受法例保護的受管制海龜。",
		client = {
			image = "seaturtle.png",
		}
	},
	
	["leopardshark"] = {
		label = "豹紋鯊",
		weight = 2500,
		stack = true,
		close = true,
		description = "一條稀有且受法例保護的受管制豹紋鯊。",
		client = {
			image = "leopardshark.png",
		}
	},
	
	["blueshark"] = {
		label = "大青鯊（藍鯊）",
		weight = 4000,
		stack = true,
		close = true,
		description = "一條傳說級且受法例保護的受管制大青鯊。",
		client = {
			image = "blueshark.png",
		}
	},
	
	["greatwhiteshark"] = {
		label = "大白鯊",
		weight = 10000,
		stack = true,
		close = true,
		description = "一條神話級且受法例保護的受管制大白鯊。",
		client = {
			image = "greatwhiteshark.png",
		}
	},
	
	-- 潛水打撈物品（Diving Items）
	["ancient_artifact"] = {
		label = "古代文物",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "一件從海底發掘出的古老文物！",
		client = {
			image = "ancient_artifact.png",
		}
	},
	["antique_compass"] = {
		label = "古董羅盤",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "一個年代久遠的黃銅古董羅盤。",
		client = {
			image = "antique_compass.png",
		}
	},
	["enchanted_jewel"] = {
		label = "奇幻寶石",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "一顆散發神秘光芒的珍貴寶石。",
		client = {
			image = "enchanted_jewel.png",
		}
	},
	["luxury_watch"] = {
		label = "名貴腕錶",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "一隻價值連城的豪華名錶。",
		client = {
			image = "luxury_watch.png",
		}
	},
	["meteorite_ore"] = {
		label = "隕石礦石",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "蘊含稀有金屬的太空隕石礦塊。",
		client = {
			image = "meteorite_ore.png",
		}
	},
	["mystic_crystal"] = {
		label = "神秘水晶",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "一塊晶瑩剔透的神秘水晶。",
		client = {
			image = "mystic_crystal.png",
		}
	},
	["phantom_amulet"] = {
		label = "幽靈護身符",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "一枚刻有古老符文的幽靈護身符。",
		client = {
			image = "phantom_amulet.png",
		}
	},
	["precious_pearls"] = {
		label = "珍貴天然珍珠",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "一把圓潤光澤的天然深海珍珠。",
		client = {
			image = "precious_pearls.png",
		}
	},
	["rare_spices"] = {
		label = "珍稀香料",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "一批保存完好的珍稀異國香料。",
		client = {
			image = "rare_spices.png",
		}
	},
	["spy_gadget"] = {
		label = "特工秘密裝置",
		weight = 1000,  
		stack = true,  
		close = true,  
		description = "一個精密的間諜特工電子裝置。",
		client = {
			image = "spy_gadget.png",
		}
	},
})

insert({	-- FiveCode Tequila 酒吧工作
	-- 其他材料與用品
	['tk_ticket'] = {
		label = 'Tequi-la-la 入場券',
		weight = 1,
		stack = true,
		close = true,
		description = 'Tequi-la-la 酒吧入場券。'
	},

	['tk_cleansponge'] = {
		label = '乾淨海綿',
		weight = 1,
		stack = true,
		close = true,
		description = '乾淨的清潔海綿，隨時可用來擦拭桌面！'
	},

	['tk_dirtysponge'] = {
		label = '髒海綿',
		weight = 1,
		stack = true,
		close = true,
		description = '弄髒了的海綿，需要拿去清洗！'
	},

	['tk_nuts'] = {
		label = '果仁',
		weight = 1,
		stack = true,
		close = true,
		description = '可盛入乾淨碗中的佐酒果仁。'
	},

	['tk_beans'] = {
		label = '佐酒豆子',
		weight = 1,
		stack = true,
		close = true,
		description = '可盛入乾淨碗中的香脆豆子。'
	},

	['tk_juice'] = {
		label = '果汁',
		weight = 1,
		stack = true,
		close = true,
		description = '一盒新鮮果汁，大概不是本地水果榨的。'
	},

	['tk_grenadine'] = {
		label = '紅石榴糖漿',
		weight = 1,
		stack = true,
		close = true,
		description = '由石榴製成的香甜鮮紅調酒糖漿。'
	},

	['tk_grapefruitsoda'] = {
		label = '西柚梳打水',
		weight = 1,
		stack = true,
		close = true,
		description = '一瓶甘甜微苦的有氣西柚梳打水。'
	},

	['tk_salt'] = {
		label = '粗鹽',
		weight = 1,
		stack = true,
		close = true,
		description = '用於製作雞尾酒杯口鹽邊的粗鹽。'
	},

	['tk_gingerbeer'] = {
		label = '薑汁啤酒',
		weight = 1,
		stack = true,
		close = true,
		description = '辛辣無酒精薑汁汽水，口感十足。'
	},

	['tk_soda'] = {
		label = '梳打水',
		weight = 1,
		stack = true,
		close = true,
		description = '一瓶氣泡十足的純梳打水。'
	},

	['tk_bananaliqueur'] = {
		label = '香蕉力嬌酒',
		weight = 1,
		stack = true,
		close = true,
		description = '香甜濃郁的香蕉風味利口酒。'
	},

	['tk_cleantallglass'] = {
		label = '乾淨高身杯',
		weight = 1,
		stack = true,
		close = true,
		description = '用於盛載飲品的乾淨高身玻璃杯。'
	},

	['tk_dirtytallglass'] = {
		label = '髒高身杯',
		weight = 1,
		stack = true,
		close = true,
		description = '用過的高身玻璃杯，需要清洗。'
	},

	['tk_cleanshortglass'] = {
		label = '乾淨矮身杯',
		weight = 1,
		stack = true,
		close = true,
		description = '用於盛載烈酒的乾淨矮身杯。'
	},

	['tk_dirtyshortglass'] = {
		label = '髒矮身杯',
		weight = 1,
		stack = true,
		close = true,
		description = '用過的矮身杯，需要清洗。'
	},

	['tk_cleancocktailglass'] = {
		label = '乾淨雞尾酒杯',
		weight = 1,
		stack = true,
		close = true,
		description = '用於盛載雞尾酒的乾淨高腳杯。'
	},

	['tk_dirtycocktailglass'] = {
		label = '髒雞尾酒杯',
		weight = 1,
		stack = true,
		close = true,
		description = '用過的雞尾酒杯，需要清洗。'
	},

	['tk_ice'] = {
		label = '冰塊',
		weight = 1,
		stack = true,
		close = true,
		description = '用於冰鎮飲品的冰塊。'
	},

	-- 小食（Snacks）
	['tk_cleanbowl'] = {
		label = '乾淨小食碗',
		weight = 1,
		stack = true,
		close = true,
		description = '用於盛載小食的乾淨碗。'
	},

	['tk_dirtybowl'] = {
		label = '髒小食碗',
		weight = 1,
		stack = true,
		close = true,
		description = '用過的小食碗，需要清洗。'
	},

	['tk_beanbowl'] = {
		label = '香脆豆子碗',
		weight = 1,
		stack = true,
		close = true,
		description = '隨時可以享用的佐酒豆子小食。'
	},

	['tk_nutbowl'] = {
		label = '雜錦果仁碗',
		weight = 1,
		stack = true,
		close = true,
		description = '隨時可以享用的雜錦果仁小食。'
	},

	-- 飲品（Drinks）
	['tk_tequilasunrise'] = {
		label = '龍舌蘭日出（Tequila-la Sunrise）',
		weight = 1,
		stack = true,
		close = true,
		description = '經典漸層雞尾酒，融合龍舌蘭、橙汁與紅石榴糖漿，猶如洛聖都的陽光早晨。'
	},

	['tk_paloma'] = {
		label = '洛聖都帕洛瑪（Los Santos Paloma）',
		weight = 1,
		stack = true,
		close = true,
		description = '清爽的龍舌蘭配西柚梳打與微鹹口感，威斯普奇海灘的非官方代表飲品。'
	},

	['tk_vespuccimule'] = {
		label = '威斯普奇騾子（Vespucci Mule）',
		weight = 1,
		stack = true,
		close = true,
		description = '龍舌蘭與辛辣薑汁啤酒的刺激碰撞，最適合在佩羅碼頭談生意時享用。'
	},

	['tk_margarita'] = {
		label = '招牌瑪格麗特（La Margarita）',
		weight = 1,
		stack = true,
		close = true,
		description = '本店招牌特調，酸爽順滑並帶有鹽邊風味——千萬別問有沒有冰沙版。'
	},

	['tk_rhumrunner'] = {
		label = '蘭姆奔跑者（Rhum Runner）',
		weight = 1,
		stack = true,
		close = true,
		description = '熱帶果香與醇厚蘭姆酒的大膽結合，專為追求刺激的冒險家調製。'
	},

	['tk_vodkarevolution'] = {
		label = '伏特加革命（Vodka Revolution）',
		weight = 1,
		stack = true,
		close = true,
		description = '清冽濃烈的伏特加特調，每一口都為你的味蕾帶來全新衝擊。'
	},

	['tk_tequilabottle'] = {
		label = '龍舌蘭酒（整瓶）',
		weight = 1,
		stack = true,
		close = true,
		description = '一瓶優質龍舌蘭烈酒。'
	},

	['tk_tequiladrink'] = {
		label = '龍舌蘭烈酒（杯裝）',
		weight = 1,
		stack = true,
		close = true,
		description = '原汁原味、烈而順口的龍舌蘭酒。'
	},

	['tk_rhumbottle'] = {
		label = '蘭姆酒（整瓶）',
		weight = 1,
		stack = true,
		close = true,
		description = '一瓶優質加勒比海蘭姆酒。'
	},

	['tk_rhumdrink'] = {
		label = '蘭姆酒（杯裝）',
		weight = 1,
		stack = true,
		close = true,
		description = '以優質蘭姆酒調製的香醇飲品。'
	},

	['tk_vodkabottle'] = {
		label = '伏特加（整瓶）',
		weight = 1,
		stack = true,
		close = true,
		description = '一瓶優質純淨伏特加。'
	},

	['tk_vodkadrink'] = {
		label = '伏特加（杯裝）',
		weight = 1,
		stack = true,
		close = true,
		description = '清澈純淨的伏特加，冰鎮後飲用風味最佳。'
	},

	-- 備料台切片食材
	['tk_rawlemon'] = {
		label = '新鮮檸檬',
		weight = 1,
		stack = true,
		close = true,
		description = '準備切開的新鮮檸檬。'
	},

	['tk_slicedlemon'] = {
		label = '檸檬片',
		weight = 1,
		stack = true,
		close = true,
		description = '新鮮切好的檸檬片。'
	},

	['tk_raworange'] = {
		label = '新鮮橙',
		weight = 1,
		stack = true,
		close = true,
		description = '準備切開的新鮮橙。'
	},

	['tk_slicedorange'] = {
		label = '橙片',
		weight = 1,
		stack = true,
		close = true,
		description = '新鮮切好的橙片。'
	},

	['tk_rawstrawberry'] = {
		label = '新鮮士多啤梨',
		weight = 1,
		stack = true,
		close = true,
		description = '準備切片的新鮮士多啤梨。'
	},

	['tk_slicedstrawberry'] = {
		label = '士多啤梨片',
		weight = 1,
		stack = true,
		close = true,
		description = '新鮮切好的士多啤梨片。'
	},

	['tk_rawlime'] = {
		label = '新鮮青檸',
		weight = 1,
		stack = true,
		close = true,
		description = '準備切開的新鮮青檸。'
	},

	['tk_slicedlime'] = {
		label = '青檸片',
		weight = 1,
		stack = true,
		close = true,
		description = '新鮮切好的青檸片。'
	}
})

insert({	-- FiveCode - BurgerShot 快餐店工作
	-- 其他用品與調味料
    ['salt'] = {
        label = '食鹽',
        weight = 1,
        stack = true,
        close = true,
        description = '烹調專用食鹽！'
    },

    ['burgershotdrinkcup'] = {
        label = '空汽水杯',
        weight = 1,
        stack = true,
        close = true,
        description = 'BurgerShot 空飲料杯。'
    },

    ['ice'] = {
        label = '冰塊',
        weight = 1,
        stack = true,
        close = true,
        description = '用來冰鎮飲品的冰塊！'
    },

    ['butter'] = {
        label = '牛油',
        weight = 1,
        stack = true,
        close = true,
        description = '烹調用牛油。'
    },

    ['colasyrup'] = {
        label = 'eCola 可樂糖漿',
        weight = 1,
        stack = true,
        close = true,
        description = '可用於調製美味可樂的濃縮糖漿！'
    },

    ['colalightsyrup'] = {
        label = '健怡 eCola 糖漿',
        weight = 1,
        stack = true,
        close = true,
        description = '可用於調製低糖健怡可樂的濃縮糖漿！'
    },

    ['sprunksyrup'] = {
        label = '雪碧（Sprunk）糖漿',
        weight = 1,
        stack = true,
        close = true,
        description = '可用於調製清爽雪碧汽水的濃縮糖漿！'
    },

    ['orang_o_tangsyrup'] = {
        label = '香橙汽水（Orang O Tang）糖漿',
        weight = 1,
        stack = true,
        close = true,
        description = '可用於調製香橙汽水的濃縮糖漿！'
    },

    ['ketchup'] = {
        label = '茄汁',
        weight = 1,
        stack = true,
        close = true,
        description = '經典番茄醬。'
    },

-- 備料台（Cutting Table）
    ['rawtomato'] = {
        label = '番茄',
        weight = 1,
        stack = true,
        close = true,
        description = '多汁的新鮮番茄，準備切片！'
    },

    ['slicedtomato'] = {
        label = '番茄片',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的多汁番茄片，隨時可夾入漢堡！'
    },

    ['rawsalad'] = {
        label = '生菜',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮生菜，準備切絲！'
    },

    ['slicedsalad'] = {
        label = '生菜絲',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的爽脆生菜絲！'
    },

    ['rawcucumber'] = {
        label = '青瓜',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮青瓜，準備切片！'
    },

    ['slicedcucumber'] = {
        label = '青瓜片',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的青瓜片，隨時可夾入漢堡享用！'
    },

    ['rawonion'] = {
        label = '洋蔥',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮洋蔥，準備切圈！'
    },

    ['slicedonion'] = {
        label = '洋蔥圈',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的洋蔥圈，隨時可夾入漢堡享用！'
    },

    ['rawchillipepper'] = {
        label = '辣椒',
        weight = 1,
        stack = true,
        close = true,
        description = '辛辣的紅辣椒，準備切片！'
    },

    ['slicedchillipepper'] = {
        label = '辣椒片',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的辣椒片，隨時可加入漢堡增添辣味！'
    },

    ['rawcheese'] = {
        label = '芝士塊',
        weight = 1,
        stack = true,
        close = true,
        description = '整塊芝士，準備切片！'
    },

    ['slicedcheese'] = {
        label = '芝士片',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的香濃芝士片，隨時可夾入漢堡！'
    },

    ['rawham'] = {
        label = '火腿',
        weight = 1,
        stack = true,
        close = true,
        description = '整塊火腿，準備切片！'
    },

    ['slicedham'] = {
        label = '火腿片',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的火腿片，隨時可夾入漢堡！'
    },

    ['rawbacon'] = {
        label = '煙肉',
        weight = 1,
        stack = true,
        close = true,
        description = '生煙肉，準備切片！'
    },

    ['slicedbacon'] = {
        label = '煙肉片',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的煙肉片，可夾入三文治或香煎享用！'
    },

    ['rawsandwichbread'] = {
        label = '方包',
        weight = 1,
        stack = true,
        close = true,
        description = '整條方包，準備切片！'
    },

    ['slicedsandwichbread'] = {
        label = '方包片',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的方包片，隨時可用來製作三文治！'
    },

    ['rawburgerbun'] = {
        label = '漢堡包',
        weight = 1,
        stack = true,
        close = true,
        description = '未切開的漢堡麵包，準備對半切開！'
    },

    ['slicedburgerbun'] = {
        label = '切開的漢堡包',
        weight = 1,
        stack = true,
        close = true,
        description = '已對半切開的漢堡麵包，準備放上煎爐烘烤！'
    },

-- 炸爐（Fryer）
    ['frozenfries'] = {
        label = '急凍薯條',
        weight = 1,
        stack = true,
        close = true,
        description = '急凍薯條，準備放入炸爐油炸！'
    },

    ['friedfries'] = {
        label = '炸薯條',
        weight = 1,
        stack = true,
        close = true,
        description = '金黃香脆的炸薯條！'
    },

    ['friedonionring'] = {
        label = '炸洋蔥圈',
        weight = 1,
        stack = true,
        close = true,
        description = '酥脆可口的炸洋蔥圈！'
    },

    ['friedmozzarellastick'] = {
        label = '炸水牛芝士條',
        weight = 1,
        stack = true,
        close = true,
        description = '外脆內拉絲的炸水牛芝士條！'
    },

    ['rawchickenstrip'] = {
        label = '生雞柳',
        weight = 1,
        stack = true,
        close = true,
        description = '生雞柳，準備放入炸爐油炸！'
    },

    ['friedchickenstrip'] = {
        label = '炸雞柳',
        weight = 1,
        stack = true,
        close = true,
        description = '香脆炸雞柳，隨時可夾入漢堡或直接享用！'
    },

    ['rawfishstrip'] = {
        label = '生魚柳',
        weight = 1,
        stack = true,
        close = true,
        description = '生魚柳，準備放入炸爐油炸！'
    },

    ['friedfishstrip'] = {
        label = '炸魚柳',
        weight = 1,
        stack = true,
        close = true,
        description = '外酥內嫩的炸魚柳，隨時可夾入漢堡享用！'
    },

-- 煎爐（Grill）
    ['frozenburgermeat'] = {
        label = '急凍漢堡扒',
        weight = 1,
        stack = true,
        close = true,
        description = '急凍漢堡肉扒，準備放上煎爐香煎！'
    },

    ['grilledburgermeat'] = {
        label = '香煎漢堡扒',
        weight = 1,
        stack = true,
        close = true,
        description = '煎得香噴噴的漢堡肉扒，隨時可夾入漢堡！'
    },

    ['grilledbacon'] = {
        label = '香煎煙肉',
        weight = 1,
        stack = true,
        close = true,
        description = '煎得香脆的煙肉，隨時可夾入漢堡享用！'
    },

    ['rawsteak'] = {
        label = '生牛扒',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮生牛扒，準備放上煎爐香煎！'
    },

    ['grilledsteak'] = {
        label = '香煎牛扒',
        weight = 1,
        stack = true,
        close = true,
        description = '煎至多汁的牛扒，隨時可夾入漢堡享用！'
    },

    ['rawegg'] = {
        label = '生雞蛋',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮生雞蛋，準備放上煎爐煎熟！'
    },

    ['friedegg'] = {
        label = '煎蛋',
        weight = 1,
        stack = true,
        close = true,
        description = '香煎荷包蛋，隨時可夾入漢堡享用！'
    },

    ['grilledburgerbun'] = {
        label = '烘烤漢堡包',
        weight = 1,
        stack = true,
        close = true,
        description = '烘烤至微焦香脆的漢堡麵包，準備夾入餡料！'
    },

-- 飲品（Drinks）
    ['burgershotcola'] = {
        label = 'eCola 可樂',
        weight = 1,
        stack = true,
        close = true,
        description = 'BurgerShot 出品的冰涼 eCola 可樂。'
    },
    
    ['burgershotcolalight'] = {
        label = '健怡 eCola 可樂',
        weight = 1,
        stack = true,
        close = true,
        description = 'BurgerShot 出品的低糖健怡 eCola 可樂。'
    },

    ['burgershotsprunk'] = {
        label = '雪碧（Sprunk）',
        weight = 1,
        stack = true,
        close = true,
        description = 'BurgerShot 出品的冰涼雪碧汽水。'
    },

    ['burgershotorang_o_tang'] = {
        label = '香橙汽水（Orang O Tang）',
        weight = 1,
        stack = true,
        close = true,
        description = 'BurgerShot 出品的冰涼香橙汽水。'
    },

-- 漢堡成品（Burgers）
    ['classicburger'] = {
        label = '大師經典漢堡',
        weight = 1,
        stack = true,
        close = true,
        description = '充滿你最愛經典風味的招牌漢堡！'
    },

    ['classicburgerspicy'] = {
        label = '大師香辣經典漢堡',
        weight = 1,
        stack = true,
        close = true,
        description = '加入香辣風味的經典招牌漢堡！'
    },

    ['chickenburger'] = {
        label = '豪華脆雞復仇者漢堡',
        weight = 1,
        stack = true,
        close = true,
        description = '夾滿金黃脆雞柳的美味雞堡！'
    },

    ['chickenburgerspicy'] = {
        label = '豪華香辣脆雞復仇者漢堡',
        weight = 1,
        stack = true,
        close = true,
        description = '夾滿香辣脆雞柳的惹味雞堡！'
    },

    ['fishburger'] = {
        label = '深海鮮魚漢堡',
        weight = 1,
        stack = true,
        close = true,
        description = '夾著新鮮現炸脆魚柳的美味魚柳包！'
    },

    ['obeseburger'] = {
        label = '心臟暴擊巨無霸',
        weight = 1,
        stack = true,
        close = true,
        description = '層層疊滿牛肉扒、煙肉、芝士與豐富配料的巨型漢堡，要麼飽到撐、要麼吃到心臟病發！'
    },

    ['steakburger'] = {
        label = '至尊牛扒巨無霸',
        weight = 1,
        stack = true,
        close = true,
        description = '當你想把整塊牛扒夾在兩片麵包中間大口咬下時的最佳選擇——誰還需要餐碟？'
    },

    ['reverseburger'] = {
        label = '反轉無包生菜漢堡',
        weight = 1,
        stack = true,
        close = true,
        description = '打破傳統！用爽脆生菜代替麵包的健康反轉漢堡！'
    },

    ['burgershotsandwich'] = {
        label = '晨光芝士火腿三文治',
        weight = 1,
        stack = true,
        close = true,
        description = '夾滿香濃芝士與火腿的美味三文治！'
    },


-- 其他餐廳物品
    ['cleansponge'] = {
        label = '乾淨海綿',
        weight = 1,
        stack = true,
        close = true,
        description = '乾淨的清潔海綿，隨時可以用來清潔餐桌！'
    },

    ['dirtysponge'] = {
        label = '髒海綿',
        weight = 1,
        stack = true,
        close = true,
        description = '弄髒了的海綿，需要拿去清洗！'
    },

    ['cleancup'] = {
        label = '乾淨水杯',
        weight = 1,
        stack = true,
        close = true,
        description = '乾淨的水杯，隨時可以裝滿飲品！'
    },

    ['dirtycup'] = {
        label = '髒水杯',
        weight = 1,
        stack = true,
        close = true,
        description = '用過的水杯，需要拿去清洗！'
    },

    ['burgershotfoodtray'] = {
        label = '快餐餐盤',
        weight = 1,
        stack = true,
        close = true,
        description = '盛載 BurgerShot 餐點的快餐餐盤。'
    },

    ['burgershotfoodtrayempty'] = {
        label = '空餐盤',
        weight = 1,
        stack = true,
        close = true,
        description = 'BurgerShot 的空快餐餐盤。'
    },
})

insert({	-- FiveCode - UwU 貓咪 Café
-- 其他物品
    ['uwu_cleansponge'] = {
        label = '乾淨海綿',
        weight = 1,
        stack = true,
        close = true,
        description = '乾淨的清潔海綿，隨時可以用來清潔桌面！'
    },

    ['uwu_dirtysponge'] = {
        label = '髒海綿',
        weight = 1,
        stack = true,
        close = true,
        description = '弄髒了的海綿，需要拿去清洗！'
    },

    ['uwu_cleanplate'] = {
        label = '乾淨餐碟',
        weight = 1,
        stack = true,
        close = true,
        description = '用於盛載餐點的乾淨餐碟。'
    },

    ['uwu_dirtyplate'] = {
        label = '髒餐碟',
        weight = 1,
        stack = true,
        close = true,
        description = '用過的髒餐碟，需要清洗。'
    },

    ['uwu_cleancup'] = {
        label = '乾淨咖啡杯',
        weight = 1,
        stack = true,
        close = true,
        description = '乾淨的杯子，隨時可以裝滿美味飲品。'
    },

    ['uwu_dirtycup'] = {
        label = '髒咖啡杯',
        weight = 1,
        stack = true,
        close = true,
        description = '用過的髒杯子，需要清洗。'
    },

-- 盲盒與模型公仔（Mystery Box）
    ['uwu_mysterybox'] = {
        label = 'UwU 貓咪盲盒',
        weight = 1,
        stack = true,
        close = true,
        description = '來自 UwU 貓咪 Café 的驚喜盲盒，裡面藏著各式可愛模型公仔！'
    },

    ['uwu_browncat'] = {
        label = '啡貓模型公仔',
        weight = 1,
        stack = true,
        close = true,
        description = '可愛的啡色貓咪模型公仔，極具收藏價值。'
    },

    ['uwu_redcat'] = {
        label = '紅貓模型公仔',
        weight = 1,
        stack = true,
        close = true,
        description = '稀有的火紅色貓咪模型公仔，造型搶眼。'
    },

    ['uwu_greencat'] = {
        label = '綠貓模型公仔',
        weight = 1,
        stack = true,
        close = true,
        description = '溫順療癒的綠色貓咪模型公仔。'
    },

    ['uwu_yellowcat'] = {
        label = '黃貓模型公仔',
        weight = 1,
        stack = true,
        close = true,
        description = '活潑開朗的亮黃色貓咪模型公仔。'
    },

    ['uwu_purplecat'] = {
        label = '紫貓模型公仔',
        weight = 1,
        stack = true,
        close = true,
        description = '充滿神秘氣息的稀有紫色貓咪模型公仔。'
    },

    ['uwu_bluecat'] = {
        label = '藍貓模型公仔',
        weight = 1,
        stack = true,
        close = true,
        description = '冷靜沉穩的藍色貓咪模型公仔，適合擺設收藏。'
    },

    ['uwu_shinywasabi'] = {
        label = '閃亮山葵模型公仔',
        weight = 1,
        stack = true,
        close = true,
        description = '散發閃亮光澤的特別版山葵模型公仔。'
    },

    ['uwu_master'] = {
        label = '武術宗師模型公仔',
        weight = 1,
        stack = true,
        close = true,
        description = '傳說級武術大師造型的限定公仔。'
    },

    ['uwu_princessrobo'] = {
        label = '機械公主模型公仔',
        weight = 1,
        stack = true,
        close = true,
        description = '充滿未來科技感的機械公主限定模型公仔。'
    },

-- 咖啡機材料與飲品（Coffee Machine）
    ['uwu_expresoshot'] = {
        label = '特濃咖啡（Espresso）',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮萃取的香濃特濃咖啡。'
    },

    ['uwu_milk'] = {
        label = '鮮奶',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮牛奶。'
    },

    ['uwu_steamedmilk'] = {
        label = '熱奶泡（蒸奶）',
        weight = 1,
        stack = true,
        close = true,
        description = '綿密細滑的熱蒸鮮奶。'
    },

    ['uwu_frostedmilk'] = {
        label = '冰奶泡',
        weight = 1,
        stack = true,
        close = true,
        description = '冰涼綿密的鮮奶奶泡。'
    },

    ['uwu_vanillasyrup'] = {
        label = '雲呢拿糖漿',
        weight = 1,
        stack = true,
        close = true,
        description = '香甜順滑的雲呢拿風味糖漿。'
    },

    ['uwu_cinnamon'] = {
        label = '肉桂粉',
        weight = 1,
        stack = true,
        close = true,
        description = '香氣撲鼻的肉桂香料。'
    },

    ['uwu_caramelsyrup'] = {
        label = '焦糖糖漿',
        weight = 1,
        stack = true,
        close = true,
        description = '香濃醇厚的焦糖風味糖漿。'
    },

    ['uwu_caramelsauce'] = {
        label = '焦糖醬',
        weight = 1,
        stack = true,
        close = true,
        description = '濃郁誘人的香甜焦糖淋醬。'
    },

    ['uwu_chocolate'] = {
        label = '朱古力',
        weight = 1,
        stack = true,
        close = true,
        description = '絲滑濃郁的優質朱古力。'
    },

    ['uwu_peppermintextract'] = {
        label = '薄荷精華',
        weight = 1,
        stack = true,
        close = true,
        description = '清涼提神的天然薄荷萃取液。'
    },

    ['uwu_brownsugar'] = {
        label = '黑糖',
        weight = 1,
        stack = true,
        close = true,
        description = '香甜的天然黑糖結晶。'
    },

    ['uwu_cocoapowder'] = {
        label = '可可粉',
        weight = 1,
        stack = true,
        close = true,
        description = '香醇濃郁的純可可粉。'
    },

    ['uwu_whiskersvanillalatte'] = {
        label = '貓鬚雲呢拿鮮奶咖啡',
        weight = 1,
        stack = true,
        close = true,
        description = '香濃幼滑的雲呢拿鮮奶咖啡，配上順口濃縮咖啡基底，最適合悠閒午後享用。'
    },

    ['uwu_purrfectcaramelmacchiato'] = {
        label = '喵星焦糖瑪奇朵',
        weight = 1,
        stack = true,
        close = true,
        description = '綿密奶泡交織香甜焦糖與香濃咖啡，帶來完美享受。'
    },

    ['uwu_meowchamintmocha'] = {
        label = '喵茶薄荷朱古力咖啡',
        weight = 1,
        stack = true,
        close = true,
        description = '清新薄荷融合濃郁朱古力與特濃咖啡，口感層次豐富。'
    },

    ['uwu_kittyscreamycappuccino'] = {
        label = '貓咪綿滑泡沫咖啡（Cappuccino）',
        weight = 1,
        stack = true,
        close = true,
        description = '擁有格外綿密奶泡的經典泡沫咖啡，咖啡愛好者必試。'
    },

    ['uwu_uwucatcafehotchocolate'] = {
        label = '貓爪濃情熱朱古力',
        weight = 1,
        stack = true,
        close = true,
        description = '溫暖療癒的香濃熱朱古力，伴隨可愛貓爪造型拉花。'
    },

-- 攪拌機材料（Mixer）
    ['uwu_flour'] = {
        label = '麵粉',
        weight = 1,
        stack = true,
        close = true,
        description = '烘焙必備的優質麵粉，適合製作順滑麵糰。'
    },

    ['uwu_rawegg'] = {
        label = '生雞蛋',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮雞蛋，可加入麵糰中攪拌。'
    },

    ['uwu_butter'] = {
        label = '牛油',
        weight = 1,
        stack = true,
        close = true,
        description = '香濃幼滑的烘焙專用牛油。'
    },

    ['uwu_yeast'] = {
        label = '酵母粉',
        weight = 1,
        stack = true,
        close = true,
        description = '幫助麵糰完美發酵膨脹的活性酵母。'
    },

    ['uwu_strawberry'] = {
        label = '士多啤梨',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮香甜的士多啤梨。'
    },

    ['uwu_blueberry'] = {
        label = '藍莓',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮飽滿的香甜藍莓。'
    },

    ['uwu_normaldough'] = {
        label = '原味麵糰',
        weight = 1,
        stack = true,
        close = true,
        description = '基礎原味麵糰，可送入焗爐製作成各式美味糕點。'
    },

    ['uwu_chocolatedough'] = {
        label = '朱古力麵糰',
        weight = 1,
        stack = true,
        close = true,
        description = '香濃朱古力麵糰，適合烘焙美味朱古力曲奇與蛋糕。'
    },

    ['uwu_cupcakedough'] = {
        label = '紙杯蛋糕麵糊',
        weight = 1,
        stack = true,
        close = true,
        description = '鬆軟綿密的紙杯蛋糕麵糊，準備送入焗爐烘焙。'
    },

-- 焗爐甜品（Oven）
    ['uwu_chocopurrfectioncake'] = {
        label = '喵喵濃情朱古力蛋糕',
        weight = 1,
        stack = true,
        close = true,
        description = '專為朱古力愛好者烘焙的香濃朱古力蛋糕。'
    },

    ['uwu_kittenscloudpancakes'] = {
        label = '小貓雲朵班戟',
        weight = 1,
        stack = true,
        close = true,
        description = '入口即化的鬆軟班戟，飾有可愛小貓造型裝飾。'
    },

    ['uwu_strawberrymeowdelight'] = {
        label = '士多啤梨喵喵班戟',
        weight = 1,
        stack = true,
        close = true,
        description = '鬆軟士多啤梨班戟配上可愛貓咪糖霜裝飾，甜品控最愛。'
    },

    ['uwu_mintypawprintcupcake'] = {
        label = '薄荷貓掌紙杯蛋糕',
        weight = 1,
        stack = true,
        close = true,
        description = '清新薄荷口味紙杯蛋糕，點綴可愛貓掌印裝飾。'
    },

    ['uwu_caramelkittycrunch'] = {
        label = '焦糖脆脆小貓紙杯蛋糕',
        weight = 1,
        stack = true,
        close = true,
        description = '濃郁焦糖紙杯蛋糕配上香脆拖肥碎、焦糖醬及可愛貓耳裝飾。'
    },

    ['uwu_vanillameowtasticake'] = {
        label = '雲呢拿喵趣忌廉蛋糕',
        weight = 1,
        stack = true,
        close = true,
        description = '層層夾滿幼滑雲呢拿牛油忌廉的蛋糕，飾有粉嫩貓鬚與翻糖貓耳。'
    },	

    ['uwu_espressopawscupcake'] = {
        label = '特濃咖啡貓爪紙杯蛋糕',
        weight = 1,
        stack = true,
        close = true,
        description = '香濃咖啡紙杯蛋糕配上幼滑咖啡糖霜、可可粉及可愛貓爪裝飾。'
    },

    ['uwu_cinnamonwhiskerdelight'] = {
        label = '肉桂貓鬚紙杯蛋糕',
        weight = 1,
        stack = true,
        close = true,
        description = '暖心肉桂紙杯蛋糕配上綿密肉桂糖霜、肉桂糖粉及俏皮貓鬚造型。'
    },

-- 爐頭熱食（Stove）
    ['uwu_noodles'] = {
        label = '麵條',
        weight = 1,
        stack = true,
        close = true,
        description = '準備下鍋烹調的麵條。'
    },

    ['uwu_rawsteak'] = {
        label = '生牛扒',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮生牛扒，準備下鍋香煎。'
    },

    ['uwu_grilledsteak'] = {
        label = '香煎牛扒',
        weight = 1,
        stack = true,
        close = true,
        description = '煎得鮮嫩多汁的牛扒，隨時可以享用。'
    },

    ['uwu_friedegg'] = {
        label = '煎蛋',
        weight = 1,
        stack = true,
        close = true,
        description = '香煎太陽蛋，可搭配主食享用。'
    },

    ['uwu_rawonion'] = {
        label = '洋蔥',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮洋蔥，準備切絲或切片。'
    },

    ['uwu_slicedonion'] = {
        label = '洋蔥絲',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的洋蔥絲，隨時可下鍋烹調佳餚。'
    },

    ['uwu_rice'] = {
        label = '白米',
        weight = 1,
        stack = true,
        close = true,
        description = '烹調用的優質白米。'
    },

    ['uwu_friedrice'] = {
        label = '招牌炒飯',
        weight = 1,
        stack = true,
        close = true,
        description = '粒粒分明、鑊氣十足的絕品炒飯。'
    },

    ['uwu_steakeggbreakfastspecial'] = {
        label = '牛扒煎蛋精選早餐',
        weight = 1,
        stack = true,
        close = true,
        description = '香煎牛扒、煎蛋與焦糖洋蔥的經典組合，份量十足的豐盛早餐！'
    },

    ['uwu_caramelizedonionsteakstirfry'] = {
        label = '焦糖洋蔥炒牛柳',
        weight = 1,
        stack = true,
        close = true,
        description = '鮮嫩牛扒切條配焦糖洋蔥大火快炒，鹹香中帶一絲清甜。'
    },

    ['uwu_chilliramen'] = {
        label = '辛辣地獄拉麵',
        weight = 1,
        stack = true,
        close = true,
        description = '香辣惹味的日式拉麵，保證讓你吃得滿頭大汗。'
    },

    ['uwu_kungpao'] = {
        label = '宮保雞丁',
        weight = 1,
        stack = true,
        close = true,
        description = '酸甜微辣、層次豐富的中式經典名菜，每一口都令人回味。'
    },

    ['uwu_shanghaisoyscallionnoodles'] = {
        label = '上海蔥油拌麵',
        weight = 1,
        stack = true,
        close = true,
        description = '蔥香四溢、醬汁濃郁的上海招牌蔥油拌麵。'
    },

    ['uwu_rawchillipepper'] = {
        label = '辣椒',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮辣椒，準備切片。'
    },

    ['uwu_slicedchillipepper'] = {
        label = '辣椒片',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的辣椒片，隨時可入饌調味。'
    },

    ['uwu_rawcucumber'] = {
        label = '青瓜',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮青瓜，準備切片！'
    },

    ['uwu_slicedcucumber'] = {
        label = '青瓜片',
        weight = 1,
        stack = true,
        close = true,
        description = '切好的爽脆青瓜片！'
    },

    ['uwu_rawchicken'] = {
        label = '生雞肉',
        weight = 1,
        stack = true,
        close = true,
        description = '新鮮生雞肉。'
    },

    ['uwu_grilledchicken'] = {
        label = '香煎雞扒',
        weight = 1,
        stack = true,
        close = true,
        description = '煎至金黃香嫩的雞扒。'
    },

    ['uwu_grilledchickenpiece'] = {
        label = '香煎雞肉粒',
        weight = 1,
        stack = true,
        close = true,
        description = '切件香煎雞肉粒。'
    },
})

insert({	-- FiveCode - Unicorn 夜店工作
	-- 其他用品與香煙
	['vu_ticket'] = {
		label = 'Vanilla Unicorn 入場券',
		weight = 1,
		stack = true,
		close = true,
		description = 'Vanilla Unicorn 夜店入場券。'
	},

	['vu_cleansponge'] = {
		label = '乾淨海綿',
		weight = 1,
		stack = true,
		close = true,
		description = '乾淨的清潔海綿，隨時可用來清潔桌面！'
	},

	['vu_dirtysponge'] = {
		label = '髒海綿',
		weight = 1,
		stack = true,
		close = true,
		description = '弄髒了的海綿，需要拿去清洗！'
	},

	['vu_redwoodcigpack'] = {
		label = '紅木牌香煙（整包）',
		weight = 1,
		stack = true,
		close = true,
		description = '一包高級紅木牌香煙，好麥塢名流的最愛品牌。'
	},

	['vu_redwoodcigsingle'] = {
		label = '紅木牌香煙（單支）',
		weight = 1,
		stack = true,
		close = true,
		description = '一支口感順滑的紅木牌香煙。'
	},

	['vu_estanciacigpack'] = {
		label = '莊園牌香煙（整包）',
		weight = 1,
		stack = true,
		close = true,
		description = '一包莊園牌香煙，以濃郁醇厚的煙草風味聞名。'
	},

	['vu_estanciacigsingle'] = {
		label = '莊園牌香煙（單支）',
		weight = 1,
		stack = true,
		close = true,
		description = '一支煙味濃烈的莊園牌香煙，適合追求強烈口感的人士。'
	},

	['vu_sugar'] = {
		label = '砂糖',
		weight = 1,
		stack = true,
		close = true,
		description = '調酒用砂糖。'
	},

	['vu_ice'] = {
		label = '冰塊',
		weight = 1,
		stack = true,
		close = true,
		description = '用來冰鎮飲品的冰塊！'
	},

	['vu_soda'] = {
		label = '梳打水',
		weight = 1,
		stack = true,
		close = true,
		description = '調酒用梳打水。'
	},

	['vu_juice'] = {
		label = '果汁',
		weight = 1,
		stack = true,
		close = true,
		description = '調酒用果汁。'
	},

	['vu_coconutcream'] = {
		label = '椰漿',
		weight = 1,
		stack = true,
		close = true,
		description = '香濃椰漿。'
	},

	-- 小食（Snacks）
	['vu_cleanbowl'] = {
		label = '乾淨小食碗',
		weight = 1,
		stack = true,
		close = true,
		description = '用於盛載小食的乾淨碗。'
	},

	['vu_dirtybowl'] = {
		label = '髒小食碗',
		weight = 1,
		stack = true,
		close = true,
		description = '用過的小食碗，需要清洗。'
	},

	['vu_beanbowl'] = {
		label = '香脆豆子碗',
		weight = 1,
		stack = true,
		close = true,
		description = '隨時可以享用的佐酒豆子小食。'
	},

	['vu_nutbowl'] = {
		label = '雜錦果仁碗',
		weight = 1,
		stack = true,
		close = true,
		description = '隨時可以享用的雜錦果仁小食。'
	},

	['vu_beans'] = {
		label = '佐酒豆子',
		weight = 1,
		stack = true,
		close = true,
		description = '可盛入乾淨碗中的佐酒豆子。'
	},

	['vu_nuts'] = {
		label = '果仁',
		weight = 1,
		stack = true,
		close = true,
		description = '可盛入乾淨碗中的佐酒果仁。'
	},

	-- 酒杯與飲品（Drinks）
	['vu_cleanshortglass'] = {
		label = '乾淨矮身杯',
		weight = 1,
		stack = true,
		close = true,
		description = '乾淨的矮身酒杯，隨時可以盛載自選飲品。'
	},

	['vu_dirtyshortglass'] = {
		label = '髒矮身杯',
		weight = 1,
		stack = true,
		close = true,
		description = '用過的矮身酒杯，需要清洗。'
	},

	['vu_cleantallglass'] = {
		label = '乾淨高身杯',
		weight = 1,
		stack = true,
		close = true,
		description = '乾淨的高身酒杯，隨時可以盛載自選飲品。'
	},

	['vu_dirtytallglass'] = {
		label = '髒高身杯',
		weight = 1,
		stack = true,
		close = true,
		description = '用過的高身酒杯，需要清洗。'
	},

	['vu_cleancocktailglass'] = {
		label = '乾淨雞尾酒杯',
		weight = 1,
		stack = true,
		close = true,
		description = '乾淨的雞尾酒杯，隨時可以盛載特調雞尾酒。'
	},

	['vu_dirtycocktailglass'] = {
		label = '髒雞尾酒杯',
		weight = 1,
		stack = true,
		close = true,
		description = '用過的雞尾酒杯，需要清洗。'
	},

	['vu_rhumbottle'] = {
		label = '蘭姆酒（整瓶）',
		weight = 1,
		stack = true,
		close = true,
		description = '一瓶上等蘭姆酒。'
	},
		
	['vu_tequilabottle'] = {
		label = '龍舌蘭酒（整瓶）',
		weight = 1,
		stack = true,
		close = true,
		description = '一瓶高級龍舌蘭酒。'
	},
		
	['vu_vodkabottle'] = {
		label = '伏特加（整瓶）',
		weight = 1,
		stack = true,
		close = true,
		description = '一瓶清冽純淨的伏特加，適合調酒或純飲。'
	},
		
	['vu_whiskeybottle'] = {
		label = '威士忌（整瓶）',
		weight = 1,
		stack = true,
		close = true,
		description = '一瓶陳年醇厚威士忌。'
	},

	['vu_mojitodrink'] = {
		label = '莫希托雞尾酒（Mojito）',
		weight = 1,
		stack = true,
		close = true,
		description = '以蘭姆酒、薄荷葉、青檸、砂糖及梳打水調製的清爽雞尾酒。'
	},

	['vu_pinacoladadrink'] = {
		label = '椰林飄香（Piña Colada）',
		weight = 1,
		stack = true,
		close = true,
		description = '蘭姆酒、菠蘿汁與香濃椰漿加冰搖勻的熱帶風情雞尾酒。'
	},

	['vu_tequilasunrisedrink'] = {
		label = '龍舌蘭日出（Tequila Sunrise）',
		weight = 1,
		stack = true,
		close = true,
		description = '色彩鮮艷的龍舌蘭特調，融合柑橘果汁與香甜果漿。'
	},

	['vu_unicornblissdrink'] = {
		label = '獨角獸之夢（Unicorn Bliss）',
		weight = 1,
		stack = true,
		close = true,
		description = '口感順滑的伏特加特調，帶有清新柑橘與檸檬果香。'
	},

	['vu_lossantosdrink'] = {
		label = '洛聖都特調（Los Santos）',
		weight = 1,
		stack = true,
		close = true,
		description = '順滑伏特加基底搭配柑橘果汁與淡淡檸檬清香。'
	},

	['vu_paletobaydrink'] = {
		label = '佩立托灣特調（Paleto Bay）',
		weight = 1,
		stack = true,
		close = true,
		description = '順滑伏特加基底搭配柑橘果汁與淡淡檸檬清香。'
	},
		
	['vu_rhumdrink'] = {
		label = '蘭姆酒（杯裝）',
		weight = 1,
		stack = true,
		close = true,
		description = '以優質蘭姆酒調製的香醇飲品。'
	},
		
	['vu_tequiladrink'] = {
		label = '龍舌蘭烈酒（杯裝）',
		weight = 1,
		stack = true,
		close = true,
		description = '濃烈而順口的龍舌蘭烈酒。'
	},
		
	['vu_whiskeydrink'] = {
		label = '威士忌（杯裝）',
		weight = 1,
		stack = true,
		close = true,
		description = '一杯陳年威士忌，適合細意品嚐。'
	},

	['vu_vodkadrink'] = {
		label = '伏特加（杯裝）',
		weight = 1,
		stack = true,
		close = true,
		description = '清澈純淨的伏特加，冰鎮後飲用最佳。'
	},
		
	['vu_lossantos'] = {
		label = '洛聖都經典（Los Santos）',
		weight = 1,
		stack = true,
		close = true,
		description = '以洛聖都城市為靈感的招牌特調雞尾酒，風味獨特。'
	},
		
	['vu_paletobay'] = {
		label = '佩立托灣海風（Paleto Bay）',
		weight = 1,
		stack = true,
		close = true,
		description = '充滿海濱風情的順滑熱帶特調飲品。'
	},	


	-- 備料台切片食材
	['vu_rawlime'] = {
		label = '新鮮青檸',
		weight = 1,
		stack = true,
		close = true,
		description = '新鮮青檸。'
	},

	['vu_slicedlime'] = {
		label = '青檸片',
		weight = 1,
		stack = true,
		close = true,
		description = '切好的青檸片。'
	},

	['vu_rawlemon'] = {
		label = '新鮮檸檬',
		weight = 1,
		stack = true,
		close = true,
		description = '新鮮檸檬。'
	},

	['vu_slicedlemon'] = {
		label = '檸檬片',
		weight = 1,
		stack = true,
		close = true,
		description = '切好的檸檬片。'
	},

	['vu_rawstrawberry'] = {
		label = '新鮮士多啤梨',
		weight = 1,
		stack = true,
		close = true,
		description = '新鮮士多啤梨。'
	},

	['vu_slicedstrawberry'] = {
		label = '士多啤梨片',
		weight = 1,
		stack = true,
		close = true,
		description = '切好的士多啤梨片。'
	},

	['vu_rawmint'] = {
		label = '新鮮薄荷葉',
		weight = 1,
		stack = true,
		close = true,
		description = '新鮮薄荷葉。'
	},

	['vu_slicedmint'] = {
		label = '切碎薄荷葉',
		weight = 1,
		stack = true,
		close = true,
		description = '切好的薄荷葉。'
	},
})

insert({	-- 便利店食物飲品及工具
    ['sludgie'] = {
        name = 'sludgie',
        label = '思樂冰（Sludgie）',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = '你喝了一杯冰涼飲品解渴'
        }
    },
    ['ecola_light'] = {
        name = 'ecola_light',
        label = '健怡 eCola',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = '你喝了一罐飲品解渴'
        }
    },
    ['ecola'] = {
        name = 'ecola',
        label = 'eCola 可樂',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = '你喝了一罐飲品解渴'
        }
    },
    ['coffee'] = {
        name = 'coffee',
        label = '咖啡',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = '你喝了一杯香濃咖啡'
        }
    },
    ['fries'] = {
        name = 'fries',
        label = '炸薯條',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_food_cb_chips', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 2500,
            notification = '你吃了一份炸薯條'
        }
    },
    ['pizza_ham'] = {
        name = 'pizza_ham',
        label = '火腿薄餅（Pizza）',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_food_cb_chips', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 2500,
            notification = '你吃了一件火腿薄餅'
        }
    },
    ['chips'] = {
        name = 'chips',
        label = '薯片',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_food_cb_chips', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 2500,
            notification = '你吃了一包薯片'
        }
    },
    ['donut'] = {
        name = 'donut',
        label = '冬甩（甜甜圈）',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_amb_donut', pos = vec3(0.02, 0.02, -0.02), rot = vec3(0.0, 0.0, 0.0) },
            usetime = 2500,
            notification = '你吃了一個冬甩'
        }
    },
    ['wire_cutter'] = {
        name = 'wire_cutter',
        label = '剪線鉗',
        weight = 100,
        stack = true,
        consume = 0,
        close = true,
    },
    ['cigarrete'] = {
        name = 'cigarrete',
        label = '香煙',
        weight = 100,
        stack = true,
        consume = 0,
        close = true,
    },
    ['screwdriver'] = {
        name = 'screwdriver',
        label = '螺絲批',
        weight = 100,
        stack = true,
        consume = 0,
        close = true,
    },
})

insert({	-- JG mechanic 車房改裝與維修零件
	-- 保養維修零件（Servicing Items）
	["engine_oil"] = {
		label = "機油",
		weight = 1000,
	},
	["tyre_replacement"] = {
		label = "輪胎更換套裝",
		weight = 1000,
	},
	["clutch_replacement"] = {
		label = "離合器更換套裝（極力子）",
		weight = 1000,
	},
	["air_filter"] = {
		label = "空氣濾清器（風格）",
		weight = 100,
	},
	["spark_plug"] = {
		label = "火嘴（火花塞）",
		weight = 1000,
	},
	["brakepad_replacement"] = {
		label = "煞車皮更換套裝",
		weight = 1000,
	},
	["suspension_parts"] = {
		label = "懸掛系統零件",
		weight = 1000,
	},
	-- 引擎總成（Engine Items）
	["i4_engine"] = {
		label = "直列四缸（I4）引擎",
		weight = 1000,
	},
	["v6_engine"] = {
		label = "V6 引擎",
		weight = 1000,
	},
	["v8_engine"] = {
		label = "V8 引擎",
		weight = 1000,
	},
	["v12_engine"] = {
		label = "V12 引擎",
		weight = 1000,
	},
	["turbocharger"] = {
		label = "渦輪增壓器（Turbo）",
		weight = 1000,
	},
	-- 電動車動力組件（Electric Engines）
	["ev_motor"] = {
		label = "電動摩打",
		weight = 1000,
	},
	["ev_battery"] = {
		label = "電動車電池",
		weight = 1000,
	},
	["ev_coolant"] = {
		label = "電動車冷卻液",
		weight = 1000,
	},
	-- 傳動驅動系統（Drivetrain Items）
	["awd_drivetrain"] = {
		label = "四輪驅動（AWD）系統",
		weight = 1000,
	},
	["rwd_drivetrain"] = {
		label = "後輪驅動（RWD）系統",
		weight = 1000,
	},
	["fwd_drivetrain"] = {
		label = "前輪驅動（FWD）系統",
		weight = 1000,
	},
	-- 性能改裝套件（Tuning Items）
	["slick_tyres"] = {
		label = "光頭胎",
		weight = 1000,
	},
	["semi_slick_tyres"] = {
		label = "半熱熔胎",
		weight = 1000,
	},
	["offroad_tyres"] = {
		label = "越野胎",
		weight = 1000,
	},
	["drift_tuning_kit"] = {
		label = "飄移調校套裝",
		weight = 1000,
	},
	["ceramic_brakes"] = {
		label = "陶瓷煞車系統",
		weight = 1000,
	},
	-- 外觀改裝套件（Cosmetic Items）
	["lighting_controller"] = {
		label = "燈光控制器",
		weight = 100,
		client = {
		event = "jg-mechanic:client:show-lighting-controller",
		}
	},
	["stancing_kit"] = {
		label = "低趴調校套裝",
		weight = 100,
		client = {
		event = "jg-mechanic:client:show-stancer-kit",
		}
	},
	["cosmetic_part"] = {
		label = "車身包圍外觀零件",
		weight = 100,
	},
	["respray_kit"] = {
		label = "車身噴漆套裝",
		weight = 1000,
	},
	["vehicle_wheels"] = {
		label = "輪圈套裝",
		weight = 1000,
	},
	["tyre_smoke_kit"] = {
		label = "燒胎煙霧改裝套件",
		weight = 1000,
	},
	["bulletproof_tyres"] = {
		label = "防彈輪胎",
		weight = 1000,
	},
	["extras_kit"] = {
		label = "額外配件套裝",
		weight = 1000,
	},
	-- 氮氣加速與清潔維修工具
	["nitrous_bottle"] = {
		label = "氮氣瓶（NOS）",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:use-nitrous-bottle",
		}
	},
	["empty_nitrous_bottle"] = {
		label = "空氮氣瓶",
		weight = 1000,
	},
	["nitrous_install_kit"] = {
		label = "氮氣系統安裝套裝",
		weight = 1000,
	},
	["cleaning_kit"] = {
		label = "車輛清潔套裝",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:clean-vehicle",
		}
	},
	["repair_kit"] = {
		label = "車輛維修工具箱",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:repair-vehicle",
		}
	},
	["duct_tape"] = {
		label = "強力牛皮膠紙",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:use-duct-tape",
		}
	},
	-- 通用性能升級零件
	["performance_part"] = {
		label = "性能改裝零件",
		weight = 1000,
	},
	-- 車房技工平板電腦
	["mechanic_tablet"] = {
		label = "車房技工平板電腦",
		weight = 1000,
		client = {
		event = "jg-mechanic:client:use-tablet",
		}
	},
	-- 波箱
	["manual_gearbox"] = {
		label = "手動波箱",
		weight = 1000,
	},
})

--[[
insert({	-- okokPhone（已停用）
	['okokphone'] = {
			label = '手提電話',
			weight = 190,
			stack = false,
			consume = 0,
			server = {
					export = "okokPhone.oxOpenPhone"
			}
	},
	['simcard'] = {
				label = 'SIM 電話卡',
				weight = 1,
				stack = false,
				consume = 0,
				server = {
					export = "okokPhone.oxUseSimCard"
				}
		},
})
]]--

insert({	-- okokGarage
	['keys'] = {
		label = '車匙',
		weight = 1,
		stack = false,
		close = false,
		description = "車輛鑰匙",
		server = {
			export = 'okokGarage.lockvehicle',
		},
	},
})

insert({	-- quasarHousing 房屋系統
	['housekey'] = {
		label = '住宅門匙',
		weight = 100,
		stack = false,
		close = true,
		description = '你的住宅大門鑰匙，請妥善保管切勿遺失。',
		server = { export = 'qs-housing.useHouseKey' },
	},
	['lockpick'] = { label = '開鎖工具', weight = 100, stack = true },
	['police_stormram'] = { label = '警用破門鎚', weight = 800, stack = false },
	['pet_food'] = { label = '寵物糧食', weight = 200, stack = true },
	['pet_water'] = { label = '寵物飲用水', weight = 200, stack = true },
})

insert({	-- lb-tablet 平板電腦
	["tablet"] = {
		label = "平板電腦",
		weight = 840,
		stack = false,
		consume = 0,
		client = {
			event = "tablet:toggleOpen"
		}
	},
})

insert({	-- mm_radio 無線電對講機
	['radio'] = {
		label = '無線電對講機',
		weight = 1000,
		allowArmed = true,
		consume = 0,
		client = {
			event = 'mm_radio:client:use'
		}
	},

	['jammer'] = {
		label = '訊號干擾器',
		weight = 10000,
		allowArmed = true,
		client = {
			event = 'mm_radio:client:usejammer'
		}
	},

	['radiocell'] = {
		label = 'AAA 乾電池',
		weight = 1000,
		stack = true,
		allowArmed = true,
		client = {
			event = 'mm_radio:client:recharge'
		}
	}
})


return items