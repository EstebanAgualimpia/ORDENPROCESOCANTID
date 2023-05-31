<?php include_once "includes/header.php";
require("../conexion.php");
$id_user = $_SESSION['idUser'];
$permiso = "nueva_venta";
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
        empty($_POST['direccion']) || 
        empty($_POST['ciudad']) ||
        empty($_POST['correo'])
    ) {
        $alert = '<div class="alert alert-danger" role="alert">
                                    Todo los campos son obligatorio
                                </div>';
    } else {
        $nombre = $_POST['nombre'];
        $NIT = $_POST['NIT'];
        $telefono = $_POST['telefono'];
        $direccion = $_POST['direccion'];
        $ciudad = $_POST['ciudad'];
        $correo = $_POST['correo'];
        $usuario_id = $_SESSION['idUser'];

        $result = 0;
       // $query = mysqli_query($conexion, "SELECT * FROM cliente WHERE nombre = '$nombre'");
       // $result = mysqli_fetch_array($query);
        if ($result > 0) {
            $alert = '<div class="alert alert-danger" role="alert">
                                    El cliente ya existe
                                </div>';
        } else {
            $query_insert = mysqli_query($conexion, "INSERT INTO cliente(nombre,NIT,telefono,direccion,ciudad, correo, usuario_id) values ('$nombre','$NIT', '$telefono', '$direccion', '$ciudad', '$correo', '$usuario_id')");
            if ($query_insert) {
                $alert = '<div class="alert alert-success" role="alert">
                                    Cliente registrado
                                </div>';
            } else {
                $alert = '<div class="alert alert-danger" role="alert">
                                    Error al registrar
                            </div>';
            }
        }
    }

}

