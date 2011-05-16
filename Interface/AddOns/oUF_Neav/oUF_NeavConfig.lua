
oUF_Neav = {
    show = {
        castbars = true,
        pvpicons = true,
    },

    media = {
        border = 'Interface\\AddOns\\oUF_Neav\\media\\borderTexture',
        statusbar = 'Interface\\AddOns\\oUF_Neav\\media\\statusbarTexture',
        font = 'Interface\\AddOns\\oUF_Neav\\media\\fontSmall.ttf',
        fontThick = 'Interface\\AddOns\\oUF_Neav\\media\\fontThick.ttf',
    },

    font = {
        fontSmall = 14,
        fontSmallOutline = false,
        
        fontBig = 14,
        fontBigOutline = false,
    },

    units = {
        player = {
            mouseoverText = false,
            
            scale = 1.0,
            style = 'NORMAL', -- 'NORMAL', 'RARE' or 'ELITE'
            
            showHealthPercent = false,
            showPowerPercent = false,
            druidManaFrequentUpdates = false,
            
            showStatusFlash = true,
            showCombatFeedback = false,
            
            position = {'BOTTOMLEFT', UIParent, 600, 300},
        },

        pet = {
            mouseoverText = true,
            
            scale = 1.0,
            
            auraSize = 18,
            
            showHealthPercent = false,
            showPowerPercent = false,
            
            position = {43, -20},
        },

        target = {
            mouseoverText = false,
            
            scale = 1.0,
            
            auraSize = 18,
            numBuffs = 4,
            numDebuffs = 4,
            
            showComboPoints = false,
            showComboPointsAsNumber = false,
            numComboPointsColor = {0.9, 0, 0},      -- textcolor of the combopoints if showComboPointsAsNumber is true
            
            showHealthPercent = true,
            showHealthAndPercent = true,   -- overrides showHealthPercent
            showPowerPercent = false,
            
            showCombatFeedback = false,
            
			colorPlayerDebuffsOnly = true,
            
            position = {'BOTTOMRIGHT', UIParent, -600, 300},
        },

        targettarget = {
            scale = 1.0,
        },

        focus = {
            mouseoverText = false,
            
            scale = 1.0,
            
            auraSize = 18,
            numDebuffs = 6,
            
            showHealthPercent = false,
            showHealthAndPercent = false,   -- overrides showHealthPercent
            showPowerPercent = false,
            
            showCombatFeedback = false,
                        
            enableFocusToggleKeybind = false,
            focusToggleKey = 'type4', -- type1, type2 (mousebutton 1 or 2, 3, 4, 5 etc. works too)
        },
        
        focustarget = {
            scale = 1.0,
        },
        
        party = {
            show = true,
            mouseoverText = true,
            
            scale = 1.0,
            auraSize = 18,  
            
            hideInRaid = true,
            
            position = {'TOPLEFT', UIParent, 25, -200},
        },

        raid = {
            show = true,    
            showSolo = false,
        
            width = 42,
            height = 40,
            scale = 1.0, 
            iconSize = 20,
            
            numGroups = 8,

            position = {'LEFT', UIParent, 'CENTER', 400, -130},
            
            showThreatText = false,
            showRolePrefix = false,
            
            showTargetBorder = true,
            targetBorderColor = {1, 1, 1},

            smoothUpdatesForAllClasses = true, -- Set to true to enable smooth updates for healing classes
            
            indicatorSize = 7,
            horizontalHealthBars = false,
            
            manabar = {
                show = false,
                horizontalOrientation = false,
            },

       },
        
        boss = {
            showCastbar = false,
            scale = 1.0,

            position = {'TOPRIGHT', UIParent, 'TOPRIGHT', -80, -300},
        },
        
        arena = {
            show = true,
            showCastbar = true,
            
            scale = 1.0,
            
            auraSize = 18,
            
            position = {'TOPRIGHT', UIParent, 'TOPRIGHT', -80, -300},
        },
    },

    castbar = {
        player = {
            width = 220,
            height = 19,
            
            showLatency = true, 
            safezone = true,
            safezoneColor = {1, 0, 1},
            
            classcolor = true,
            color = {1, 0.7, 0},
            
            position = {'BOTTOM', UIParent, 0, 141},
        },
        
        pet = {
            width = 220,
            height = 19,
            color = {0, 0.65, 1},
            position = {'BOTTOM', UIParent, 0, 390},
        },
        
        target = {
            width = 220,
            height = 19,
            color = {0.9, 0.1, 0.1},
            interruptColor = {1, 0, 1},
            position = {'BOTTOM', UIParent, 0, 332},
        },
        
        focus = {
            width = 176,
            height = 19,
            color = {0, 0.65, 1},
            interruptColor = {1, 0, 1},
        },
        
        boss = {
            color = {1, 0, 0},
        },
        
        arena = {
            iconSize = 22,
            color = {1, 0, 0},
        },
    },
}
