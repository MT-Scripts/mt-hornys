Config = Config or {}

Config.QBCoreName = 'qb-core'
Config.QBTargetName = 'qb-target'
Config.QBMenuName = 'qb-menu'
Config.QBInventoryName = 'qb-inventory'
Config.DebugPoly = false

Config.BigStash = { Slots = 300, Weight = 4000000 }
Config.MidStash = { Slots = 100, Weight = 1000000 }
Config.TrayStash = { Slots = 10, Weight = 10000 }

Config.MakingFoodTime = 5000

Config.GrillItems = {
    [1] = { 
        ItemName = 'burger_meat', 
        NeededItems = { 
            [1] = { ItemName = 'burger_raw_meat', NeededAmount = 1 },
        } 
    },
    [2] = { 
        ItemName = 'burger_eggs', 
        NeededItems = { 
            [1] = { ItemName = 'chicken_eggs', NeededAmount = 1 },
        } 
    },
}

Config.FrieItems = {
    [1] = { 
        ItemName = 'hornys_potatos', 
        NeededItems = { 
            [1] = { ItemName = 'raw_potatos', NeededAmount = 2 },
        } 
    },
    [2] = { 
        ItemName = 'hornys_onion_rings', 
        NeededItems = { 
            [1] = { ItemName = 'raw_onion_rings', NeededAmount = 1 },
        } 
    },
    [3] = { 
        ItemName = 'hornys_chicken_wings', 
        NeededItems = { 
            [1] = { ItemName = 'raw_chicken_wings', NeededAmount = 1 },
        } 
    },
}

Config.MenusItems = {
    [1] = { 
        ItemName = 'hornys_cheeseburger', 
        NeededItems = { 
            [1] = { ItemName = 'burger_bread', NeededAmount = 1 },
            [2] = { ItemName = 'burger_meat', NeededAmount = 1 },
            [3] = { ItemName = 'cheese', NeededAmount = 1 },
        } 
    },
    [2] = { 
        ItemName = 'hornys_sassyburger', 
        NeededItems = { 
            [1] = { ItemName = 'burger_bread', NeededAmount = 1 },
            [2] = { ItemName = 'burger_meat', NeededAmount = 2 },
            [3] = { ItemName = 'cheese', NeededAmount = 2 },
            [4] = { ItemName = 'onion', NeededAmount = 1 },
            [5] = { ItemName = 'tomato', NeededAmount = 1 },
            [6] = { ItemName = 'lettuce', NeededAmount = 1 },
        } 
    },
    [3] = { 
        ItemName = 'hornys_jungleburger', 
        NeededItems = { 
            [1] = { ItemName = 'burger_bread', NeededAmount = 1 },
            [2] = { ItemName = 'burger_meat', NeededAmount = 2 },
            [3] = { ItemName = 'cheese', NeededAmount = 2 },
            [4] = { ItemName = 'onion', NeededAmount = 2 },
            [5] = { ItemName = 'tomato', NeededAmount = 2 },
            [6] = { ItemName = 'lettuce', NeededAmount = 2 },
        } 
    },
    [4] = { 
        ItemName = 'hornys_magicburger', 
        NeededItems = { 
            [1] = { ItemName = 'burger_bread', NeededAmount = 1 },
            [2] = { ItemName = 'burger_meat', NeededAmount = 2 },
            [3] = { ItemName = 'cheese', NeededAmount = 2 },
            [4] = { ItemName = 'pickles', NeededAmount = 2 },
            [5] = { ItemName = 'tomato', NeededAmount = 2 },
            [6] = { ItemName = 'lettuce', NeededAmount = 2 },
        } 
    },
}

Config.DrinkItems = {
    [1] = { 
        ItemName = 'hornys_milkshake', 
        NeededItems = { 
            [1] = { ItemName = 'milk', NeededAmount = 2 },
            [2] = { ItemName = 'strawberry', NeededAmount = 1 },
        } 
    },
    [2] = { 
        ItemName = 'hornys_cola', 
        NeededItems = { 
            [1] = { ItemName = 'hornys_cola_recipe', NeededAmount = 1 },
            [2] = { ItemName = 'water_bottle', NeededAmount = 2 },
        } 
    },
    [3] = { 
        ItemName = 'hornys_sprunk', 
        NeededItems = { 
            [1] = { ItemName = 'hornys_sprunk_recipe', NeededAmount = 1 },
            [2] = { ItemName = 'water_bottle', NeededAmount = 2 },
        } 
    },
    [4] = { 
        ItemName = 'hornys_juice', 
        NeededItems = { 
            [1] = { ItemName = 'hornys_juice_recipe', NeededAmount = 1 },
            [2] = { ItemName = 'water_bottle', NeededAmount = 2 },
        } 
    },
}

Config.Consumeables = {
    [1] = { ItemName = 'hornys_potatos', Amount = 20, Type = 'Eat', Prop = 'prop_food_bs_chips' },
    [2] = { ItemName = 'hornys_onion_rings', Amount = 20, Type = 'Eat', Prop = 'prop_food_bs_chips' },
    [3] = { ItemName = 'hornys_chicken_wings', Amount = 20, Type = 'Eat', Prop = 'prop_food_bs_chips' },
    [4] = { ItemName = 'hornys_cheeseburger', Amount = 50, Type = 'Eat', Prop = 'prop_cs_burger_01' },
    [5] = { ItemName = 'hornys_sassyburger', Amount = 50, Type = 'Eat', Prop = 'prop_cs_burger_01' },
    [6] = { ItemName = 'hornys_jungleburger', Amount = 50, Type = 'Eat', Prop = 'prop_cs_burger_01' },
    [7] = { ItemName = 'hornys_magicburger', Amount = 50, Type = 'Eat', Prop = 'prop_cs_burger_01' },
    [8] = { ItemName = 'hornys_milkshake', Amount = 50, Type = 'Drink', Prop = 'prop_food_bs_juice02' },
    [9] = { ItemName = 'hornys_cola', Amount = 50, Type = 'Drink', Prop = 'prop_food_bs_juice02' },
    [10] = { ItemName = 'hornys_sprunk', Amount = 50, Type = 'Drink', Prop = 'prop_food_bs_juice02' },
    [11] = { ItemName = 'hornys_juice', Amount = 50, Type = 'Drink', Prop = 'prop_food_bs_juice02' },
}