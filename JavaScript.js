//var numero;
//var tabla;

function E1()
{   
    var t1 = document.getElementById("tabla");
    var i, cuadrado, cubo;
    
    var numero = prompt("INGRESA UN NÚMERO");
    
    var fila = t1.insertRow(0);
    var col1 = fila.insertCell(0);
    col1.innerHTML = "Cuadrado";
    var col2 = fila.insertCell(0);
    col2.innerHTML = "Cubo";
    var col3 = fila.insertCell(0);
    col3.innerHTML = "Numero";
    
    //num = parseInt(numero);
    for (i = 1; i <= numero; i++){
        cuadrado = Math.pow(i,2);
        cubo = Math.pow(i,3);
        
        fila = t1.insertRow();
        col1 = fila.insertCell();
        col2 = fila.insertCell();
        col3 = fila.insertCell();
        
        col1.innerHTML = String(cuadrado);
        col2.innerHTML = String(cubo);
        col3.innerHTML = String(i);
    }
    
function E2 ()
{
    var p = prompt("HOLA");
    var s1 = Math.floor(Math.random() * 100);
    var s2 = Math.floor(Math.random() * 100);
    var inicio = Date.now();
    var fin;
    var resultado = prompt("¿Cuánto es el resultado de sumar " + String(s1) + " y " + String(s2));
    
    if (resultado == (s1+s2))
    {
        fin = Date.now();
        document.getElementById("salida").innerHTML = s1
    }
    
}
    
function contador(item){
    
    if(item < 0){
        neg++;
    }
    else if(item == 0){
        zero++;
    }
    else{
        pos++;
    }
    
    str = "Arreglo = " + arr.toString() + "<br> Negativos = " + String(neg) + "<br> Positivos = " + String(pos) + "<br> Cero = " + String(zero);
}
    
    
    
}

