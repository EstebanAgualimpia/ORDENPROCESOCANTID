<?php
include_once "includes/header.php";
include "../conexion.php";
$id_user = $_SESSION['idUser'];
$permiso = "productos";
$sql = mysqli_query($conexion, "SELECT p.*, d.* FROM permisos p INNER JOIN detalle_permisos d ON p.id = d.id_permiso WHERE d.id_usuario = $id_user AND p.nombre = '$permiso'");
$existe = mysqli_fetch_all($sql);
if (empty($existe) && $id_user != 1) {
  header("Location: permisos.php");
}
if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['producto']) || 
    empty($_POST['modelo']) || 
    empty($_POST['precio']) || 
    empty($_POST['potencia']) ||
    empty($_POST['relacion']) ||
    empty($_POST['velocidad']) ||
    empty($_POST['voltaje']) 

  ) {
    $alert = '<div class="alert alert-primary" role="alert">
              
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $producto = $_POST['producto'];
    $modelo = $_POST['modelo'];
    $precio = $_POST['precio'];
    $potencia = $_POST['potencia'];
    $relacion = $_POST['relacion'];
    $velocidad = $_POST['velocidad'];
    $voltaje = $_POST['voltaje'];

    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', descripcion = '$producto', modelo = '$modelo', precio= $precio,  potencia = '$potencia',  relacion = '$relacion',  velocidad = '$velocidad', voltaje = '$voltaje'  WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////REDUCTOR


if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['producto']) || 
    empty($_POST['modelo']) || 
    empty($_POST['precio']) || 
    empty($_POST['relacion']) 
 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
              
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $producto = $_POST['producto'];
    $modelo = $_POST['modelo'];
    $precio = $_POST['precio'];
    $relacion = $_POST['relacion'];
   
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', descripcion = '$producto', modelo = '$modelo', precio= $precio,  relacion = '$relacion' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////////////////////////////////////


//////////////////LINEA BLINDADA


if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['longitud']) || 
    empty($_POST['amperaje']) || 
    empty($_POST['alimentacion']) 
 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
              
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $longitud = $_POST['longitud'];
    $amperaje = $_POST['amperaje'];
    $alimentacion = $_POST['alimentacion'];
   
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', longitud = '$longitud', amperaje = '$amperaje', alimentacion = '$alimentacion' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////////////////////////////////////

//////////////////WINCHE ELECTRICO


if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['modelo']) || 
    empty($_POST['capacidad']) || 
    empty($_POST['voltaje']) 
 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
            
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $modelo = $_POST['modelo'];
    $capacidad = $_POST['capacidad'];
    $voltaje = $_POST['voltaje'];
  
   
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', modelo = '$modelo', capacidad = '$capacidad', voltaje = '$voltaje' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////////////////////////////////////

/////////////////LINEA FESTON


if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['longitud']) || 
    empty($_POST['amperaje']) 
 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
            
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $longitud = $_POST['longitud'];
    $amperaje = $_POST['amperaje'];
  
   
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', longitud = '$longitud', amperaje = '$amperaje' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////////////////////////////////////
//////////////////MOTOR


if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['producto']) || 
    empty($_POST['modelo']) || 
    empty($_POST['potencia']) || 
    empty($_POST['velocidad']) ||
    empty($_POST['voltaje']) 
 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
              
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $producto = $_POST['producto'];
    $modelo = $_POST['modelo'];
    $potencia = $_POST['potencia'];
    $velocidad = $_POST['velocidad'];
    $voltaje = $_POST['voltaje'];
   
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', descripcion = '$producto', modelo = '$modelo',  potencia = '$potencia', velocidad = '$velocidad', voltaje = '$voltaje' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////POLIPASTO ELECTRICO A CADENA
if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['producto']) || 
    empty($_POST['modelo']) || 
    empty($_POST['capacidad']) || 
    empty($_POST['tipopolipasto']) ||
    empty($_POST['izaje']) ||
    empty($_POST['voltaje']) 
 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
             
                         </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $producto = $_POST['producto'];
    $modelo = $_POST['modelo'];
    $capacidad = $_POST['capacidad'];
    $tipopolipasto = $_POST['tipopolipasto'];
     $izaje = $_POST['izaje'];
    $voltaje = $_POST['voltaje'];
   
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', descripcion = '$producto', modelo = '$modelo',  capacidad = '$capacidad', tipopolipasto = '$tipopolipasto', izaje = '$izaje', voltaje = '$voltaje' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////CABLES


