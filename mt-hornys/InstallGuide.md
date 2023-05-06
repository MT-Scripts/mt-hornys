
- Add to item.lua at qb-core
```
	-- mt-hornys
	["burger_meat"] = {["name"] = "burger_meat", 					["label"] = "Burger Meat", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "burger_meat.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["burger_raw_meat"] = {["name"] = "burger_raw_meat", 					["label"] = "Raw Burger Meat", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "burger_raw_meat.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["burger_eggs"] = {["name"] = "burger_eggs", 					["label"] = "Burger Eggs", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "burger_eggs.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["chicken_eggs"] = {["name"] = "chicken_eggs", 					["label"] = "Chicken Eggs", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "chicken_eggs.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_potatos"] = {["name"] = "hornys_potatos", 					["label"] = "Hornys Potatos", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_potatos.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["raw_potatos"] = {["name"] = "raw_potatos", 					["label"] = "Raw Potatos", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "raw_potatos.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_onion_rings"] = {["name"] = "hornys_onion_rings", 					["label"] = "Hornys Onion Rings", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_onion_rings.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["raw_onion_rings"] = {["name"] = "raw_onion_rings", 					["label"] = "Raw Onion Rings", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "raw_onion_rings.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_chicken_wings"] = {["name"] = "hornys_chicken_wings", 					["label"] = "Hornys Chicken Wings", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_chicken_wings.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["raw_chicken_wings"] = {["name"] = "raw_chicken_wings", 					["label"] = "Raw Chicken Wings", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "raw_chicken_wings.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_cheeseburger"] = {["name"] = "hornys_cheeseburger", 					["label"] = "Hornys Cheeseburger", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_cheeseburger.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["burger_bread"] = {["name"] = "burger_bread", 					["label"] = "Burger Bread", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "burger_bread.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["cheese"] = {["name"] = "cheese", 					["label"] = "Cheese", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "cheese.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_sassyburger"] = {["name"] = "hornys_sassyburger", 					["label"] = "Hornys Sassyburger", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_sassyburger.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["onion"] = {["name"] = "onion", 					["label"] = "Onion", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "onion.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["tomato"] = {["name"] = "tomato", 					["label"] = "Tomato", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "tomato.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["lettuce"] = {["name"] = "lettuce", 					["label"] = "Lettuce", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "lettuce.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_jungleburger"] = {["name"] = "hornys_jungleburger", 					["label"] = "Hornys Jungleburger", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_jungleburger.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_magicburger"] = {["name"] = "hornys_magicburger", 					["label"] = "Hornys Magicburger", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_magicburger.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["pickles"] = {["name"] = "pickles", 					["label"] = "Pickles", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "pickles.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_milkshake"] = {["name"] = "hornys_milkshake", 					["label"] = "Hornys Milkshake", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_milkshake.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_cola"] = {["name"] = "hornys_cola", 					["label"] = "Hornys Cola", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_cola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_sprunk"] = {["name"] = "hornys_sprunk", 					["label"] = "Hornys Sprunk", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_sprunk.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_juice"] = {["name"] = "hornys_juice", 					["label"] = "Hornys Juice", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "hornys_juice.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_cola_recipe"] = {["name"] = "hornys_cola_recipe", 					["label"] = "Hornys Cola Recipe", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "drink_recipe.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_sprunk_recipe"] = {["name"] = "hornys_sprunk_recipe", 					["label"] = "Hornys Sprunk Recipe", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "drink_recipe.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hornys_juice_recipe"] = {["name"] = "hornys_juice_recipe", 					["label"] = "Hornys Juice Recipe", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "drink_recipe.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["milk"] = {["name"] = "milk", 					["label"] = "Milk", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "milk.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["strawberry"] = {["name"] = "strawberry", 					["label"] = "Strawberry", 				["weight"] = 500, 		["type"] = "item", 			["image"] = "strawberry.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
```

- Add to jobs.lua at qb-core
```
    ['hornys'] = {
		label = 'Hornys',
        type = "hornys",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
```

- Add images from images page to qb-inventory/html/images