?>
<div class="row">
    <div class="col-lg-12">
        <div class="form-group">
            <h4 class="text-center">Datos del Cliente</h4>
        </div>
           <?php echo isset($alert) ? $alert : ''; ?>
           <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_cliente"><i class="fas fa-plus"></i></button>
        <div class="card">
            <div class="card-body">
                <form method="post">
                    <div class="row">
                        <div class="col-lg-4">
                            <div>
                                <input type="hidden" id="idcliente" value="1" name="idcliente" required>
                                <label>Nombre</label>
                                <input type="text" name="nom_cliente" id="nom_cliente" class="form-control" placeholder="Ingrese nombre del cliente" required>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group">
                                <label>NIT</label>
                                <input type="text" name="NIT_cliente" id="NIT_cliente" class="form-control" disabled required>
                            </div>
                        </div>
                         <div class="col-lg-4">
                            <div class="form-group">
                                <label>Teléfono</label>
                                <input type="number" name="tel_cliente" id="tel_cliente" class="form-control" disabled required>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group">
                                <label>Dirección</label>
                                <input type="text" name="dir_cliente" id="dir_cliente" class="form-control" disabled required>
                            </div>
                        </div>
                         <div class="col-lg-4">
                            <div class="form-group">
                                <label>Ciudad</label>
                                <input type="text" name="ciu_cliente" id="ciu_cliente" class="form-control" disabled required>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="card">
            <div class="card-header bg-primary text-white text-center">
                Datos Orden De Proceso
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="form-group">
                            <label><i class="fas fa-user"></i> VENDEDOR</label>
                            <input type="text" name="nombrevendedor" id="nombrevendedor" class="form-control" placeholder="Nombre Vendedor" required >
                          
                        </div>
                    </div>

                       <div class="col-lg-2">
                            <div class="form-group">
                                <label>Numero OP</label>
                                <input type="text" name="numeroorden" id="numeroorden" class="form-control" placeholder="Ingrese el No de la OP" required >
                            </div>
                        </div>

                      <div class="col-lg-6">
                            <div class="form-group">
                                <label>Descripcion a facturar</label>
                                <input type="text" name="descripcionfacturar" id="descripcionfacturar" class="form-control" placeholder="Ingrese la descripcion a facturar" required >
                            </div>
                        </div>

                     <div class="col-lg-2">
                            <div class="form-group">
                                <label>Orden de compra No.</label>
                                <input type="text" name="nordencompra" id="nordencompra" class="form-control"  placeholder="Ingrese el No de orden de compra " required >
                            </div>
                        </div>

                            <div class="col-lg-3">
                            <div class="form-group">
                                <label>Ordeno</label>
                                <input type="text" name="ordeno" id="ordeno" class="form-control" placeholder="Ingrese el nombre de quien ordeno " required >
                            </div>
                        </div>

                              <div class="col-lg-2">
                            <div class="form-group">
                                <label>Forma de pago</label>
                                <input type="text" name="formapago" id="formapago" class="form-control" placeholder="Ingrese la forma de pago "  required >
                            </div>
                        </div>


                          <div class="col-lg-2">
                            <div class="form-group">
                                <label>Fecha creación OP</label>
                                <input type="datetime-local" name="fecha" id="fecha" class="form-control" required >
                            </div>
                        </div>


                         <div class="col-lg-2">
                            <div class="form-group">
                                <label>Tiempo de entrega</label>
                                <input type="date" name="tiempoentrega" id="tiempoentrega" class="form-control" required >
                            </div>
                        </div>
          
            <div class="col-lg-3">
                         
                            <div class="form-group">
                               <label>Tipo servicio</label>
                                 <?php
                              $query_servicio = mysqli_query($conexion, "SELECT codtiposervicio , servicio FROM tiposervicio ORDER BY codtiposervicio ASC");
                              $resultado_servicio = mysqli_num_rows($query_servicio);
                             //mysqli_close($conexion);
                                  ?>
                         <select id="tiposervicio" name="tiposervicio" class="form-control">
                          <?php
                          if ($resultado_servicio > 0) {
                          while ($servicio = mysqli_fetch_array($query_servicio)) {
                  // code...
                        ?>
                 <option value="<?php echo $servicio['codtiposervicio']; ?>"><?php echo $servicio['servicio']; ?></option>
             <?php
                }
              }
              ?>
           </select>
           </div>
         </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                Buscar Producto
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <input id="producto" class="form-control" type="text" name="producto" placeholder="Ingresa el código o nombre">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-hover" id="tblDetalle">
                <thead class="thead-dark">
                     <tr>
                        <th>Id</th>
                        <th>Producto</th>
                        <th>Modelo</th>
                        <th>Potencia</th>
                        <th>Relacion</th>
                        <th>Velocidad</th>
                        <th>Voltaje</th>
                        <th>Capacidad</th>
                        <th>Tipo</th>
                        <th>Izaje</th>
                        <th>Dimensiones</th>
                        <th>Longitud</th>
                        <th>Amperaje</th>
                        <th>Alimentación</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                        <th>Precio Total</th>
                        <th>Accion</th>
                    </tr>
                </thead>
                <tbody id="detalle_venta">

                </tbody>
                <tfoot>
                    <tr class="font-weight-bold">
                        <td colspan=3>Total Pagar</td>
                        <td></td>
                    </tr>
                </tfoot>
            </table>
             <div class="col-lg-12">
                            <div class="form-group">
                                <label>Observaciones</label>
                                <textarea class="form-control"  name="observaciones" id="observaciones" rows="3" placeholder="Ingrese las observaciones de la orden " value="Descripcion " required></textarea>
                            </div>
            
                        </div>

                          <div class="col-lg-12">
                            <div class="form-group">
                                <label>Incluye Productos</label>
                                <input class="form-control"  name="incluye" id="incluye"  value="Producto1:                    Producto 2:                     Producto 3:                     Producto 4: "  required></input>
                            </div>
                        </div>


            <div class="col-lg-12">
                <div class="form-group">
                    <label>Imagen
                        <input class="form-control" id="campoarchivo" name="campoarchivo" type="file" />
                    </label>
                </div>
            </div>

        </div>
    </div>

    <div class="col-md-6">

         <div class="col-lg-">
                           
                            <div class="form-group">
                    
         </div>
         </div>

        <a href="#" class="btn btn-primary" id="btn_generar">
            <i class="fas fa-save"></i>
            Generar Orden
        </a>

        <!-- <button type="button" class="btn btn-secondary" onclick="listar()">
            <i class="fas fa-redo"></i>
            Recargar tabla
        </button> -->
    </div>

</div>
<div id="nuevo_cliente" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="my-modal-title">Nuevo Cliente</h5>
                <button class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="post" autocomplete="off">
                      <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" placeholder="Ingrese el NIT o Nombre del cliente" name="nombre" id="nombre" class="form-control">
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
                        <label for="direccion">Dirección</label>
                        <input type="text" placeholder="Ingrese Direccion" name="direccion" id="direccion" class="form-control">
                    </div>
                     <div class="form-group">
                        <label for="ciudad">Ciudad</label>
                        <input type="text" placeholder="Ingrese Direccion" name="ciudad" id="ciudad" class="form-control">
                    </div>

                     <div class="form-group">
                        <label for="correo">Correo</label>
                        <input type="text" placeholder="Ingrese el correo" name="correo" id="correo" class="form-control">
                    </div>
                    <input type="submit" value="Guardar Cliente" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
</div>
<?php include_once "includes/footer.php"; ?>