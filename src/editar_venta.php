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
    if ( 
         empty($_POST['estadoorden'])
       //  empty($_POST['numerofactura'])
    ) {
        $alert = '<div class="alert alert-danger" role="alert">Todo los campos son requeridos</div>';
    } else {
        $id = $_POST['id'];
        $estadoorden = $_POST['estadoorden'];
       // $numerofactura = $_POST['numerofactura'];
            $sql_update = mysqli_query($conexion, "UPDATE ventas SET estadoorden = '$estadoorden' WHERE id = $id");

            if ($sql_update) {
                $alert = '<div class="alert alert-success" role="alert">Estado de orden Actualizado correctamente</div>';
            } else {
                $alert = '<div class="alert alert-danger" role="alert">Error al Actualizar el Estado del la Orden</div>';
            }
    }
}
// Mostrar Datos

if (empty($_REQUEST['id'])) {
    header("Location: clientes.php");
}
$id = $_REQUEST['id'];
$sql = mysqli_query($conexion, "SELECT * FROM ventas WHERE id = $id");
$result_sql = mysqli_num_rows($sql);
if ($result_sql == 0) {
    header("Location: clientes.php");
} else {
    if ($data = mysqli_fetch_array($sql)) {
        $id = $data['id'];
    
        $estadoorden = $data['estadoorden'];
       // $numerofactura = $data['numerofactura'];
    }
}
?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="row">
        <div class="col-lg-6 m-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    Modificar Estado de la Orden
                </div>
                <div class="card-body">
                    <form class="" action="" method="post">
                        <?php echo isset($alert) ? $alert : ''; ?>
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
                    
              
                            <div class="col-lg-4">
                           
                            <div class="form-group">
                               <label for="estadoorden">Estado de la orden</label>
                                 <?php
                              $query_estadoorden = mysqli_query($conexion, "SELECT codestadoorden , estado FROM estadoorden ORDER BY codestadoorden ASC");
                              $resultado_estadoorden = mysqli_num_rows($query_estadoorden);
                             mysqli_close($conexion);
                                  ?>
                         <select id="estadoorden" name="estadoorden" class="form-control">
                          <?php
                          if ($resultado_estadoorden > 0) {
                          while ($estado = mysqli_fetch_array($query_estadoorden)) {
                  // code...
                        ?>
                 <option value="<?php echo $estado['codestadoorden']; ?>"><?php echo $estado['estado']; ?></option>
             <?php
                }
              }
              ?>
           </select>
         </div>
         </div>


                        <button type="submit" class="btn btn-primary"><i class="fas fa-user-edit"></i> Cambiar Estado</button>
                        <a href="lista_ventas.php" class="btn btn-danger">Atras</a>
                    </form>
                </div>
            </div>
        </div>
    </div>


</div>
<!-- /.container-fluid -->
<?php include_once "includes/footer.php"; ?>