function password(form)
{
    if (form.pass1.value !== form.pass2.value){
        alert("La contraseña no coincide");
    }
    else if (form.pass1.value.length < 8){
        var contraCorta = confirm("Te recomendamos elegir una contraseña de 8 caracteres o más. ¿Estás seguro que quieres usar esta contraseña corta?");
        if (!contraCorta){
            alert("Ingresa una nueva contraseña con 8 caracteres o más");
        }
        else {
            alert("Contraseña registrada con éxito");
        }
    }
}

function inventario(index, cantidad) {
    var articulo = document.getElementsByClassName("cantidad")[index];
    var i;
    var producto = document.getElementById(cantidad).innerText;
    for (i=0; i<=producto; i++){
    	var option = document.createElement("option");
        option.value = option.text = i;
        articulo.add(option);	
    }
}

inventario(0, "8033");
inventario(1, "0757");
inventario(2, "0733");


function subTotal(index,can)
{
    var cantidad = document.getElementsByClassName("cantidad")[index].value;
    var costo;
    switch(can)
        {
            case 1:
                costo = cantidad * 25000;
                break;
            case 2:
                costo = cantidad * 1500;
                break;
            case 3:
                costo = cantidad * 800;
                break;
        }
    document.getElementsByClassName("sub")[index].innerHTML = "$" + costo;
    calcularTotal(costo);
}




function calcularTotal(subtotal){
    
    var iva = subtotal * .16;
    
    document.getElementById("total").innerHTML = "$" + String(iva);
    
    var total = subtotal + iva;
    
    document.getElementById("total").innerHTML = "$" + String(total);
}

function confirmarPago(){
    
    var total = document.getElementById("total");
    
    alert("COMPRA FINALIZADA, SU PRODUCTO SERA ENTREGADO EN LAS PROXIMAS 24 HORAS");
    
}


function calcular(L, LL)
{
    var res = Math.abs(L * LL);
    
    return res;
}


document.getElementById("problema").onsubmit = function() {
    var L = document.e4.lad1.value;    
    var LL = document.e4.lad1.value;
    var units = document.e4.unidad.value;
    
    var result = calcular(L, LL);
    
    alert("El resultado es " + result + units);
    document.getElementById("resultado").innerHTML = result;
}
