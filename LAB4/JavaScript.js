//var numero;
//var tabla;
var filas;
var numero;
var arr = [];
var neg = 0, zero = 0, pos = 0;

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
}
    
function Ejercicio2 ()
{
    var s1 = Math.floor(Math.random() * 100);
    var s2 = Math.floor(Math.random() * 100);
    var ans;
    var inicio = Date.now();
    var resultado = prompt("¿Cuánto es el resultado de sumar " + String(s1) + " y " + String(s2));
    
    if (resultado == (s1+s2))
    {
        ans = "Correcto";
    }
    else{
        ans = "Incorrecto";
    }
    var fin = Date.now();
    document.getElementById("salida").innerHTML = ans + ". Tardaste: "+((fin - inicio) / 1000) + "segundos en responder.";
    
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
    document.getElementById("salida").innerHTML = "Arreglo = " + arr.toString() + "<br> Negativos = " + String(neg) + "<br> Positivos = " + String(pos) + "<br> Cero = " + String(zero);
}

function leerArreglo()
{
    arr = prompt("Introduce los números a evaluar separados por comas", "1,2,3");
    arr = arr.split(",")
    arr.forEach(contador);
}

function sacarPromedio()
{
    var i, sumaTotal = 0;
    for(i = 0; i < arr.length; i++)
        {
            sumaTotal = sumaTotal + parseInt(arr[i]);
        }
    var res = sumaTotal/arr.length;
    document.getElementById("salida").innerHTML = "PROMEDI: " + String(res);
}

function inverso()
{    
    var num = prompt("Introduce un número a invertir");
    num = num.split("").reverse().join("");
    document.getElementById("salida").innerHTML = "INVERSO: " + num;
}
    

