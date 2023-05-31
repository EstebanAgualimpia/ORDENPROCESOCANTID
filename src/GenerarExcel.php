<?php 
header("Content-type: application/xls");
header("Content-Disposition: attachment; filename = RegistroVentas.xls");
 ?>


<?php
/*
header("Pragma: public");
header("Expires: 0");
$filename = "RegistroVentas.xls";
header("Content-type: application/x-msdownload");
header("Content-Disposition: attachment; filename=$filename");
header("Pragma: no-cache");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
¨*/
include_once "includes/header.php";
require_once "../conexion.php";
$id_user = $_SESSION['idUser'];
$permiso = "ventas";
$sql = mysqli_query($conexion, "SELECT p.*, d.* FROM permisos p INNER JOIN detalle_permisos d ON p.id = d.id_permiso WHERE d.id_usuario = $id_user AND p.nombre = '$permiso'");
$existe = mysqli_fetch_all($sql);
if (empty($existe) && $id_user != 1) {
    header("Location: permisos.php");
}
$query = mysqli_query($conexion, "SELECT v.*, c.idcliente, c.nombre, v.estadoorden,v.numeroorden, v.numerofactura
    FROM ventas v 
    INNER JOIN cliente c 
    ON v.id_cliente = c.idcliente");
?>
<table class="table table-light" id="tbl">
    <thead class="thead-dark">
        <tr>
            <th></th>
             <th>N° DE ORDEN</th>
             <th>VEN.</th>
             <th>N° DE FACTURA</th>
             <th>MODO DESPACHO</th>
             <th>N° GUIA O ENVIO</th>
            <th>CLIENTE</th>
            <th>TOTAL</th>
            <th>FECHA OP</th>
            <th>FECHA ESPERADA
            ENTREGA</th>
            <th>ESTADO</th>
            <th>OP</th>
             <th>EDITAR ESTADO</th>
              <th>AGREGAR N° FACTURA</th>
        
        </tr>
    </thead>

     <tbody>


        <?php $query = mysqli_query($conexion, "SELECT v.*, c.idcliente, c.nombre, v.estadoorden, v.numerofactura, v.numeroguia, v.nombrevendedor
    FROM ventas v 
    INNER JOIN cliente c 
    ON v.id_cliente = c.idcliente");
            $result = mysqli_num_rows($query);
            if ($result > 0) 

                while ($row = mysqli_fetch_assoc($query)) {
                    if ($row['estadoorden'] == 5) {
                        $estadoorden = '<span class="badge badge-pill badge-info">DESPACHADO SIN FACTURA</span>';

                     } elseif($row['estadoorden'] == 6) {
                            $estadoorden = '<span class="badge badge-pill badge-info">DESPACHADO CON FACTURA</span>';

                     } elseif($row['estadoorden'] == 1) {
                            $estadoorden = '<span class="badge badge-pill badge-Secondary">IMPORTACIÓN</span>';

                    } elseif($row['estadoorden'] == 2) {
                            $estadoorden = '<span class="badge badge-pill badge-Secondary">PENDIENTE DE PAGO</span>';

                    } elseif($row['estadoorden'] == 3) {
                            $estadoorden = '<span class="badge badge-pill badge-Secondary">COMPRA NACIONAL</span>';

                    } elseif($row['estadoorden'] == 7) {
                            $estadoorden = '<span class="badge badge-pill badge-Secondary">FACTURADO PARCIAL</span>';

                    } elseif($row['estadoorden'] == 4) {
                            $estadoorden = '<span class="badge badge-pill badge-danger">CANCELADA</span>';


                    } else {
                        $estadoorden = '<span class="badge badge-pill badge-success"></span>';
                    }


            ?>
            

            <tr>
                        <td><?php echo $row['id']; ?></td>
                         <td><?php echo $row['numeroorden']; ?></td>
                         <td><?php echo $row['nombrevendedor']; ?></td>
                        <td><?php echo $row['numerofactura']; ?></td>
                        <td><?php echo $row['mododespacho']; ?></td>
                        <td><?php echo $row['numeroguia']; ?></td>
                        <td><?php echo $row['nombre']; ?></td>
                        <td><?php echo number_format ($row['total'], 2, '.', ','); ?></td>
                        <td><?php echo $row['fecha']; ?></td>
                        <td><?php echo $row['tiempoentrega']; ?></td>



                        <td><?php echo $estadoorden; ?></td>
                          <td>
                    <a href="pdf/generar.php?cl=<?php echo $row['id_cliente'] ?>&v=<?php echo $row['id'] ?>" target="_blank" class="btn btn-danger"><i class="fas fa-file-pdf"></i></a>
                </td>

                        <td>
                            <a href="editar_venta.php?id=<?php echo $row['id']; ?>" class="btn btn-success"><i class='fas fa-compass'></i></a>

                        </td>
                        <td>
                            <?php 
                            if ($row['estadoorden'] == 1) { 


                           } elseif($row['estadoorden'] == 2) {
                            $estadoorden = '<span class="badge badge-pill badge-info">PENDIENTE DE PAGO</span>';
                                } elseif($row['estadoorden'] == 3) {
                            $estadoorden = '<span class="badge badge-pill badge-info">COMPRA NACIONAL</span>';
                                } elseif($row['estadoorden'] == 4) {
                            $estadoorden = '<span class="badge badge-pill badge-info">CANCELADA</span>';


                             } elseif($row['estadoorden'] == 'Seleccionar Estado') {
                            $estadoorden = '<span class="badge badge-pill badge-info">CANCELADA</span>';
                    // Puse todos item y los dos que no puse 5 y 6 son los que se pueden poner el numero de factura 


                               } else {
                            $estadoorden = '<span class="badge badge-pill badge-info"></span>';

                                ?>
                                  <a href="editar_numerofactura.php?id=<?php echo $row['id']; ?>" class="btn btn-info"><i class='far fa-sticky-note'></i></a>
                               
                            <?php } ?>
                        </td>
                       
                    </tr>

        <?php } ?>
    </tbody>
</table>
<?php include_once "includes/footer.php"; ?>