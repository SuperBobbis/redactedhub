ITEM.Name = "Majoras Mask"
ITEM.Description = "A Terrible Fate."
ITEM.StorePrice = 250
ITEM.HatModel = "models/gmod_tower/majorasmask.mdl"
ITEM.HatMat = ""
ITEM.HatCol = Color(255,255,255)
ITEM.Att = "eyes"
ITEM.PosOff = Vector(0,-3.5,0)
ITEM.AngOff = Angle(0,0,0)
ITEM.Scl = 1
ITEM.IconFOV = 16
ITEM.IconPosOff = Vector(0,0,5)
ITEM.IconLayoutEntity = function( self, ent )
	ent:SetAngles( Angle(0,30,0) )
end

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
