ITEM.Name = "Bucket Hat"
ITEM.Description = "True Lad."
ITEM.StorePrice = 120
ITEM.HatModel = "models/props_junk/MetalBucket01a.mdl"
ITEM.HatMat = ""
ITEM.HatCol = Color(255,255,255)
ITEM.Att = "eyes"
ITEM.PosOff = Vector(0,-6,4.5)
ITEM.AngOff = Angle(220,0,0)
ITEM.Scl = 0.6

function ITEM:OnEquip(ply, id)
	RS:CreateClientModel( self.HatModel, self.Att, self.PosOff , self.AngOff , self.Scl, self.HatMat, self.HatCol, ply, id )
end

function ITEM:OnHolster(ply, id)
	RS:DestroyClientModel( id )
end

function ITEM:OnSpawn(ply, id)
end

function ITEM:OnDeath(ply, id)
end

function ITEM:OnThink(ply, id)
end



