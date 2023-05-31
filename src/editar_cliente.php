<?php include_once "includes/header.php";
include "../conexion.php";
$id_user = $_SESSION['idUser'];
$permiso = "clientes";
$sql = mysqli_query($conexion, "SELECT p.*, d.* FROM permisos p INNER JOIN detalle_permisos d ON p.id = d.id_permiso WHERE d.id_usuario = $id_user AND p.nombre = '$permiso'");
$existe = mysqli_fetch_all($sql);
if (empty($existe) && $id_user != 1) {
    header("Location: permisos.php");
}
if (!empty($_POST)) {
    $alert = "";
    if ( empty($_POST['nombre']) || 
        empty($_POST['NIT']) || 
        empty($_POST['telefono']) || 
        empty($_POST['direccion']) || 
        empty($_POST['ciudad']) || 
        empty($_POST['correo']) || 
         empty($_POST['estado'])
    ) {
        $alert = '<div class="alert alert-danger" role="alert">Todo los campos son requeridos</div>';
    } else {
        $idcliente = $_POST['id'];
        $nombre = $_POST['nombre'];
        $NIT = $_POST['NIT'];
        $telefono = $_POST['telefono'];
        $direccion = $_POST['direccion'];
        $ciudad = $_POST['ciudad'];
        $correo = $_POST['correo'];
        $estado = $_POST['estado'];
            $sql_update = mysqli_query($conexion, "UPDATE cliente SET nombre = '$nombre' , NIT = '$NIT', telefono = '$telefono', direccion = '$direccion', ciudad = '$ciudad',  correo = '$correo', estado = '$estado'  WHERE idcliente = $idcliente");

            if ($sql_update) {
                $alert = '<div class="alert alert-success" role="alert">Cliente Actualizado correctamente</div>';
            } else {
                $alert = '<div class="alert alert-danger" role="alert">Error al Actualizar el Cliente</div>';
            }
    }
}
// Mostrar Datos

if (empty($_REQUEST['id'])) {
    header("Location: clientes.php");
}
$idcliente = $_REQUEST['id'];
$sql = mysqli_query($conexion, "SELECT * FROM cliente WHERE idcliente = $idcliente");
$result_sql = mysqli_num_rows($sql);
if ($result_sql == 0) {
    header("Location: clientes.php");
} else {
    if ($data = mysqli_fetch_array($sql)) {
        $idcliente = $data['idcliente'];
        $nombre = $data['nombre'];
        $NIT = $data['NIT'];
        $telefono = $data['telefono'];
        $direccion = $data['direccion'];
        $ciudad = $data['ciudad'];
        $correo = $data['correo'];
        $estado = $data['estado'];
    }
}
?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="row">
        <div class="col-lg-6 m-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    Modificar Cliente
                </div>
                <div class="card-body">
                    <form class="" action="" method="post">
                        <?php echo isset($alert) ? $alert : ''; ?>
                        <input type="hidden" name="id" value="<?php echo $idcliente; ?>">
                        <div class="form-group">
                            <label for="NIT">NIT</label>
                            <input type="text" placeholder="Ingrese Nombre" name="NIT" class="form-control" id="NIT" value="<?php echo $NIT; ?>">
                        </div>
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" placeholder="Ingrese Nombre" name="nombre" class="form-control" id="nombre" value="<?php echo $nombre; ?>">
                        </div>
                        <div class="form-group">
                            <label for="telefono">Teléfono</label>
                            <input type="number" placeholder="Ingrese Teléfono" name="telefono" class="form-control" id="telefono" value="<?php echo $telefono; ?>">
                        </div>
                        <div class="form-group">
                            <label for="direccion">Dirección</label>
                            <input type="text" placeholder="Ingrese Direccion" name="direccion" class="form-control" id="direccion" value="<?php echo $direccion; ?>">
                        </div>
                         <div class="form-group">
                            <label for="ciudad">Ciudad</label>
                            <input type="text" placeholder="Ingrese Direccion" name="ciudad" class="form-control" id="ciudad" value="<?php echo $ciudad; ?>">
                        </div>

                         <div class="form-group">
                            <label for="ciudad">Correo</label>
                            <input type="text" placeholder="Ingrese Direccion" name="correo" class="form-control" id="correo" value="<?php echo $correo; ?>">
                        </div>

                           <div class="form-group">
                            <label for="estado">Estado</label>
                            <input type="text" placeholder="Ingrese Direccion" name="estado" class="form-control" id="estado" value="<?php echo $estado; ?>">
                        </div>
                        <button type="submit" class="btn btn-primary"><i class="fas fa-user-edit"></i> Editar Cliente</button>
                        <a href="clientes.php" class="btn btn-danger">Atras</a>
                    </form>
                </div>
            </div>
        </div>
    </div>


</div>
<!-- /.container-fluid -->
<?php include_once "includes/footer.php"; ?>