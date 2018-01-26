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

function inventario(ard, cantidad) {
    var articulo = document.getElementById(ard);
    var i;
    var producto = document.getElementById(cantidad).innerText;
    for (i=0; i<=producto; i++){
    	var option = document.createElement("option");
        option.value = option.text = i;
        articulo.add(option);	
    }
}

inventario("cantidad", "8033");
inventario("cantidad1", "0757");
inventario("cantidad2", "0733");


function subTotal(can)
{
    
}




