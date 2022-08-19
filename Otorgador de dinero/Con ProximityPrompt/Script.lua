----//// Scripting J3susgg21 ////----
----//// Leer las instrucciones ----////

local ProximityPrompt = script.Parent ---- Declaramos la ubicación de nuestro ProximityPrompt
local part = ProximityPrompt.Parent ---- Declaramos la ubicación de nuestra part o model.
local sumadedinero = 100 ---- cambiar el valor a la suma de dinero que desee


ProximityPrompt.Triggered:Connect(function(plr) ---- Al momento que el jugador use el proximityPrompt
	plr.leaderstats.Pesos.Value = plr.leaderstats.Pesos.Value +sumadedinero ---- se le sumara la cantidad de dinero.
	ProximityPrompt.Enabled = false ---- se desactivara el ProximityPrompt para evitar abuso
	wait(1) ---- Determinar el tiempo de espera para evitar el abuso del mismo.
	ProximityPrompt.Enabled = true ---- Al pasar el tiempo se activara de nuevo y los jugadores podran usarlo.
end)