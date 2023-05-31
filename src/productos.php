 <?php include_once "includes/header.php";
    include "../conexion.php";
$id_user = $_SESSION['idUser'];
$permiso = "productos";
$sql = mysqli_query($conexion, "SELECT p.*, d.* FROM permisos p INNER JOIN detalle_permisos d ON p.id = d.id_permiso WHERE d.id_usuario = $id_user AND p.nombre = '$permiso'");
$existe = mysqli_fetch_all($sql);
if (empty($existe) && $id_user != 1) {
    header("Location: permisos.php");   
}

////////////////////////////////
    if (!empty($_POST)) {


        if($_POST['tipo']=='tipo1'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];
          //  $precio = $_POST['precio'];
            //$cantidad = $_POST['cantidad'];
            $potencia = $_POST['potencia'];
           /// $relacion = $_POST['relacion'];
            $velocidad = $_POST['velocidad'];
            $voltaje = $_POST['voltaje'];

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) || 
              ///  empty($precio) || $precio <  0 || 
             //   empty($cantidad) || $cantidad < 0  ||  
                empty($potencia) || 
               // empty($relacion) ||
                empty($velocidad) ||
                empty($voltaje)

            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,potencia,velocidad,voltaje,usuario_id) values ('$codigo', '$producto','$modelo','$potencia','$velocidad','$voltaje','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }

        }

        ///////////////////////////


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        else if ($_POST['tipo']=='tipo4'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,usuario_id) values ('$codigo', '$producto','$modelo','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 


////////////////////////////////////////////////////////////////////////////////////////////////////////////////// PLC
        else if ($_POST['tipo']=='tipo9'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,usuario_id) values ('$codigo', '$producto','$modelo','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// GABINETES
        else if ($_POST['tipo']=='tipo10'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,usuario_id) values ('$codigo', '$producto','$modelo','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// ENCODERS
        else if ($_POST['tipo']=='tipo11'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,usuario_id) values ('$codigo', '$producto','$modelo','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 



////////////////////////////////////////////////////////////////////////////////////////////////////////////////// POLIPASTO ELECTRICO A CABLE
        else if ($_POST['tipo']=='tipo12'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];
            $capacidad = $_POST['capacidad'];
            $tipopolipasto = $_POST['tipopolipasto'];
            $izaje = $_POST['izaje'];
            $voltaje = $_POST['voltaje'];

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) || 
                empty($capacidad) || 
                empty($tipopolipasto) ||
                empty($izaje) ||
                empty($voltaje)
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,capacidad,tipopolipasto,izaje,voltaje,usuario_id) values ('$codigo', '$producto','$modelo','$capacidad','$tipopolipasto','$izaje','$voltaje','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 


////////////////////////////////////////////////////////////////////////////////////////////////////////////////// POLIPASTO ELECTRICO A CABLE
        else if ($_POST['tipo']=='tipo13'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
        

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion, usuario_id) values ('$codigo', '$producto','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        ////////////////////////////////////////////////////////////////////////////////////////////


        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// PALANQUILLA
        else if ($_POST['tipo']=='tipo14'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
        

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion, usuario_id) values ('$codigo', '$producto','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 


 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// TELEMANDOS Y BOTONERAS
        else if ($_POST['tipo']=='tipo15'){
            $codigo = $_POST['codigo'];
            $modelo = $_POST['modelo'];
        

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($modelo) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,modelo, usuario_id) values ('$codigo', '$modelo','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 


////////////////////////////////////////////////////////////////////////////////////////////////////////////////// CARROS TESTEROS
        else if ($_POST['tipo']=='tipo16'){
            $codigo = $_POST['codigo'];
            $modelo = $_POST['modelo'];
            $capacidad = $_POST['capacidad'];
        

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($modelo) ||
                empty($capacidad) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,modelo,capacidad, usuario_id) values ('$codigo', '$modelo','$capacidad','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////// CABLES
        else if ($_POST['tipo']=='tipo20'){
            $codigo = $_POST['codigo'];
            $tipocable = $_POST['tipocable'];
            $dimensiones = $_POST['dimensiones'];
          //  $cantidad = $_POST['cantidad'];
        

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($tipocable) ||
                empty($dimensiones)  
              //  empty($cantidad) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,tipocable,dimensiones, usuario_id) values ('$codigo', '$tipocable','$dimensiones','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 


////////////////////////////////////////////////////////////////////////////////////////////////////////////////// WINCHE ELECTRICO
        else if ($_POST['tipo']=='tipo17'){
            $codigo = $_POST['codigo'];
            $modelo = $_POST['modelo'];
            $capacidad = $_POST['capacidad'];
            $voltaje = $_POST['voltaje'];
        

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($modelo) ||
                empty($capacidad) ||
                 empty($voltaje) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,modelo,capacidad, voltaje, usuario_id) values ('$codigo', '$modelo','$capacidad','$voltaje','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////// LINEA FESTON
        else if ($_POST['tipo']=='tipo18'){
            $codigo = $_POST['codigo'];
            $longitud = $_POST['longitud'];
            $amperaje = $_POST['amperaje'];
          
        

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($longitud) ||
                empty($amperaje) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,longitud,amperaje,usuario_id) values ('$codigo', '$longitud','$amperaje','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 


        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////// LINEA BLINDADA
        else if ($_POST['tipo']=='tipo19'){
            $codigo = $_POST['codigo'];
            $longitud = $_POST['longitud'];
            $amperaje = $_POST['amperaje'];
            $alimentacion = $_POST['alimentacion'];
            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($longitud) || 
                empty($amperaje) || 
                empty($alimentacion) 
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,longitud,amperaje,alimentacion,usuario_id) values ('$codigo', '$longitud','$amperaje','$alimentacion','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 





////////////////////////////////////////////////////////////////////////////////////////////////////////////////// POLIPASTO ELECTRICO CADENA
        else if ($_POST['tipo']=='tipo5'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];
            $capacidad = $_POST['capacidad'];
            $tipopolipasto = $_POST['tipopolipasto'];
            $izaje = $_POST['izaje'];
            $voltaje = $_POST['voltaje'];

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) || 
                empty($capacidad) || 
                empty($tipopolipasto) ||
                empty($izaje) ||
                empty($voltaje)
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,capacidad,tipopolipasto,izaje,voltaje,usuario_id) values ('$codigo', '$producto','$modelo','$capacidad','$tipopolipasto','$izaje','$voltaje','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        else if ($_POST['tipo']=='tipo6'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];
            $potencia = $_POST['potencia'];
            $voltaje = $_POST['voltaje'];

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) || 
                empty($potencia) || 
                empty($voltaje)
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,potencia,voltaje,usuario_id) values ('$codigo', '$producto','$modelo','$potencia','$voltaje','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 



        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        else if ($_POST['tipo']=='tipo7'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];
            $potencia = $_POST['potencia'];
            $relacion = $_POST['relacion'];
            $velocidad = $_POST['velocidad'];
            $voltaje = $_POST['voltaje'];

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) || 
                empty($potencia) || 
                empty($relacion) ||
                empty($velocidad) ||
                empty($voltaje)
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,potencia,relacion,velocidad,voltaje,usuario_id) values ('$codigo', '$producto','$modelo','$potencia','$relacion','$velocidad','$voltaje','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 
         //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        else if ($_POST['tipo']=='tipo8'){
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $modelo = $_POST['modelo'];
            $relacion = $_POST['relacion'];
    

            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($modelo) || 
                empty($relacion) 
    
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,relacion,usuario_id) values ('$codigo', '$producto','$modelo','$relacion','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }
        //////////////////////////////////////////////////////////////////////////////////////////// 




        ///////////////////////////////////

        else if ($_POST['tipo']=='tipo2'){
            //TODO: cargar valores post para este tipo y guardar
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
          //  $atributo1 = $POST['attrributo1'];


            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) 
                //empty($atributo1)
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion) values ('$codigo', '$producto')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }

//////////////////////////////////


        
        //////////////////////////////


          else if ($_POST['tipo']=='tipo3'){
            //TODO: cargar valores post para este tipo y guardar
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
          //  $atributo1 = $POST['attrributo1'];


            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) 
                //empty($atributo1)
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion) values ('$codigo', '$producto')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }


        /////////////////
/////////////////
        else if ($_POST['tipo']=='tipo4'){
            //TODO: cargar valores post para este tipo y guardar
            $codigo = $_POST['codigo'];
            $producto = $_POST['producto'];
            $atributo1 = $POST['attrributo1'];



            $usuario_id = $_SESSION['idUser'];
            $alert = "";
            if (empty($codigo) || 
                empty($producto) || 
                empty($atributo1)
            ) {
                $alert = '<div class="alert alert-danger" role="alert">
                    Todo los campos son obligatorios
                  </div>';
            } else {
                $query = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo = '$codigo'");
                $result = mysqli_fetch_array($query);
                if ($result > 0) {
                    $alert = '<div class="alert alert-warning" role="alert">
                            El código ya existe
                        </div>';
                } else {
                    $query_insert = mysqli_query($conexion,"INSERT INTO producto(codigo,descripcion,modelo,precio,existencia,potencia,relacion,velocidad,voltaje,usuario_id) values ('$codigo', '$producto','$modelo','$precio','$cantidad','$potencia','$relacion','$velocidad','$voltaje','$usuario_id')");
                    if ($query_insert) {
                        $alert = '<div class="alert alert-success" role="alert">
                    Producto Registrado
                  </div>';
                    } else {
                        $alert = '<div class="alert alert-danger" role="alert">
                    Error al registrar el producto
                  </div>';
                    }
                }
            }
        }


    }
    ?>
 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto">Motor<i class=""></i></button>
 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto4">Pantalla<i class=""></i></button>

 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto6">Variador<i class=""></i></button>
 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto7">Motoreductor<i class=""></i></button>
 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto8">Reductor<i class=""></i></button>
 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto9">PLC<i class=""></i></button>
 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto10">Gabinetes<i class=""></i></button>
 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto11">Encoders<i class=""></i></button>
 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto2">Servicio<i class=""></i></button>
 <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto20">Cables<i class=""></i></button>
  <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto5">Polipasto Electrico a Cadena<i class=""></i></button>
    <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto12">Polipasto Electrico a Cable<i class=""></i></button>
     <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto13">Respuesto <i class=""></i></button>
      <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto14">Palanquilla<i class=""></i></button>
       <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto15">Telemandos y Botoneras<i class=""></i></button>
       <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto16">Carros Testeros<i class=""></i></button>
       <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto17">Winche Electrico<i class=""></i></button>
       <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto18">Linea Foston<i class=""></i></button>
        
         <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_producto19">Linea Blindada<i class=""></i></button>

 <?php echo isset($alert) ? $alert : ''; ?>
 <div class="table-responsive">
     <table class="table table-striped table-bordered" id="tbl">
         <thead class="thead-dark">
             <tr>
                 <th>#</th>
                 <th>Código</th>
                 <th>Producto</th>
                 <th>Modelo</th>
                 <th>Precio</th>
                 <th>Stock</th>
                 <th>Potencia</th>
                 <th>Relación</th>
                 <th>Velocidad</th>
                 <th>Voltaje</th>
                  <th>Capacidad</th>
                   <th>Tipo</th>
                    <th>Izaje</th>
                     <th>Dimensiones</th>
                      <th>Longitud</th>
                       <th>Amperaje</th>
                        <th>Alimentación</th>
                        <th>Cantidad</th>

                 <th>Estado</th>
                 <th></th>
             </tr>
         </thead>
         <tbody>
             <?php
                include "../conexion.php";

                $query = mysqli_query($conexion, "SELECT * FROM producto");
                $result = mysqli_num_rows($query);
                if ($result > 0) {
                    while ($data = mysqli_fetch_assoc($query)) {
                        if ($data['estado'] == 1) {
                            $estado = '<span class="badge badge-pill badge-success">Activo</span>';
                        } else {
                            $estado = '<span class="badge badge-pill badge-danger">Inactivo</span>';
                        }
                ?>
                     <tr>
                         <td><?php echo $data['codproducto']; ?></td>
                         <td><?php echo $data['codigo']; ?></td>
                         <td><?php echo $data['descripcion']; ?></td>
                         <td><?php echo $data['modelo']; ?></td>
                         <td><?php echo number_format ($data['precio'], 2, '.', ','); ?></td>
                         <td><?php echo $data['existencia']; ?></td>
                         <td><?php echo $data['potencia']; ?></td>
                         <td><?php echo $data['relacion']; ?></td>
                         <td><?php echo $data['velocidad']; ?></td>
                         <td><?php echo $data['voltaje']; ?></td>
                         <td><?php echo $data['capacidad']; ?></td>
                         <td><?php echo $data['tipopolipasto']; ?></td>
                         <td><?php echo $data['izaje']; ?></td>
                         <td><?php echo $data['dimensiones']; ?></td>
                         <td><?php echo $data['longitud']; ?></td>
                         <td><?php echo $data['amperaje']; ?></td>
                         <td><?php echo $data['alimentacion']; ?></td>
                         <td><?php echo $estado ?></td>
                         <td>
                         <td>
                           <?php
                                if ($data['estado'] == 'Activo') {
                                
                                } elseif($data['estado'] == 'Inactivo') {
                            
                               } else {
                            
                               } 
                                {
                               ?>
                                 <a href="agregar_producto.php?id=<?php echo $data['codproducto']; ?>" class="btn btn-primary"><i class='fas fa-audio-description'></i></a>

                                 <a href="editar_producto.php?id=<?php echo $data['codproducto']; ?>" class="btn btn-success"><i class='fas fa-edit'></i></a>

                                 <form action="eliminar_producto.php?id=<?php echo $data['codproducto']; ?>" method="post" class="confirmar d-inline">
                                     <button class="btn btn-danger" type="submit"><i class='fas fa-trash-alt'></i> </button>
                                 </form>
                             <?php } ?>
                         </td>
                     </tr>
             <?php }
                } ?>
         </tbody>

     </table>
 </div>
 <div id="nuevo_producto" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo  Motor</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="MOTOR">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                   
                   
                      <div class="form-group">
                         <label for="potencia">Potencia</label>
                         <input type="text" placeholder="Ingrese la potencia" class="form-control" name="potencia" id="potencia">
                     </div>
                   
                      <div class="form-group">
                         <label for="velocidad">Velocidad</label>
                         <input type="text" placeholder="Ingrese la velocidad" class="form-control" name="velocidad" id="velocidad">
                     </div>
                      <div class="form-group">
                         <label for="voltaje">Voltaje</label>
                         <input type="text" placeholder="Ingrese el voltaje" class="form-control" name="voltaje" id="voltaje">
                     </div>
                     <input type="hidden" name="tipo" value="tipo1">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>


 <div id="nuevo_producto4" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nueva Pantalla</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="PANTALLA">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                     <input type="hidden" name="tipo" value="tipo4">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>


 <div id="nuevo_producto9
 " class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo PLC</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                     <input type="hidden" name="tipo" value="tipo9">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>
  <div id="nuevo_producto10" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo Gabinete</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="GABINETE">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                     <input type="hidden" name="tipo" value="tipo10">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>

   <div id="nuevo_producto11" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo Encoders</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="ENCODERS">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                     <input type="hidden" name="tipo" value="tipo11">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>





 <div id="nuevo_producto5" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo Polipasto Electrico a Cadena</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="POLIPASTO ELECTRICO A CADENA">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="capacidad">Capacidad</label>
                         <input type="text" placeholder="Ingrese la capacidad" class="form-control" name="capacidad" id="capacidad">
                     </div>

                     <div class="form-group">
                         <label for="tipopolipasto">Tipo</label>
                         <input type="text" placeholder="Ingrese el tipo" class="form-control" name="tipopolipasto" id="tipopolipasto">
                     </div>


                     <div class="form-group">
                         <label for="izaje">Altura de Izaje</label>
                         <input type="text" placeholder="Ingrese la altura de izaje " class="form-control" name="izaje" id="izaje">
                     </div>
                    
                      <div class="form-group">
                         <label for="voltaje">Voltaje</label>
                         <input type="text" placeholder="Ingrese el voltaje" class="form-control" name="voltaje" id="voltaje">
                     </div>
                     <input type="hidden" name="tipo" value="tipo5">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>

<div id="nuevo_producto12" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo Polipasto Electrico a Cable</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">  
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="POLIPASTO ELECTRICO A CABLE">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="capacidad">Capacidad</label>
                         <input type="text" placeholder="Ingrese la capacidad" class="form-control" name="capacidad" id="capacidad">
                     </div>

                     <div class="form-group">
                         <label for="tipopolipasto">Tipo</label>
                         <input type="text" placeholder="Ingrese el tipo" class="form-control" name="tipopolipasto" id="tipopolipasto">
                     </div>


                     <div class="form-group">
                         <label for="izaje">Altura de Izaje</label>
                         <input type="text" placeholder="Ingrese la altura de izaje " class="form-control" name="izaje" id="izaje">
                     </div>
                    
                      <div class="form-group">
                         <label for="voltaje">Voltaje</label>
                         <input type="text" placeholder="Ingrese el voltaje" class="form-control" name="voltaje" id="voltaje">
                     </div>
                     <input type="hidden" name="tipo" value="tipo12">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>

 <div id="nuevo_producto13" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo Repuesto</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">  
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Item del Repuesto</label>
                         <input type="text" placeholder="Ingrese el Item del Repuesto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Modelo  Del Repuesto</label>
                         <input type="text" placeholder="Ingrese el modelo " name="producto" id="producto" class="form-control" value="">
                     </div>
                  
                     <input type="hidden" name="tipo" value="tipo13">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>


<div id="nuevo_producto14" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nueva Palanquilla</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">  
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Codigo</label>
                         <input type="text" placeholder="Ingrese el codigo" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Demensiones</label>
                         <input type="text" placeholder="Ingrese la Dimensión " name="producto" id="producto" class="form-control" value="">
                     </div>
                  
                     <input type="hidden" name="tipo" value="tipo14">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>

<div id="nuevo_producto15" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Telemandos y Botoneras</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">  
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Codigo</label>
                         <input type="text" placeholder="Ingrese el codigo" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo " name="modelo" id="modelo" class="form-control" value="">
                     </div>
                  
                     <input type="hidden" name="tipo" value="tipo15">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>


<div id="nuevo_producto16" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Carros Testeros</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">  
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Codigo</label>
                         <input type="text" placeholder="Ingrese el codigo" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo " name="modelo" id="modelo" class="form-control" value="">
                     </div>

                      <div class="form-group">
                         <label for="capacidad">Capacidad</label>
                         <input type="text" placeholder="Ingrese la capacidad " name="capacidad" id="capacidad" class="form-control" value="">
                     </div>
                  
                  
                     <input type="hidden" name="tipo" value="tipo16">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>

<div id="nuevo_producto17" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Winche Electrico</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">  
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Codigo</label>
                         <input type="text" placeholder="Ingrese el codigo" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo " name="modelo" id="modelo" class="form-control" value="">
                     </div>

                      <div class="form-group">
                         <label for="capacidad">Capacidad</label>
                         <input type="text" placeholder="Ingrese la capacidad " name="capacidad" id="capacidad" class="form-control" value="">
                     </div>
                  

                      <div class="form-group">
                         <label for="voltaje">Voltaje</label>
                         <input type="text" placeholder="Ingrese el voltaje " name="voltaje" id="voltaje" class="form-control" value="">
                     </div>
                  
                  
                     <input type="hidden" name="tipo" value="tipo17">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>

<div id="nuevo_producto18" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Linea Feston</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">  
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Codigo</label>
                         <input type="text" placeholder="Ingrese el codigo" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="longitud">Longitud</label>
                         <input type="text" placeholder="Ingrese la longitud " name="longitud" id="longitud" class="form-control" value="">
                     </div>

                      <div class="form-group">
                         <label for="amperaje">Amperaje</label>
                         <input type="text" placeholder="Ingrese el amperaje " name="amperaje" id="amperaje" class="form-control" value="">
                     </div>
                  
                  
                     <input type="hidden" name="tipo" value="tipo18">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>


 <div id="nuevo_producto19" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Linea Blindada</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">  
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Codigo</label>
                         <input type="text" placeholder="Ingrese el codigo" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="longitud">Longitud</label>
                         <input type="text" placeholder="Ingrese la longitud " name="longitud" id="longitud" class="form-control" value="">
                     </div>

                      <div class="form-group">
                         <label for="amperaje">Amperaje</label>
                         <input type="text" placeholder="Ingrese el amperaje " name="amperaje" id="amperaje" class="form-control" value="">
                     </div>
                  

                      <div class="form-group">
                         <label for="alimentacion">Alimentacion</label>
                         <input type="text" placeholder="Ingrese la alimentacion" name="alimentacion" id="alimentacion" class="form-control" value="">
                     </div>
                  
                  
                     <input type="hidden" name="tipo" value="tipo19">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>

 <div id="nuevo_producto20" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Cables</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">  
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Codigo</label>
                         <input type="text" placeholder="Ingrese el codigo" name="codigo" id="codigo" class="form-control">
                     </div>

                      <div class="form-group">
                         <label for="tipocable">Tipo</label>
                         <input type="text" placeholder="Ingrese el tipo " name="tipocable" id="tipocable" class="form-control" value="">
                     </div>

                     <div class="form-group">
                         <label for="dimensiones">Demensiones</label>
                         <input type="text" placeholder="Ingrese la Dimensión " name="dimensiones" id="dimensiones" class="form-control" value="">
                     </div>
                  
                   
                  
                     <input type="hidden" name="tipo" value="tipo20">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>

<div id="nuevo_producto6" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo Variador</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="VARIADOR">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                      <div class="form-group">
                         <label for="potencia">Potencia</label>
                         <input type="text" placeholder="Ingrese la potencia" class="form-control" name="potencia" id="potencia">
                     </div>
            
                      <div class="form-group">
                         <label for="voltaje">Voltaje</label>
                         <input type="text" placeholder="Ingrese el voltaje" class="form-control" name="voltaje" id="voltaje">
                     </div>
                     <input type="hidden" name="tipo" value="tipo6">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>

<div id="nuevo_producto7" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo Motoreductor</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="MOTOREDUCTOR">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                    
                      <div class="form-group">
                         <label for="potencia">Potencia</label>
                         <input type="text" placeholder="Ingrese la potencia" class="form-control" name="potencia" id="potencia">
                     </div>
                      <div class="form-group">
                         <label for="relacion">Relación</label>
                         <input type="text" placeholder="Ingrese relacion" class="form-control" name="relacion" id="relacion">
                     </div>
                      <div class="form-group">
                         <label for="velocidad">Velocidad</label>
                         <input type="text" placeholder="Ingrese la velocidad" class="form-control" name="velocidad" id="velocidad">
                     </div>
                      <div class="form-group">
                         <label for="voltaje">Voltaje</label>
                         <input type="text" placeholder="Ingrese el voltaje" class="form-control" name="voltaje" id="voltaje">
                     </div>
                     <input type="hidden" name="tipo" value="tipo7">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>
 <div id="nuevo_producto8" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo Reductor</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Producto</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Producto</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="REDUCTOR">
                     </div>
                           <div class="form-group">
                         <label for="modelo">Modelo</label>
                         <input type="text" placeholder="Ingrese el modelo del producto" name="modelo" id="modelo" class="form-control">
                     </div>
                    
                      <div class="form-group">
                         <label for="relacion">Relación</label>
                         <input type="text" placeholder="Ingrese relacion" class="form-control" name="relacion" id="relacion">
                     </div> 
                     <input type="hidden" name="tipo" value="tipo8">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>



 <div id="nuevo_producto2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header bg-primary text-white">
                 <h5 class="modal-title" id="my-modal-title">Nuevo Servicio</h5>
                 <button class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="" method="post" autocomplete="off">
                     <?php echo isset($alert) ? $alert : ''; ?>
                     <div class="form-group">
                         <label for="codigo">Código del Servicio</label>
                         <input type="text" placeholder="Ingrese código del producto" name="codigo" id="codigo" class="form-control">
                     </div>
                     <div class="form-group">
                         <label for="producto">Servicio</label>
                         <input type="text" placeholder="Ingrese nombre del producto" name="producto" id="producto" class="form-control" value="">
                    
                     <input type="hidden" name="tipo" value="tipo2">
                     <input type="submit" value="Guardar Producto" class="btn btn-primary">
                 </form>
             </div>
         </div>
     </div>
 </div>









 <?php include_once "includes/footer.php"; ?>
