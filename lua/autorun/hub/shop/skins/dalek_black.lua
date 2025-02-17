ITEM.Name = "Black Dalek"
ITEM.Description = [[Exterminate!]]
ITEM.StorePrice = 1000
ITEM.PlayerModel = "models/neodement/dalek.mdl"
ITEM.Buyable = false
ITEM.PlayerMat = "models/arizard/dalek_black.vmt"
ITEM.Visible = false
if engine.ActiveGamemode() ~= "terrortown" and engine.ActiveGamemode() ~= "murder" then
	ITEM.Visible = true
end

function ITEM:OnEquip(ply, id)
	ply:SetMaterial( self.PlayerMat )
	timer.Simple(1, function() 
		ply:SetModel(self.PlayerModel)
		ply:SetupHands( ply )
	end)
end

function ITEM:OnHolster(ply, id)
	if ply:GetMaterial() == self.PlayerMat then
		ply:SetMaterial( "" )
	end
end

function ITEM:OnSpawn(ply, id)
end

function ITEM:OnDeath(ply, id)
	if ply:GetModel() == self.PlayerModel then
		local e = EffectData()
		e:SetOrigin( ply:GetPos() )
		e:SetMagnitude( 5 )
		util.Effect( "Explosion", e )
	end
end

function ITEM:OnThink(ply, id)
end
