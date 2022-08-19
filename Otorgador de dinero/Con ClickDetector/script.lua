----//// Scripting J3susgg21 ////----
----//// Leer las instrucciones ----////

local ClickDetector = script.Parent ---- Declaramos la ubicacion de nuestro ClickDetector
local part = ClickDetector.Parent ---- Declaramos la ubicacion de nuestro model o Part
local sumadedinero = 100 ---- Declaramos la cantidad de dinero que nos otorgara, modificar si es necesario.


ClickDetector.MouseClick:Connect(function(plr) ---- Al momento que el jugador de Click
	plr.leaderstats.Pesos.Value = plr.leaderstats.Pesos.Value +sumadedinero ---- se le sumara la cantidad de dinero.
	ClickDetector.Enabled = false ---- se desactivara el ProximityPrompt para evitar abuso
	wait(1)---- Determinar el tiempo de espera para evitar el abuso del mismo.
	ClickDetector.Enabled = true ---- Al pasar el tiempo se activara de nuevo y los jugadores podran usarlo.
end)