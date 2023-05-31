<?php
include_once "includes/header.php";
require_once "../conexion.php";
$id_user = $_SESSION['idUser'];
$permiso = "ventas";
$sql = mysqli_query($conexion, "SELECT p.*, d.* FROM permisos p INNER JOIN detalle_permisos d ON p.id = d.id_permiso WHERE d.id_usuario = $id_user AND p.nombre = '$permiso'");
$existe = mysqli_fetch_all($sql);
if (empty($existe) && $id_user != 1) {
    header("Location: permisos.php");
}

$query = mysqli_query($conexion, "SELECT r.*, c.idcliente, c.nombre, c.NIT
    FROM remision r 
    INNER JOIN cliente c 
    ON r.id_cliente = c.idcliente");
?>
<table class="table table-light" id="tbl">
    <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>N° DE ORDEN</th>
            <th>FECHA OP</th>
            <th>VENDEDOR</th>
            <th>NIT CLIENTE</th>
            <th>CLIENTE.</th>
            <th>N° REQUISCION</th>
            <th>FECHA REQUISICION</th>
            <th>PERSONA QUE SOLICITA</th>
            <th>PERSONA QUE AUTORIZA</th>
            <th>TIEMPO ENTREGA EQUIPOS REQUISICION</th>
            <th>
                <a href="GenerarExcelRequisiciones.php" target="_blank" class="btn btn-success"><i class="fas fa-file-excel"></i>Generar Excel</a>  
            </th>

            <th>PDF</th>
            <th>ORDEN DE COMPRA</th>

        </tr>
    </thead>

     <tbody>


    <?php $query = mysqli_query($conexion, "SELECT r.*, c.idcliente, c.nombre, c.NIT
    FROM remision r 
    INNER JOIN cliente c 
    ON r.id_cliente = c.idcliente");
            $result = mysqli_num_rows($query);
            if ($result > 0) 

                while ($row = mysqli_fetch_assoc($query)) {
                    

            ?>

            <tr>           
                        
                        <td><?php echo $row['id_requisicion']; ?></td>
                         <td><?php echo $row['numeroorden']; ?></td>
                        <td><?php echo $row['fecha']; ?></td>
                        <td><?php echo $row['nombrevendedor']; ?></td>
                        <td><?php echo $row['NIT']; ?></td>
                        <td><?php echo $row['nombre']; ?></td>
                        <td><?php echo $row['numerorequisicion']; ?></td>
                        <td><?php echo $row['fecharequisicion']; ?></td>
                        <td><?php echo $row['personaquesolicita']; ?></td>
                        <td><?php echo $row['personaqueautoriza']; ?></td>
                        <td><?php echo $row['tiempoentregarequisicion']; ?></td>
                        <td></td>

                         <td>
                         <a href="pdf/generarrequisicion.php?cl=<?php echo $row['id_cliente'] ?>&v=<?php echo $row['id_requisicion'] ?>" target="_blank" class="btn btn-danger"><i class="fas fa-file-pdf"></i></a>
                        </td>

                         <td>
                                
                                  <a href="ordendecompra.php?id=<?php echo $row["id_requisicion"]; ?>" class="btn btn-dark"><i class="far fa-address-card"></i></a>
                                     <?php
                                    
                                       ?>


                               </td>

                      
                       
                    </tr>

        <?php } ?>
    </tbody>
</table>
<?php include_once "includes/footer.php"; ?>