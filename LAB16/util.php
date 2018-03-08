<?php
    function ConectBD()
    {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "lab14";
        
        $sql = mysqli_connect($servername, $username, $password, $dbname);
        $sql->set_charset("utf8");
        
        if (!$sql){
            die("Conexion fallida: " . mysqli_connect_error());
        }
        
        return $sql;
    }

    function disconnect($sql)
    {
        mysqli_close($sql);
    }

    function getContactos()
    {
        $con = ConectBD();
        $sql = "SELECT * FROM contactos";
        $result = mysqli_query($con, $sql);
        $string_res = "<table>
                        <thead>
                        <tr>
                            <th> ID </th>
                            <th> Nombre </th>
                            <th> Apellido </th>
                            <th> Edad 
                            </th>
                        </tr>
                        </thead>
                        <tbody>";
        while ($mostrar = mysqli_fetch_array($result, MYSQLI_BOTH))
        {
            $string_res .= '<tr>
                         <td> '.$mostrar["id"].' </td>
                         <td> '.$mostrar["nombre"].' </td>
                         <td> '.$mostrar["apellido"].' </td>
                         <td> '.$mostrar["edad"].' </td>
                         </tr>';
        }
        $string_res .= '</tbody>
                        </table>';
        disconnect($con);
        echo $string_res;
        return $result;
    }

    function getContactosbyNombre($name)
    {
        $con = ConectBD();
        $sql = $sql = "SELECT * FROM contactos WHERE nombre LIKE '".$name."'";
        $result = mysqli_query($con, $sql);
        
       $string_res = "<table>
                       <thead>
                       <tr>
                           <th> ID </th>
                           <th> Nombre </th>
                            <th> Apellido </th>
                           <th> Edad 
                           </th>
                     </tr>
                       </thead>
                     <tbody>";
     while ($mostrar = mysqli_fetch_array($result, MYSQLI_BOTH))
     {
         $string_res .= '<tr>
                      <td> '.$mostrar["id"].' </td>
                      <td> '.$mostrar["nombre"].' </td>
                      <td> '.$mostrar["apellido"].' </td>
                         <td> '.$mostrar["edad"].' </td>
                      </tr>';
        }
        $string_res .= '</tbody>
                        </table>';
        disconnect($con);
        
        return $string_res;
    }

    function agregarContacto($nombre, $apellido, $edad)
    {
        $db = connect();
        if ($db != NULL) {
            // insert command specification 
            $query='INSERT INTO Contactos (nombre,apellido, edad) VALUES (?,?,?) ';
            // Preparing the statement 
            if (!($statement = $db->prepare($query))) {
                die("Preparation failed: (" . $db->errno . ") " . $db->error);
            }
            // Binding statement params 
            if (!$statement->bind_param("ssi", $nombre, $apellido, $edad)) {
                die("Parameter vinculation failed: (" . $statement->errno . ") " . $statement->error); 
            }
             // Executing the statement
             if (!$statement->execute()) {
                die("Execution failed: (" . $statement->errno . ") " . $statement->error);
              } 

            
            mysqli_free_result($results);
            disconnect($db);
            return true;
        } 
        return false;
    }

    

?>