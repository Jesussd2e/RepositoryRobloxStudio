----//// Scripting J3susgg21 ////----
----//// Leer las instrucciones ----////

function onTouched(hit) --- creamos la funcion que hata el tocar la pieza.
    if hit.Parent.Humanoid~= nil then --- Al momento de el jugador tocar la pieza.
    local variable = game.Players:findFirstChild(hit.Parent.Name).leaderstats.Pesos ---- localizara nuestra variable de leaderstats, modificar "leaderstats.nombre de nuesta varoable"
      variable.Value = variable.Value + 100 ---- Cambiar la cantidad que quieres otorgar.
      
   wait(4) --- para evitar abuso del mismo cambiar el tiempo de espera.
     end
    end
   script.Parent.Touched:connect(onTouched)