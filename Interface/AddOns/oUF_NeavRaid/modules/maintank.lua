
local parent, ns = ...
local oUF = ns.oUF or _G.oUF

local Update = function(self, event, unit)
    if (unit ~= self.unit) then 
        return 
    end

    local unit = unit or self.unit
    local raidID = UnitInRaid(unit)

    if (not raidID) then
        self.MainTank:Hide()
        return
    end

    local _, _, _, _, _, _, _, _, _, rinfo = GetRaidRosterInfo(raidID)

    if (raidID and (rinfo == 'MAINTANK') and not UnitHasVehicleUI(unit)) then
        self.MainTank:Show()
    else
        self.MainTank:Hide()
    end
end

local Path = function(self, ...)
    return (self.MainTank.Override or Update)(self, ...)
end

local ForceUpdate = function(element)
    return Path(element.__owner, 'ForceUpdate')
end

local Enable = function(self)
    local mt = self.MainTank

    if (mt) then
        mt.__owner = self
        mt.ForceUpdate = ForceUpdate

        self:RegisterEvent('PARTY_MEMBERS_CHANGED', Path)
        self:RegisterEvent('RAID_ROSTER_UPDATE', Path)

        if (mt:IsObjectType('Texture') and not mt:GetTexture()) then
            mt:SetTexture('Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON')
        end

        return true
    end
end

local Disable = function(self)
    local mt = self.MainTank

    if (mt) then
        self:UnregisterEvent('PARTY_MEMBERS_CHANGED', Path)
        self:UnregisterEvent('RAID_ROSTER_UPDATE', Path)
    end
end

oUF:AddElement('MainTank', Path, Enable, Disable)