--Holo / Floating text Script by SuicideDev & TMG 

--[[    If you want to add a line to the text / holo just make a new Draw3DTest line with the same corrds. Then edit the vertical offsets.

    Format: 
        Draw3DText( x, y, z vettical offset, "text", font, text size, text size)

    To add a new floating text / holo, copy and paste this example under the existing ones and then put the corrds and text in to it.

        if GetdistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
            Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
            Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
            Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)
        end


        And that it!

        Default holo will be at legion garage
--]]


Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- Hologram 1
		if GetDistanceBetweenCoords( 210.04, -805.92, 30.9, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 210.04, -805.92, 30.9  -1.400, "You are able to edit this", 2, 0.1, 0.1)
			Draw3DText( 210.04, -805.92, 30.9  -1.600, "via holograms lua file", 2, 0.1, 0.1)
			Draw3DText( 210.04, -805.92, 30.9  -1.800, "you are able to add them where ever you want", 2, 0.1, 0.1)		
		end		
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)		-- You will be able to change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
