ITEM.Name = "Wireframe"
ITEM.Description = "Developer Crate"
ITEM.StorePrice = 180
ITEM.Material = "models/wireframe"
ITEM.Buyable = false

function ITEM:OnEquip(ply, id)
	ply:SetMaterial( self.Material )
end

function ITEM:OnHolster(ply, id)
	ply:SetMaterial( "" )
end

function ITEM:OnSpawn(ply, id)
end

function ITEM:OnDeath(ply, id)
end

function ITEM:OnThink(ply, id)
end