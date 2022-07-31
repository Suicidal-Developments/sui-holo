-- Branding!
local label =
[[ 
  //
  ||       
  || 
  ||
  ||      
  ||      
  ||      ░██████╗██╗░░░██╗██╗░░░░░░██╗░░██╗░█████╗░██╗░░░░░░█████╗░
  ||      ██╔════╝██║░░░██║██║░░░░░░██║░░██║██╔══██╗██║░░░░░██╔══██╗
  ||      ╚█████╗░██║░░░██║██║█████╗███████║██║░░██║██║░░░░░██║░░██║
  ||      ░╚═══██╗██║░░░██║██║╚════╝██╔══██║██║░░██║██║░░░░░██║░░██║
  ||      ██████╔╝╚██████╔╝██║░░░░░░██║░░██║╚█████╔╝███████╗╚█████╔╝
  ||      ╚═════╝░░╚═════╝░╚═╝░░░░░░╚═╝░░╚═╝░╚════╝░╚══════╝░╚════╝░
  ||    
  ||
  ||
  ||      
  ||
  ||       █▀ █░█ █ █▀▀ █ █▀▄ ▄▀█ █░░   █▄░█ █▀▀ ▀█▀ █░█░█ █▀█ █▀█ █▄▀  
  ||       ▄█ █▄█ █ █▄▄ █ █▄▀ █▀█ █▄▄   █░▀█ ██▄ ░█░ ▀▄▀▄▀ █▄█ █▀▄ █░█  
  ||       
  ||       
  ||        
  ||            Floating text / holo's in game
  ||            Created by SuicideDev & TwistedMetalGaming
  ||]]


  	-- Print the branding!
	print( label )

    -- Returns the current version set in fxmanifest.lua
function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end
	-- Warn the console if the resource has been renamed, as this will cause issues with the resource's functionality.
	if ( GetCurrentResourceName() ~= "sui-holo" ) then
	print( "^1ERROR: Resource name is not sui-holo, expect there to be issues with the resource. To ensure there are no issues, please leave the resource name as sui-holo^0\n\n" )
end