<!DOCTYPE html>
<html5>
    <head>
        <meta charset="utf-8">
        <title>Laboratorio 9</title>
    </head>
    <body>
        <header>
            <h1>LABORATORIO 9</h1>
        </header>
        <section>
            <?php
            function promedio(){
                $arreglo = array();
                for($i=0; $i<10; $i++){
                    $arreglo[$i] = rand(0,20);
                }
                $ta = count($arreglo);
                $suma = 0;
                for ($i=0; $i<$ta; $i++){
                    echo $arreglo[$i];
                    $suma = array_sum($arreglo);
                    echo "<br>-----<br>";
                }
                $promedio = $suma/10;
                echo "PROMEDIO: ", $promedio;
            }
            promedio();
            echo "<br>-----------------------------<br>";
            promedio();
            ?>
        </section>
        
        <section>
            <?php
            $numeros = array();
            for($i=0; $i<10; $i++){
                $numeros[$i] = rand(0,100);
            }
            function bubble($arreglo)
            {
                $numeros_Ordenados = array();
                do
                {
                    $aux = false;
                    for( $i = 0; $i < 9; $i++ )
                    {
                        if( $arreglo[$i] > $arreglo[$i + 1] )
                        {
                            $numeros_Ordenados[$i+1] = $arreglo[$i];
                            $numeros_Ordenados[$i] = $arreglo[$i+1];
                            echo implode ("br>", $numeros_Ordenados[$i]);
                            //list($arreglo[$i+1], $arreglo[$i]) = array($arreglo[$i], $arreglo[$i + 1]);
                            $aux = true;
                        }
                    }
                } while( $aux );
            //return $arreglo;
            }
            //echo implode("<br>",bubble($numeros));
             bubble($numeros);
            ?>
           
        </section>
        
        <section>
            <h1>PREGUNTAS</h1>
            <h3>¿Qué hace la función phpinfo()? Describe y discute 3 datos que llamen tu atención</h3>
            <a>Muestra la configuración actual de la instalación de php<br>
                <ul>
                    <li>Apache Environment</li>
                    <li>json</li>
                    <li>Configuration</li>
                </ul>
            </a>
            <h3>¿Qué cambios tendrías que hacer en la configuración del servidor para que pudiera ser apto en un ambiente de producción?</h3>
            <a>Responder</a>
            <h3>¿Cómo es que si el código está en un archivo con código html que se despliega del lado del cliente, se ejecuta del lado del servidor? Explica.</h3>
            <a>Responder</a>
        </section>
    </body>
    <footer>
    </footer>
</html5>







