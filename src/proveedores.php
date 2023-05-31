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
    if (empty($_POST['nombre']) || 
        empty($_POST['NIT']) ||
        empty($_POST['telefono']) ||
        empty($_POST['correo'])
    ) {
        $alert = '<div class="alert alert-danger" role="alert">
                                    Todo los campos son obligatorio
                                </div>';
    } else {
        $nombre = $_POST['nombre'];
        $NIT = $_POST['NIT'];
        $telefono = $_POST['telefono'];
        $correo = $_POST['correo'];
        $usuario_id = $_SESSION['idUser'];

        $result = 0;
        $query = mysqli_query($conexion, "SELECT * FROM proveedor WHERE nombre = '$nombre'");
        $result = mysqli_fetch_array($query);
        if ($result > 0) {
            $alert = '<div class="alert alert-danger" role="alert">
                                    El proveedor ya existe
                                </div>';
        } else {
            $query_insert = mysqli_query($conexion, "INSERT INTO proveedor(nombre,NIT,telefono,correo, usuario_id) values ('$nombre','$NIT', '$telefono', '$correo', '$usuario_id')");
            if ($query_insert) {
                $alert = '<div class="alert alert-success" role="alert">
                                    Proveedor registrado
                                </div>';
            } else {
                $alert = '<div class="alert alert-danger" role="alert">
                                    Error al registrar
                            </div>';
            }
        }
    }
    mysqli_close($conexion);
}
?>
<button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_proveedor"><i class="fas fa-plus"></i></button>
<?php echo isset($alert) ? $alert : ''; ?>
<div class="table-responsive">
    <table class="table table-striped table-bordered" id="tbl">
        <thead class="thead-dark">
            <tr>
                <th>#</th>
                <th>Nombre</th>
                <th>NIT</th>
                <th>Teléfono</th>
                <th>Correo</th>
                <th>Estado</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php
            include "../conexion.php";

            $query = mysqli_query($conexion, "SELECT * FROM proveedor");
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
                        <td><?php echo $data['idproveedor']; ?></td>
                         <td><?php echo $data['nombre']; ?></td>
                        <td><?php echo $data['NIT']; ?></td>
                        <td><?php echo $data['telefono']; ?></td>
                         <td><?php echo $data['correo']; ?></td>
                        <td><?php echo $estado; ?></td>
                        <td>
                            <?php
                                if ($data['estado'] == 'Activo') {
                                
                                } elseif($data['estado'] == 'Inactivo') {
                            
                               } else {
                            
                               } 
                                {
                               ?>
                                <a href="editar_proveedor.php?id=<?php echo $data['idproveedor']; ?>" class="btn btn-success"><i class='fas fa-edit'></i></a>
        
                                </form>
                            <?php } ?>
                        </td>
                    </tr>
            <?php }
            } ?>
        </tbody>

    </table>
</div>
<div id="nuevo_proveedor" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="my-modal-title">Nuevo Proveedor</h5>
                <button class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="post" autocomplete="off">
                      <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" placeholder="Ingrese Nombre" name="nombre" id="nombre" class="form-control">
                    </div>
                      <div class="form-group">
                        <label for="NIT">NIT</label>
                        <input type="text" placeholder="Ingrese Nombre" name="NIT" id="NIT" class="form-control">
                    </div>
                 
                    <div class="form-group">
                        <label for="telefono">Teléfono</label>
                        <input type="number" placeholder="Ingrese Teléfono" name="telefono" id="telefono" class="form-control">
                    </div>
                     <div class="form-group">
                        <label for="correo">Correo</label>
                        <input type="text" placeholder="Ingrese el correo" name="correo" id="correo" class="form-control">
                    </div>
                    <input type="submit" value="Guardar Proveedor" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
</div>
<?php include_once "includes/footer.php"; ?>