<?php
require_once "../conexion.php";
session_start();
if (isset($_GET['q'])) {
    $datos = array();
    $nombre = $_GET['q'];
    ///////////////Con la linea de abajo busco el cliente por NIT Y por nombre
     $cliente = mysqli_query($conexion, "SELECT * FROM cliente WHERE NIT LIKE '%" . $nombre . "%' OR nombre LIKE '%" . $nombre . "%' AND estado = 1");

    while ($row = mysqli_fetch_assoc($cliente)) {
        $data['id'] = $row['idcliente'];
        $data['label'] = $row['nombre'];
        $data['NIT'] = $row['NIT'];
        $data['direccion'] = $row['direccion'];
        $data['telefono'] = $row['telefono'];
        $data['ciudad'] = $row['ciudad'];
        array_push($datos, $data);
    }
    echo json_encode($datos);
    die();
    /////////////////////////////////
    }else if (isset($_GET['p'])) {
    $datos = array();
    $nombre = $_GET['p'];
    $proveedor = mysqli_query($conexion, "SELECT * FROM proveedor WHERE NIT LIKE '%" . $nombre . "%' OR nombre LIKE '%" . $nombre . "%' AND estado = 1");
    while ($row = mysqli_fetch_assoc($proveedor)) {
        $data['id'] = $row['idproveedor'];
        $data['label'] = $row['nombre'];
        $data['NIT'] = $row['NIT'];
        $data['telefono'] = $row['telefono'];
        $data['correo'] = $row['correo'];
        array_push($datos, $data);
    }
    echo json_encode($datos);
    die();
    ////////////////////////////////////
    }else if (isset($_GET['pro'])) {
    $datos = array();
    $nombre = $_GET['pro'];
    $producto = mysqli_query($conexion, "SELECT * FROM producto WHERE codigo LIKE '%" . $nombre . "%' OR descripcion LIKE '%" . $nombre . "%' AND estado = 1");
    while ($row = mysqli_fetch_assoc($producto)) {
        $data['id'] = $row['codproducto'];
        $data['label'] = $row['codigo'] . ' - ' .$row['descripcion'];
        // linea para mostrar los datos del producto en Campo buscar producto
        $data['label'] = $row['codigo'] . ' - ' .$row['descripcion'] . ' - ' .$row['modelo'] . ' - ' .$row['potencia']. ' - ' .$row['relacion']. ' - ' .$row['velocidad']. ' - ' .$row['voltaje'];
        $data['value'] = $row['descripcion'];
        $data['precio'] = $row['precio'];
        $data['existencia'] = $row['existencia'];
        array_push($datos, $data);
    }
    echo json_encode($datos);
    die();
    ////////////////
}else if (isset($_GET['detalle'])) {
    $id = $_SESSION['idUser'];
    $datos = array();
    $detalle = mysqli_query($conexion, "SELECT d.*, p.codproducto, p.descripcion,p.codigo,p.modelo,p.potencia,p.relacion,p.velocidad,p.voltaje,p.capacidad,p.tipopolipasto,p.izaje,p.dimensiones,p.longitud,p.amperaje,p.alimentacion
FROM detalle_temp d 
INNER JOIN producto p 
ON d.id_producto = p.codproducto 
WHERE d.id_usuario = $id");
    $sumar = mysqli_query($conexion, "SELECT total, SUM(total) AS total_pagar FROM detalle_temp WHERE id_usuario = $id");
    while ($row = mysqli_fetch_assoc($detalle)) {
        // Agregar el id_producto
        $data['id_producto'] = $row['codproducto'];

        $data['id'] = $row['id'];
        $data['descripcion'] = $row['descripcion'];
       // $data['incluye'] = $row['incluye'];
        $data['modelo'] = $row['modelo'];
        $data['potencia'] = $row['potencia'];
        $data['relacion'] = $row['relacion'];
        $data['velocidad'] = $row['velocidad'];
        $data['voltaje'] = $row['voltaje'];
        $data['capacidad'] = $row['capacidad'];
        $data['tipopolipasto'] = $row['tipopolipasto'];
        $data['izaje'] = $row['izaje'];
        $data['dimensiones'] = $row['dimensiones'];
        $data['longitud'] = $row['longitud'];
        $data['amperaje'] = $row['amperaje'];
        $data['alimentacion'] = $row['alimentacion'];
        $data['cantidad'] = $row['cantidad'];
        $data['precio_venta'] = $row['precio_venta'];
        // $data['sub_total'] = number_format($row['precio_venta'] * $row['cantidad'], 2, '.', ',');
        $data['sub_total'] = $row['precio_venta'] * $row['cantidad'];
        array_push($datos, $data);
    }
    echo json_encode($datos);
    die();
} else if (isset($_GET['delete_detalle'])) {
    $id_detalle = $_GET['id'];
    $verificar = mysqli_query($conexion, "SELECT * FROM detalle_temp WHERE id = $id_detalle");
    $datos = mysqli_fetch_assoc($verificar);
    if ($datos['cantidad'] > 1) {
        $cantidad = $datos['cantidad'] - 1;
        $query = mysqli_query($conexion, "UPDATE detalle_temp SET cantidad = $cantidad WHERE id = $id_detalle");
        if ($query) {
            $msg = "restado";
        } else {
            $msg = "Error";
        }
    }else{
        $query = mysqli_query($conexion, "DELETE FROM detalle_temp WHERE id = $id_detalle");
        if ($query) {
            $msg = "ok";
        } else {
            $msg = "Error";
        }
    }
    echo $msg;
    die();
} else if (isset($_POST['procesarVenta'])) {
    $id_cliente = $_POST['id'];
    $id_user = $_SESSION['idUser'];
    $tiposervicio = $_POST['tiposervicio'];
    $fecha = $_POST['fecha'];
    $tiempoentrega = $_POST['tiempoentrega'];
    $ordeno = $_POST['ordeno'];
    $descripcionfacturar = $_POST['descripcionfacturar'];
    $nombrevendedor = $_POST['nombrevendedor'];
    $numeroorden = $_POST['numeroorden'];
    $formapago = $_POST['formapago'];
    $nordencompra = $_POST['nordencompra'];
    $observaciones = $_POST['observaciones'];
    $incluye = $_POST['incluye'];
    //move_uploaded_file($_FILES["campoarchivo"]["tmp_name"], $_FILES['campoarchivo']['name']);
    // $estadoorden = $_GET['estadoorden'];
    //print_r($_FILES['campoarchivo']['name']);
    $newfilename = $numeroorden. "OC". ".pdf"; //Lo stoy tomando de id_cliente
     move_uploaded_file($_FILES["campoarchivo"]["tmp_name"], "OrdenesDeCompra/".$newfilename);
    //move_uploaded_file($_FILES["campoarchivo"]["tmp_name"], "upload/".$newfilename);
    $consulta = mysqli_query($conexion, "SELECT total, SUM(total) AS total_pagar FROM detalle_temp WHERE id_usuario = $id_user");
    $result = mysqli_fetch_assoc($consulta);
    $total = $result['total_pagar'];
    $insertar = mysqli_query($conexion, "INSERT INTO ventas(id_cliente, total, id_usuario, tiposervicio,fecha,tiempoentrega,ordeno,descripcionfacturar,nombrevendedor,numeroorden,formapago,nordencompra,observaciones,incluye) VALUES ($id_cliente, '$total', $id_user, '$tiposervicio','$fecha','$tiempoentrega','$ordeno','$descripcionfacturar','$nombrevendedor','$numeroorden','$formapago','$nordencompra','$observaciones','$incluye')");
    //$insertarDett = mysqli_query($conexion, "INSERT INTO detalle_venta(incluye) VALUES ('$incluye')");
    if ($insertar) {
        // Nota: No se debe obtener el ID insertado de esta manera
        // Leer {https://www.php.net/manual/en/mysqli.insert-id.php}
        $id_maximo = mysqli_query($conexion, "SELECT MAX(id) AS total FROM ventas");
        
        $resultId = mysqli_fetch_assoc($id_maximo);
        $ultimoId = $resultId['total'];
        $consultaDetalle = mysqli_query($conexion, "SELECT * FROM detalle_temp WHERE id_usuario = $id_user");
        while ($row = mysqli_fetch_assoc($consultaDetalle)) {
            $id_producto = $row['id_producto'];
            $cantidad = $row['cantidad'];
            $precio = $row['precio_venta'];
         //   $incluye = $_POST['incluye'];
            $insertarDet = mysqli_query($conexion, "INSERT INTO detalle_venta(id_producto, id_venta, cantidad, precio) VALUES ($id_producto, $ultimoId, $cantidad, '$precio')");
            $stockActual = mysqli_query($conexion, "SELECT * FROM producto WHERE codproducto = $id_producto");
            $stockNuevo = mysqli_fetch_assoc($stockActual);
            $stockTotal = $stockNuevo['existencia'] - $cantidad;
            $stock = mysqli_query($conexion, "UPDATE producto SET existencia = $stockTotal WHERE codproducto = $id_producto");
        } 
        if ($insertarDet) {
            $eliminar = mysqli_query($conexion, "DELETE FROM detalle_temp WHERE id_usuario = $id_user");
            $msg = array('id_cliente' => $id_cliente, 'id_venta' => $ultimoId);
        } 
    }else{
        $msg = array('mensaje' => 'error');
    }
    echo json_encode($msg);
    die();
}

if (isset($_POST['action']) && $_POST['action'] === 'modificarPrecio') {
    // Agregando caso modificarPrecio por POST
    $idUser      = $_SESSION['idUser'];
    $idDetalle   = $_POST['id_detalle'];
    $idProducto  = $_POST['id_producto'];
    $nuevoPrecio = $_POST['nuevo_precio'];
     //$incluye = $_POST['incluye'];


    $sDetalle = "
        SELECT *
        FROM detalle_temp
        WHERE id = {$idDetalle}
            AND id_usuario = {$idUser}
    ";
    $qDetalle = mysqli_query($conexion, $sDetalle);
    $rDetalle = mysqli_fetch_assoc($qDetalle);

    if ($qDetalle === false
        || !empty(mysqli_error($conexion))
        || mysqli_num_rows($qDetalle) === 0
    ) {
        // Si ocurrió algún error de conexión,
        // consulta o no hay registro
        // enviar a vista un mensaje de error
        die(json_encode([
            'success' => false,
            'msg'     => 'Detalle no encontrado',
        ]));
    }

    $nuevoTotal = (float)$rDetalle['cantidad'] * (float)$nuevoPrecio;
    $sActualizar = "
        UPDATE detalle_temp
        SET precio_venta = '{$nuevoPrecio}',
            total = '{$nuevoTotal}'
        WHERE id = '{$idDetalle}'
    ";

    $qActualizar = mysqli_query($conexion, $sActualizar);
    $eActualizar = mysqli_error($conexion);

    if (!empty($eActualizar)) {
        // Si no hubo error, se actualizó correctamente el registro
        die(json_encode([
            'success' => false,
            'msg'     => 'Precio no se pudo modificar, intente más tarde',
            'error'   => $eActualizar,
        ]));
    }
    
    die(json_encode([
        'success' => true,
        'msg'     => 'Se ha modificado el precio solicitado',
    ]));

} else if (isset($_POST['action'])) {
    $id = $_POST['id'];
    $cant = $_POST['cant'];
    $precio = $_POST['precio'];
   // $incluye = $_POST['incluye'];
    $id_user = $_SESSION['idUser'];
    $total = $precio * $cant;
    $verificar = mysqli_query($conexion, "SELECT * FROM detalle_temp WHERE id_producto = $id AND id_usuario = $id_user");
    $result = mysqli_num_rows($verificar);
    $datos = mysqli_fetch_assoc($verificar);
    if ($result > 0) {
        $cantidad = $datos['cantidad'] + 1;
        $total_precio = $cantidad * $total;
        $query = mysqli_query($conexion, "UPDATE detalle_temp SET cantidad = $cantidad, total = '$total_precio' WHERE id_producto = $id AND id_usuario = $id_user");
        if ($query) {
            $msg = "actualizado";
        } else {
            $msg = "Error al ingresar";
        }
    }else{
        $query = mysqli_query($conexion, "INSERT INTO detalle_temp(id_usuario, id_producto, cantidad, precio_venta, total) VALUES ($id_user, $id, $cant, '$precio', $total)");
        if ($query) {
            $msg = "registrado";
        }else{
            $msg = "Error al ingresar";
        }
    }
    echo json_encode($msg);
    die();
}

if (isset($_POST['cambio'])) {
    if (empty($_POST['actual']) || empty($_POST['nueva'])) {
        $msg = 'Los campos estan vacios';
    } else {
        $id = $_SESSION['idUser'];
        $actual = md5($_POST['actual']);
        $nueva = md5($_POST['nueva']);
        $consulta = mysqli_query($conexion, "SELECT * FROM usuario WHERE clave = '$actual' AND idusuario = $id");
        $result = mysqli_num_rows($consulta);
        if ($result == 1) {
            $query = mysqli_query($conexion, "UPDATE usuario SET clave = '$nueva' WHERE idusuario = $id");
            if ($query) {
                $msg = 'ok';
            }else{
                $msg = 'error';
            }
        } else {
            $msg = 'dif';
        }
        
    }
    echo $msg;
    die();
    
}

