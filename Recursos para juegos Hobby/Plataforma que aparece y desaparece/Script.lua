 ----//// Scripting J3susgg21 ////----
----//// Leer las instrucciones ----////

local platforma = script.Parent ---- Declaramos la ubicación de la plataforma.

local function disappear()
	platforma.CanCollide = false
	platforma.Transparency = 1
end ---- función de desaparición //No Modificar//.

local function appear()
	platforma.CanCollide = true
	platforma.Transparency = 0
end ---- función de raeparición //No Modificar//.

while true do
	wait(3)
	disappear()
	wait(3)
	appear()
end --- modificar los tiempo de aparicion y desaparicion si es necesario.