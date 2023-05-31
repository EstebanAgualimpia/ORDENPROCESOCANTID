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
     
       empty($_POST['numerofactura']) || 
       empty($_POST['fecha_factura']) || 
       empty($_POST['mododespacho'])   || 
       empty($_POST['observacion_despacho'])
       
    ) {
        $alert = '<div class="alert alert-danger" role="alert">Todo los campos son requeridos</div>';
    } else {
        $id = $_POST['id'];
         
        if(isset($_POST['numeroguia'])){
            $numerofactura = $_POST['numerofactura'];
            $fecha_factura = $_POST['fecha_factura'];
            $mododespacho = $_POST['mododespacho'];
            $numeroguia = $_POST['numeroguia'];
            $observacion_despacho = $_POST['observacion_despacho'];

            $sql_update = mysqli_query($conexion, "UPDATE ventas SET  numerofactura ='$numerofactura',fecha_factura ='$fecha_factura', mododespacho = '$mododespacho', numeroguia = '$numeroguia', observacion_despacho = '$observacion_despacho'  WHERE id = $id");
           /// echo "UPDATE ventas SET  numerofactura ='$numerofactura', mododespacho = '$mododespacho', numeroguia = '$numeroguia'  WHERE id = $id";
            //echo "acanumeroguia";
            
        }else{
             $numerofactura = $_POST['numerofactura'];
             $fecha_factura = $_POST['fecha_factura'];
             $mododespacho = $_POST['mododespacho'];
             $observacion_despacho = $_POST['observacion_despacho'];
        $sql_update = mysqli_query($conexion, "UPDATE ventas SET  numerofactura ='$numerofactura', fecha_factura ='$fecha_factura', mododespacho = '$mododespacho', observacion_despacho = '$observacion_despacho'   WHERE id = $id");
       /// echo "UPDATE ventas SET  numerofactura ='$numerofactura', mododespacho = '$mododespacho'  WHERE id = $id";
      //  echo "aqui sin numeroguia";
          
        }

            if ($sql_update) {
                $alert = '<div class="alert alert-success" role="alert">Numero de factura actualizado</div>';
            } else {
                $alert = '<div class="alert alert-danger" role="alert">Error al Actualizar el numero de la factura</div>';
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

       // $estadoorden = $data['estadoorden'];
        $numerofactura = $data['numerofactura'];
    }
}
?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="row">
        <div class="col-lg-6 m-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    Agregar No Factura
                </div>
                <div class="card-body">
                    <form class="" action="" method="post">
                        <?php echo isset($alert) ? $alert : ''; ?>
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
                    
              
                          
           <div class="form-group">
            <label for="modelo">Numero Factura</label>
            <input type="text" class="form-control" placeholder="Ingrese No Factura" name="numerofactura" id="numerofactura" value="<?php echo $data['numerofactura']; ?> ">

          </div>



           <div class="form-group">
            <label for="modelo">Fecha Factura</label>
            <input type="datetime-local" class="form-control" placeholder="" name="fecha_factura" id="fecha_factura" value="">

          </div>







        <div class="form-group">
                    <form class="" action="" method="post">
                       
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
                    
                            <div class="form-group">
                               <label for="mododespacho">Modo Despacho</label>
                                 <?php
                              $query_estadoorden = mysqli_query($conexion, "SELECT codmododespacho , despacho FROM mododespacho ORDER BY codmododespacho ASC");
                              $resultado_estadoorden = mysqli_num_rows($query_estadoorden);
                             mysqli_close($conexion);
                                  ?>
                         <select id="mododespacho" name="mododespacho" class="form-control">
                          <?php
                          if ($resultado_estadoorden > 0) {
                          while ($despacho = mysqli_fetch_array($query_estadoorden)) {
                  // code...
                        ?>
                 <option value="<?php echo $despacho['despacho']; ?>"><?php echo $despacho['despacho']; ?></option>
                 

             <?php
                }
              }
              ?>
           </select>
         </div>
      

         <div class="form-group">
            <label for="modelo">No de Guia o Envio</label>
            <input type="text" class="form-control" placeholder="Ingrese No de la Guia" name="numeroguia" id="numeroguia" value="<?php echo $data['numeroguia']; ?> " disabled required>

          </div>


            <div class="form-group">
            <label>Observaciones del despacho</label>
             <textarea class="form-control"  name="observacion_despacho" id="observacion_despacho" rows="3" placeholder="Ingrese las observaciones del despacho "  required></textarea>
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


        <script>
            
          $('select').on('change', function() {
            if ($('#mododespacho').val().trim() === 'TCC') {  
             
                    $('#numeroguia').prop("disabled", false);
                    alert("Agregar No de guia");
                    }else{
                        $('#numeroguia').prop("disabled", true); 
                        alert("Inactivo");
                    }
                       
            });
 
        </script>