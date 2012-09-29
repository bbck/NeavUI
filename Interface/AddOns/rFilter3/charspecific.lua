
-----------------------------
-- INIT
-----------------------------

--get the addon namespace
local addon, ns = ...
local cfg = ns.cfg

-----------------------------
-- CHARSPECIFIC REWRITES
-----------------------------

local player_name, _ = UnitName("player")
local _, player_class = UnitClass("player")

-- this file allows you to override default class settings with special settings for your own character
-- ATTENTION: if you character name contains UTF-8 characters like âôû and such. Make sure this files is saved in UTF-8 file format

if player_name == "Thehermit" and player_class == "ROGUE" then
  cfg.rf3_BuffList = {
    [1] = {
      spec = nil,
      spellid = 5171, -- Slice and Dice
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = -120, y = -90 },
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
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = -24, y = -90 },
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
      spec = 2,
      spellid = 13750, -- Adrenaline Rush
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 24, y = -90 },
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
      spec = 2,
      spellid = 13877, -- Blade Flurry
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 72, y = -90 },
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
      spec = 2,
      spellid = 84745, -- Shallow Insight
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 120, y = -90 },
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
      spec = 2,
      spellid = 84746, -- Moderate Insight
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 120, y = -90 },
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
      spec = 2,
      spellid = 84747, -- Deep Insight
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 120, y = -90 },
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
      spec = 3,
      spellid = 51713, -- Shadow Dance
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 24, y = -90 },
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
    [9] = {
      spec = nil,
      spellid = 109949, -- Fury of the Destroyer
      size = 48,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 0, y = -148 },
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
  }
  cfg.rf3_DebuffList = {
    [1] = {
      spec = nil,
      spellid = 1943, -- Rupture
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = -72, y = -90 },
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
      spec = 3,
      spellid = 16511, -- Hemorrhage
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 72, y = -90 },
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
    [3] = {
      spec = 2,
      spellid = 84617, -- Revealing Strike
      size = 36,
      pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = -168, y = -90 },
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