if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['tipopolipasto']) || 
    empty($_POST['dimensiones'])
 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
             
                         </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $tipopolipasto = $_POST['tipopolipasto'];
    $dimensiones = $_POST['dimensiones'];
    
   
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', tipopolipasto = '$tipopolipasto', dimensiones = '$dimensiones' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////VARIADOR
if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['producto']) || 
    empty($_POST['modelo']) || 
    empty($_POST['potencia']) || 
    empty($_POST['voltaje']) 
 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
              
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $producto = $_POST['producto'];
    $modelo = $_POST['modelo'];
    $potencia = $_POST['potencia'];
    $voltaje = $_POST['voltaje'];
   
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', descripcion = '$producto', modelo = '$modelo',  potencia = '$potencia', voltaje = '$voltaje' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}
//////////////////SERVICIO
if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['producto']) 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
              
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $producto = $_POST['producto'];
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', descripcion = '$producto' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}
//////////////////PANTALLA, GABINETE, PLC, ENCODERS
if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['producto']) || 
    empty($_POST['modelo']) 
  ) {
    $alert = '<div class="alert alert-primary" role="alert">
            
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $producto = $_POST['producto'];
    $modelo = $_POST['modelo'];
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', descripcion = '$producto' , modelo = '$modelo' WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}
//////////////////SERVICIO, REPUESTO POLIPASTO
if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['producto']) 

  ) {
    $alert = '<div class="alert alert-primary" role="alert">
              
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $producto = $_POST['producto'];
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', descripcion = '$producto'  WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////TELEMANDOS Y BOTONERAS
if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['modelo']) 

  ) {
    $alert = '<div class="alert alert-primary" role="alert">
              
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $modelo = $_POST['modelo'];
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', modelo = '$modelo'  WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}

//////////////////CARROS TESTEROS
if (!empty($_POST)) {
  $alert = "";
  if (empty($_POST['codigo']) || 
    empty($_POST['modelo']) ||
    empty($_POST['capacidad']) 


  ) {
    $alert = '<div class="alert alert-primary" role="alert">
              
            </div>';
  } else {
    $codproducto = $_GET['id'];
    $codigo = $_POST['codigo'];
    $modelo = $_POST['modelo'];
    $capacidad = $_POST['capacidad'];
    $query_update = mysqli_query($conexion, "UPDATE producto SET codigo = '$codigo', modelo = '$modelo', capacidad = '$capacidad '  WHERE codproducto = $codproducto");
    if ($query_update) {
      $alert = '<div class="alert alert-primary" role="alert">
              Producto Modificado
            </div>';
    } else {
      $alert = '<div class="alert alert-primary" role="alert">
                Error al Modificar
              </div>';
    }
  }
}
// Validar producto

if (empty($_REQUEST['id'])) {
  header("Location: productos.php");
} else {
  $id_producto = $_REQUEST['id'];
  if (!is_numeric($id_producto)) {
    header("Location: productos.php");
  }
  $query_producto = mysqli_query($conexion, "SELECT * FROM producto WHERE codproducto = $id_producto");
  $result_producto = mysqli_num_rows($query_producto);

  if ($result_producto > 0) {
    $data_producto = mysqli_fetch_assoc($query_producto);
  } else {
    header("Location: productos.php");
  }
}
?>
<div class="row">
  <div class="col-lg-6 m-auto">

    <div class="card">
      <div class="card-header bg-primary text-white">
        Modificar producto
      </div>
      <div class="card-body">
        <form action="" method="post">
          <?php echo isset($alert) ? $alert : ''; ?>
          <div class="form-group">
            <label for="codigo">Código de Barras</label>
            <input type="text" placeholder="Ingrese código de barras" name="codigo" id="codigo" class="form-control" value="<?php echo $data_producto['codigo']; ?>">
          </div>
          <div class="form-group">
            <label for="producto">Producto</label>
            <input type="text" class="form-control" placeholder="Ingrese nombre del producto" name="producto" id="producto" value="<?php echo $data_producto['descripcion']; ?>">

          </div>
          <div class="form-group">
            <label for="modelo">Modelo</label>
            <input type="text" class="form-control" placeholder="Ingrese nombre del producto" name="modelo" id="modelo" value="<?php echo $data_producto['modelo']; ?>">

          </div>

          <div class="form-group">
            <label for="precio">Precio</label>
            <input type="text" placeholder="Ingrese precio" class="form-control" name="precio" id="precio" value="<?php echo $data_producto['precio']; ?>">

          </div>

           <div class="form-group">
            <label for="potencia">Potencia</label>
            <input type="text" placeholder="Ingrese precio" class="form-control" name="potencia" id="potencia" value="<?php echo $data_producto['potencia']; ?>">

          </div>

           <div class="form-group">
            <label for="relacion">Relación</label>
            <input type="text" placeholder="Ingrese precio" class="form-control" name="relacion" id="relacion" value="<?php echo $data_producto['relacion']; ?>">

          </div>
           <div class="form-group">
            <label for="velocidad">Velocidad</label>
            <input type="text" placeholder="Ingrese precio" class="form-control" name="velocidad" id="velocidad" value="<?php echo $data_producto['velocidad']; ?>">

          </div>

           <div class="form-group">
            <label for="voltaje">Voltaje</label>
            <input type="text" placeholder="Ingrese precio" class="form-control" name="voltaje" id="voltaje" value="<?php echo $data_producto['voltaje']; ?>">

          </div>

            <div class="form-group">
            <label for="capacidad">Capacidad</label>
            <input type="text" placeholder="Ingrese precio" class="form-control" name="capacidad" id="capacidad" value="<?php echo $data_producto['capacidad']; ?>">

          </div>
           <div class="form-group">
            <label for="tipopolipasto">Tipo</label>
            <input type="text" placeholder="Ingrese el tipo" class="form-control" name="tipopolipasto" id="tipopolipasto" value="<?php echo $data_producto['tipopolipasto']; ?>">

          </div>

 <div class="form-group">
            <label for="izaje">Altura Izaje</label>
            <input type="text" placeholder="Ingrese la Altura de Izaje" class="form-control" name="izaje" id="izaje" value="<?php echo $data_producto['izaje']; ?>">

          </div>

 <div class="form-group">
            <label for="dimensiones">Dimensiones</label>
            <input type="text" placeholder="Ingrese las dimensiones" class="form-control" name="dimensiones" id="dimensiones" value="<?php echo $data_producto['dimensiones']; ?>">

          </div>

 <div class="form-group">
            <label for="longitud">Longitud</label>
            <input type="text" placeholder="Ingrese la Longitud" class="form-control" name="longitud" id="longitud" value="<?php echo $data_producto['longitud']; ?>">

          </div>

 <div class="form-group">
            <label for="amperaje">Amperaje</label>
            <input type="text" placeholder="Ingrese el amperaje" class="form-control" name="amperaje" id="amperaje" value="<?php echo $data_producto['amperaje']; ?>">

          </div>

 <div class="form-group">
            <label for="alimentacion">Alimentación</label>
            <input type="text" placeholder="Ingrese la alimentacion" class="form-control" name="alimentacion" id="capacidad" value="<?php echo $data_producto['alimentacion']; ?>">

          </div>

<input type="submit" value="Actualizar Producto" class="btn btn-primary">
          <a href="productos.php" class="btn btn-danger">Atras</a>
        </form>
      </div>
    </div>
  </div>
</div>
<?php include_once "includes/footer.php"; ?>