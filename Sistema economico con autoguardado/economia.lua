----//// Scripting J3susgg21 ////----
----//// Leer las instrucciones ----////

local DSS = game:GetService('DataStoreService') --- declaracion de el servicio DataStoreService. 
local Dinero_value = DSS:GetDataStore('Dinero') ---- declaracion de nuestra variable. 


game.Players.PlayerAdded:Connect(function(player) ---. Al momento de un jugador conectarse.
	local leader = Instance.new('Folder') ---- creara un nuevo folder donde guardara los datos.
	leader.Parent = player ---- se creara  dentro del jugador. 
	leader.Name = 'leaderstats'    local Dinero = Instance.new('IntValue') --- con el nombre de 'leaderstats'. 
	Dinero.Parent = leader ---- con la variable dinero.
	Dinero.Name = 'Pesos' --- Modificar por el nombre de su variable.
	local data
	local success, err = pcall(function()
		data = Dinero_value:GetAsync(player.UserId)
	end) 
	if success then
		if data then
			Dinero.Value = data
		end
	end  ---- Funciones para que muestre la cantidad de su variable  al momento de conectarse de nuevo.
	while true do
		task.wait(600)
		Dinero.Value = Dinero.Value + 0
	end ---- Agregar dinero por cierto tiempo, en este caso esta en 0 pero lo puedes modifiar al gusto.

end)

game.Players.PlayerRemoving:Connect(function(player)
	local success, err = pcall(function()
		Dinero_value:SetAsync(player.UserId, player.leaderstats:WaitForChild('Dinero').Value)
	end)
end) ---- al momento del jugador desconectarse esta funcion va hacer que el dinero quede guardado. 
