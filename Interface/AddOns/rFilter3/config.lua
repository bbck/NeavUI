
-- // rFilter3
-- // zork - 2010

--get the addon namespace
local addon, ns = ...

--object container
local cfg = CreateFrame("Frame")

cfg.rf3_BuffList, cfg.rf3_DebuffList, cfg.rf3_CooldownList = {}, {}, {}

local player_name, _ = UnitName("player")
local _, player_class = UnitClass("player")

-----------------------------
-- CONFIG
-----------------------------

cfg.highlightPlayerSpells = false  --player spells will have a blue border
cfg.updatetime            = 0.2   --how fast should the timer update itself

if player_name == "Thehermit" and player_class == "ROGUE" then
  cfg.rf3_BuffList = {
    [1] = {
      spec = nil,
      spellid = 5171, -- Slice and Dice
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = -105, y = -90 },
      unit = "player",
      validate_unit = true,
      hide_ooc = false,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    },
    [2] = {
      spec = nil,
      spellid = 73651, -- Recuperate
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = -21, y = -90 },
      unit = "player",
      validate_unit = true,
      hide_ooc = false,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    },
    [3] = {
      spec = 1,
      spellid = 13750, -- Adrenaline Rush
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 21, y = -90 },
      unit = "player",
      validate_unit = true,
      hide_ooc = false,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    },
    [4] = {
      spec = 1,
      spellid = 13877, -- Blade Flurry
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 63, y = -90 },
      unit = "player",
      validate_unit = true,
      hide_ooc = false,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    },
    [5] = {
      spec = 1,
      spellid = 84745, -- Shallow Insight
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 105, y = -90 },
      unit = "player",
      validate_unit = true,
      hide_ooc = false,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    },
    [6] = {
      spec = 1,
      spellid = 84746, -- Moderate Insight
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 105, y = -90 },
      unit = "player",
      validate_unit = true,
      hide_ooc = false,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    },
    [7] = {
      spec = 1,
      spellid = 84747, -- Deep Insight
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 105, y = -90 },
      unit = "player",
      validate_unit = true,
      hide_ooc = false,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    },
    [8] = {
      spec = 2,
      spellid = 51713, -- Shadow Dance
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 21, y = -90 },
      unit = "player",
      validate_unit = true,
      hide_ooc = false,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    }
  }
  cfg.rf3_DebuffList = {
    [1] = {
      spec = nil,
      spellid = 1943, -- Rupture
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = -63, y = -90 },
      unit = "target",
      validate_unit = true,
      hide_ooc = true,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    },
    [2] = {
      spec = 2,
      spellid = 16511, -- Hemorrhage
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 63, y = -90 },
      unit = "target",
      validate_unit = true,
      hide_ooc = true,
      ismine = true,
      desaturate = false,
      match_spellid = false,
      move_ingame = false,
      alpha = {
        found = {
          frame = 1,
          icon = 1
        },
        not_found = {
          frame = 0,
          icon = 0
        }
      }
    }
  }
end

-----------------------------
-- HANDOVER
-----------------------------

--object container to addon namespace
ns.cfg = cfg
