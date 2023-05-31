<?php include_once "includes/header.php";
include "../conexion.php";
$id_user = $_SESSION['idUser'];
$permiso = "proveedores";
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
        empty($_POST['correo']) 
         //empty($_POST['estado'])
    ) {
        $alert = '<div class="alert alert-danger" role="alert">Todo los campos son requeridos</div>';
    } else {
        $idproveedor = $_POST['id'];
        $nombre = $_POST['nombre'];
        $NIT = $_POST['NIT'];
        $telefono = $_POST['telefono'];
        $correo = $_POST['correo'];
        //$estado = $_POST['estado'];
            $sql_update = mysqli_query($conexion, "UPDATE proveedor SET nombre = '$nombre' , NIT = '$NIT', telefono = '$telefono', correo = '$correo' WHERE idproveedor = $idproveedor");

            if ($sql_update) {
                $alert = '<div class="alert alert-success" role="alert">Proveedor Actualizado correctamente</div>';
            } else {
                $alert = '<div class="alert alert-danger" role="alert">Error al Actualizar el Proveedor</div>';
            }
    }
}
// Mostrar Datos

if (empty($_REQUEST['id'])) {
    header("Location: proveedores.php");
}
$idproveedor = $_REQUEST['id'];
$sql = mysqli_query($conexion, "SELECT * FROM proveedor WHERE idproveedor = $idproveedor");
$result_sql = mysqli_num_rows($sql);
if ($result_sql == 0) {
    header("Location: proveedores.php");
} else {
    if ($data = mysqli_fetch_array($sql)) {
        $idproveedor = $data['idproveedor'];
        $nombre = $data['nombre'];
        $NIT = $data['NIT'];
        $telefono = $data['telefono'];
        $correo = $data['correo'];
        //$estado = $data['estado'];
    }
}
?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="row">
        <div class="col-lg-6 m-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    Modificar Proveedor
                </div>
                <div class="card-body">
                    <form class="" action="" method="post">
                        <?php echo isset($alert) ? $alert : ''; ?>
                        <input type="hidden" name="id" value="<?php echo $idproveedor; ?>">
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
                            <label for="ciudad">Correo</label>
                            <input type="text" placeholder="Ingrese Direccion" name="correo" class="form-control" id="correo" value="<?php echo $correo; ?>">
                        </div>

                        <button type="submit" class="btn btn-primary"><i class="fas fa-user-edit"></i> Editar Proveedor</button>
                        <a href="proveedores.php" class="btn btn-danger">Atras</a>
                    </form>
                </div>
            </div>
        </div>
    </div>


</div>
<!-- /.container-fluid -->
<?php include_once "includes/footer.php"; ?>