include('shared.lua')

surface.CreateFont( "HUDNumber5", {
    font = "HudNumbers",
    size = 13,
    weight = 500,
} )

function policearmur () 
	local Armurpolice = vgui.Create( "DFrame" )
Armurpolice:SetPos( ScrW()/2-150, ScrH()/2-150 )
Armurpolice:SetSize( 400, 200 )
Armurpolice:Center()
Armurpolice:SetTitle("")
Armurpolice:ShowCloseButton( false )
Armurpolice:SetDraggable(true)
Armurpolice:SetVisible( true )
Armurpolice:MakePopup()
Armurpolice.Paint = function()
	 draw.RoundedBox( 4, 0, 0, Armurpolice:GetWide(), Armurpolice:GetTall(), Color( 50,50, 50, 255	 ) )
end
DButtonPolice2 = vgui.Create("DButton",Armurpolice)
DButtonPolice2:SetText("Annuler")
DButtonPolice2:SetParent( Armurpolice )  
DButtonPolice2:SetPos(100,125)
DButtonPolice2:SetTextColor( Color( 0, 0, 0, 250 ) )
DButtonPolice2:SetFont("Trebuchet24")
DButtonPolice2:SetSize(200,40)
DButtonPolice2.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
DButtonPolice2.DoClick = function()
Armurpolice:Close()
end
DButtonPolice = vgui.Create("DButton",Armurpolice)
DButtonPolice:SetText("Acheter du Kevlar")
DButtonPolice:SetParent( Armurpolice )  
DButtonPolice:SetPos(100,50)
DButtonPolice:SetTextColor( Color( 0, 0, 0, 250 ) )
DButtonPolice:SetFont("Trebuchet24")
DButtonPolice:SetSize(200,40)
DButtonPolice.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 200, 0, 255 ) )
end
DButtonPolice.DoClick = function()
Armurpolice:Close()
local KevlarPolice = vgui.Create( "DFrame" )
KevlarPolice:SetPos( ScrW()/2-150, ScrH()/2-150 )
KevlarPolice:SetSize( 525, 200 )
KevlarPolice:SetTitle( "" )
KevlarPolice:Center()
KevlarPolice:ShowCloseButton( false )
KevlarPolice:SetVisible( true )
KevlarPolice:MakePopup()
KevlarPolice.Paint = function()
	draw.RoundedBox( 4, 0, 0, KevlarPolice:GetWide(), KevlarPolice:GetTall(), Color( 50, 50, 50, 255 ) )
	draw.SimpleText("Acheter votre kevlar", "Trebuchet24", 10, 10,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	draw.SimpleText("150€", "Trebuchet24", 10, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	draw.SimpleText("300€", "Trebuchet24", 175, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	draw.SimpleText("600€", "Trebuchet24", 300, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT)
	draw.SimpleText("800€", "Trebuchet24", 425, 95,Color(255,255,255,255),TEXT_ALIGN_LEFT)
end
Kevlarclose = vgui.Create("DButton",KevlarPolice)
Kevlarclose:SetText("Annuler")
Kevlarclose:SetParent( KevlarPolice )  
Kevlarclose:SetPos(150,125)
Kevlarclose:SetTextColor( Color( 0, 0, 0, 250 ) )
Kevlarclose:SetFont("Trebuchet24")
Kevlarclose:SetSize(200,40)
Kevlarclose.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 200, 0, 0, 255 ) )
end
Kevlarclose.DoClick = function()
KevlarPolice:Close()
end
armur25 = vgui.Create("DButton",KevlarPolice)
armur25:SetText("25 Armure")
armur25:SetParent( KevlarPolice )  
armur25:SetPos(10,50)
armur25:SetTextColor( Color( 0, 0, 0, 250 ) )
armur25:SetFont("Trebuchet24")
armur25:SetSize(100,40)
armur25.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 200, 255 ) )
end
armur25.DoClick = function()
net.Start( "buyarmor25" )
net.SendToServer()
end
armur50 = vgui.Create("DButton",KevlarPolice)
armur50:SetText("50 Armure")
armur50:SetParent( KevlarPolice )  
armur50:SetPos(150,50)
armur50:SetTextColor( Color( 0, 0, 0, 250 ) )
armur50:SetFont("Trebuchet24")
armur50:SetSize(100,40)
armur50.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 200, 255 ) )
end
armur50.DoClick = function()
net.Start( "buyarmor50" )
net.SendToServer()
end
armur75 = vgui.Create("DButton",KevlarPolice)
armur75:SetText("75 Armure")
armur75:SetParent( KevlarPolice )  
armur75:SetPos(275,50)
armur75:SetTextColor( Color( 0, 0, 0, 250 ) )
armur75:SetFont("Trebuchet24")
armur75:SetSize(100,40)
armur75.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 200, 255 ) )
end
armur75.DoClick = function()
net.Start( "buyarmor75" )
net.SendToServer()
end
armur100 = vgui.Create("DButton",KevlarPolice)
armur100:SetText("100 Armure")
armur100:SetParent( KevlarPolice )  
armur100:SetPos(400,50)
armur100:SetTextColor( Color( 0, 0, 0, 250 ) )
armur100:SetFont("Trebuchet24")
armur100:SetSize(100,40)
armur100.Paint = function( self, w, h )
    draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 200, 255 ) )
end
armur100.DoClick = function()
net.Start( "buyarmor100" )
net.SendToServer()
end


end
end

usermessage.Hook("policearmur", policearmur) 

hook.Add("PostDrawOpaqueRenderables", "policearmur", function() 
	for _, ent in pairs (ents.FindByClass("npc_kevlar")) do 
		if ent:GetPos():Distance(LocalPlayer():GetPos()) < 1000 then
			local Ang = ent:GetAngles()

			Ang:RotateAroundAxis( Ang:Forward(), 90)
			Ang:RotateAroundAxis( Ang:Right(), -90)
		
			cam.Start3D2D(ent:GetPos()+ent:GetUp()*79, Ang, 0.20)
				draw.SimpleTextOutlined( 'Armurier Police', "HUDNumber5", 0, 0, Color( 255, 0, 0, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, Color(0, 0, 0, 255))			
			cam.End3D2D()
		end
	end
end)