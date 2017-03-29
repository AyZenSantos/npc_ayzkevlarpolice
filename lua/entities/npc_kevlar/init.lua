AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include('shared.lua')


function ENT:Initialize( )
	
	self:SetModel( "models/Police.mdl" ) 
	self:SetHullType( HULL_HUMAN )
	self:SetHullSizeNormal( )
	self:SetNPCState( NPC_STATE_SCRIPT )
	self:SetSolid(  SOLID_BBOX )
	self:CapabilitiesAdd( CAP_ANIMATEDFACE )
	self:SetUseType( SIMPLE_USE )
	self:DropToFloor()
	self:SetMaxYawSpeed( 90 )
	
end

function ENT:OnTakeDamage()
	return false 
end 

function ENT:AcceptInput( Name, Activator, Caller )	

	if Name == "Use" and Caller:IsPlayer() then                      
	      if team.GetName(Caller:Team()) == "Hobo" or                
		     team.GetName(Caller:Team()) == "Gun Dealer" or --<<-<< Mettre Le nom du job Souhaiter pour que le job est acces aux npc 
			 team.GetName(Caller:Team()) == "Medic" or               
		     team.GetName(Caller:Team()) == "Civil Protection" then  	 
		umsg.Start("policearmur", Caller) 
		umsg.End()
		
	end
	
end

end
util.AddNetworkString( "buyarmor25" )
net.Receive( "buyarmor25" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 150 then

   ply:addMoney( -150 ) 
    DarkRP.notify(ply,0,7,"Vous avez acheté 25 d'armur pour 100€!") 
    ply:SetArmor(25)
      else
     DarkRP.notify(ply,1,7,"Vous ne pouvez pas vous acheter d'armur car vous n'avez pas assez d'argent")
   
 
    end
  end)
util.AddNetworkString( "buyarmor50" )
net.Receive( "buyarmor50" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 300 then

   ply:addMoney( -300 ) 
    DarkRP.notify(ply,0,7,"Vous avez acheté 50 d'armur pour 100€!") 
    ply:SetArmor(50)
      else
     DarkRP.notify(ply,1,7,"Vous ne pouvez pas vous acheter d'armur car vous n'avez pas assez d'argent")
   
 
    end
  end)
util.AddNetworkString( "buyarmor75" )
net.Receive( "buyarmor75" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 600 then

   ply:addMoney( -600 ) 
    DarkRP.notify(ply,0,7,"Vous avez acheté 75 d'armur pour 100€!") 
    ply:SetArmor(75)
      else
     DarkRP.notify(ply,1,7,"Vous ne pouvez pas vous acheter d'armur car vous n'avez pas assez d'argent")
   
 
    end
  end)
util.AddNetworkString( "buyarmor100" )
net.Receive( "buyarmor100" , function ( len , ply )
  if ply:getDarkRPVar("money") >= 800 then

   ply:addMoney( -800 ) 
    DarkRP.notify(ply,0,7,"Vous avez acheté 100 d'armur pour 100€!") 
    ply:SetArmor(100)
      else
     DarkRP.notify(ply,1,7,"Vous ne pouvez pas vous acheter d'armur car vous n'avez pas assez d'argent")
   
 
    end
  end)