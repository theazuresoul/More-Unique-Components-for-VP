-- Great Turkish Bombard
-- Author: adan_eslavo
-- DateCreated: 22/12/2017
--------------------------------------------------------------
include("FLuaVector.lua")
include("InstanceManager")

function MeltingTurkishBombard(iPlayer, iUnitOrCity, iRole)
	pPlayer = Players[iPlayer]

	if pPlayer ~= nil then
		if iRole == 0 then
			local pUnit = pPlayer:GetUnitByID(iUnitOrCity)
			
			if pUnit ~= nil then
				if pUnit:IsHasPromotion(GameInfoTypes.PROMOTION_UNIT_OTTOMANS_SAHI_TOPU) then
					pUnit:ChangeDamage(20)

					local vUnitPosition = PositionCalculator(pUnit:GetX(), pUnit:GetY())
					
					Events.AddPopupTextEvent(vUnitPosition, "[COLOR_RED]-20 Sahi Topu[ENDCOLOR]", 2)
				end
			end
		end
	end
end

function PositionCalculator(i1, i2)
	return HexToWorld(ToHexFromGrid(Vector2(i1, i2)))
end

GameEvents.BattleJoined.Add(MeltingTurkishBombard)
