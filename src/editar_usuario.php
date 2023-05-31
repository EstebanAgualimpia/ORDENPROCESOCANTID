<?php include_once "includes/header.php";
require "../conexion.php";
$id_user = $_SESSION['idUser'];
$permiso = "usuarios";
$sql = mysqli_query($conexion, "SELECT p.*, d.* FROM permisos p INNER JOIN detalle_permisos d ON p.id = d.id_permiso WHERE d.id_usuario = $id_user AND p.nombre = '$permiso'");
$existe = mysqli_fetch_all($sql);
if (empty($existe) && $id_user != 1) {
    header("Location: permisos.php");
}
if (!empty($_POST)) {
    $alert = "";
    if (empty($_POST['nombre']) || empty($_POST['correo']) || empty($_POST['usuario'])) {
        $alert = '<div class="alert alert-danger" role="alert">Todo los campos son requeridos</div>';
    } else {
        $idusuario = $_GET['id'];
        $nombre = $_POST['nombre'];
        $correo = $_POST['correo'];
        $usuario = $_POST['usuario'];
        $sql_update = mysqli_query($conexion, "UPDATE usuario SET nombre = '$nombre', correo = '$correo' , usuario = '$usuario' WHERE idusuario = $idusuario");
        $alert = '<div class="alert alert-success" role="alert">Usuario Actualizado</div>';
    }
}

// Mostrar Datos

if (empty($_REQUEST['id'])) {
    header("Location: usuarios.php");
}
$idusuario = $_REQUEST['id'];
$sql = mysqli_query($conexion, "SELECT * FROM usuario WHERE idusuario = $idusuario");
$result_sql = mysqli_num_rows($sql);
if ($result_sql == 0) {
    header("Location: usuarios.php");
} else {
    if ($data = mysqli_fetch_array($sql)) {
        $idcliente = $data['idusuario'];
        $nombre = $data['nombre'];
        $correo = $data['correo'];
        $usuario = $data['usuario'];
    }
}
?>
<div class="row">
    <div class="col-md-6 mx-auto">
        <div class="card">
            <div class="card-header bg-primary text-white">
                Modificar Usuario
            </div>
            <div class="card-body">
                <form class="" action="" method="post">
                    <?php echo isset($alert) ? $alert : ''; ?>
                    <input type="hidden" name="id" value="<?php echo $idusuario; ?>">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" placeholder="Ingrese nombre" class="form-control" name="nombre" id="nombre" value="<?php echo $nombre; ?>">

                    </div>
                    <div class="form-group">
                        <label for="correo">Correo</label>
                        <input type="text" placeholder="Ingrese correo" class="form-control" name="correo" id="correo" value="<?php echo $correo; ?>">

                    </div>
                    <div class="form-group">
                        <label for="usuario">Usuario</label>
                        <input type="text" placeholder="Ingrese usuario" class="form-control" name="usuario" id="usuario" value="<?php echo $usuario; ?>">

                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-user-edit"></i></button>
                    <a href="usuarios.php" class="btn btn-danger">Atras</a>
                </form>
            </div>
        </div>
    </div>
</div>
<?php include_once "includes/footer.php"; ?>