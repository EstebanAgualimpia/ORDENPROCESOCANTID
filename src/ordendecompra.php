<?php 
error_reporting(0);
include_once "includes/header.php";
include "../conexion.php";
$id_user = $_SESSION['idUser'];
$permiso = "ordendecompra";
$sql = mysqli_query($conexion, "SELECT p.*, d.* FROM permisos p INNER JOIN detalle_permisos d ON p.id = d.id_permiso WHERE d.id_usuario = $id_user AND p.nombre = '$permiso'");
$existe = mysqli_fetch_all($sql);
if (empty($existe) && $id_user != 1) {
    header("Location: permisos.php");
}

if (!empty($_POST)) {
    $alert = "";
  
        //$id_cliente = $_GET['idcliente'];
        //$fecha = $_GET['fecha'];
        $id_requisicion = $_GET['id_requisicion'];
        $fechaorden = $_POST['fechaorden'];
        $tiempoentregaorden = $_POST['tiempoentregaorden'];
        $personaquesolicita = $_POST['personaquesolicita'];
        $personaqueautoriza = $_POST['personaqueautoriza'];
        $numeroordendecompra = $_POST['numeroordendecompra'];
        $observaciones = $_POST['observaciones'];

         var_dump($_POST);
         print_r($_POST);
        
        $query_insert = mysqli_query($conexion, "INSERT INTO ordendecompra(id_requisicion,fechaorden,tiempoentregaorden,personaquesolicita,personaqueautoriza,numeroordendecompra,observaciones) values ($id_requisicion,'$fechaorden','$tiempoentregaorden','$personaquesolicita','$personaqueautoriza',$numeroordendecompra,'$observaciones')");

          var_dump($query_insert);

            // consulto la ultima remision ingresada
            $selectOrdenCom="SELECT id_ordendecompra FROM ordendecompra order by id_ordendecompra DESC LIMIT 1";
            $resOrdenCom=mysqli_query($conexion,$selectOrdenCom);
            $data = mysqli_fetch_assoc($resOrdenCom);
            $idOrdenDeCompra=$data['id_ordendecompra'];
            
            // recorro con un array los productos a insertar
            $number=count($_POST["nameproducto"]);
            if ($number>= 1) {
            for($i=0; $i<$number; $i++)
            {
            if(trim($_POST["nameproducto"][$i]!= ''))
            { 
            $query_insertproductos =  mysqli_query($conexion,"INSERT INTO ordendecompraproductos (id_remision,producto,cantidad,precio,estatus) values ($idOrdenDeCompra,'".$_POST["nameproducto"][$i]."',".$_POST["nuevaCantidadProducto"][$i].",'".$_POST["nuevoPrecioProducto"][$i]."',1)");
            } } }

    
            if ($query_insert) {
                $alert = '<div class="alert alert-success" role="alert">
                                    Requisicion ingresada con exito
                                </div>';
            } else {
                $alert = '<div class="alert alert-danger" role="alert">
                                    Error al registrar
                            </div>';
            }
            
}

// Mostrar Datos
if (empty($_REQUEST['id'])) {
    header("Location: lista_ventas.php");

} else {
    if ($data = mysqli_fetch_assoc($sql)) {
        echo "<pre>";
        print_r($data);
        echo "</pre>";
        die();
        $id = $data['id'];
    
       // $estadoorden = $data['estadoorden'];
       // $numerofactura = $data['numerofactura'];
       //$fecha = $data['fecha'];
       //$nombrevendedor = $data['nombrevendedor'];
       //$numeroorden = $data['numeroorden'];
       //$NIT = $data['NIT'];
       //$nombre = $data['nombre'];

    }
}


?>

    <div class="col-lg-6 m-auto">
        <div class="form-group">
            <h4 class="text-center">Datos del Proveedor</h4>
        </div>
        <?php echo isset($alert) ? $alert : ''; ?>
           <button class="btn btn-primary mb-2" type="button" data-toggle="modal" data-target="#nuevo_proveedor"><i class="fas fa-plus"></i></button>
            <div class="card">
            <div class="card-body">
                <form method="post">


                        <div>
                                <input type="hidden" id="idproveedor" value="1" name="idproveedor" required>
                                <label>Nombre</label>
                                <input type="text" name="nom_proveedor" id="nom_proveedor" class="form-control" placeholder="Ingrese nombre del Proveedor" required>
                            </div>
                    
                    
                            <div class="form-group">
                                <label>NIT</label>
                                <input type="text" name="NIT_proveedor" id="NIT_proveedor" class="form-control" disabled required>
                            </div>
                
                      
                            <div class="form-group">
                                <label>Teléfono</label>
                                <input type="number" name="tel_proveedor" id="tel_proveedor" class="form-control" disabled required>
                            </div>
                     
                    
                            <div class="form-group">
                                <label>Correo</label>
                                <input type="text" name="cor_proveedor" id="cor_proveedor" class="form-control" disabled required>
                            </div>
                     

                    <div class="form-group">
                        <h4 class="text-center">Datos de la orden</h4>
                    </div>        
                     
              
                        <div class="form-group">
                            <label for="numeroordendecompra">NUMERO ORDEN DE COMPRA</label>
                            <input type="text" placeholder=" " name="numeroordendecompra" class="form-control" id="numeroordendecompra" value="">
                        </div>


                          <div class="form-group">
                            <label for="fechaorden">FECHA ORDEN</label>
                             <input type="date" name="fechaorden" id="fechaorden" class="form-control" required >
                        </div>

                          <div class="form-group">
                            <label for="personaquesolicita">SOLICITANTE</label>
                             <input type="text" name="personaquesolicita" id="personaquesolicita" class="form-control" value="KELLY BUITRAGO" required >
                        </div>

                         <div class="form-group">
                            <label for="personaqueautoriza">AUTORIZADO POR</label>
                             <input type="text" name="personaqueautoriza" id="personaqueautoriza" class="form-control" value="JOHN GIRALDO"required >
                        </div>

                        <div class="form-group">
                            <button type="button" class="btn btn-primary hidden-lg btnAgregarProducto">Agregar producto</button>
                        </div>

                        <div class="form-group row nuevoProducto">
                        </div>

                          <div class="form-group">
                            <label for="observaciones">OBSERVACIONES</label>
                              <textarea class="form-control"  name="observaciones" id="observaciones" rows="3" placeholder="Ingrese las observaciones de la requisicion " value="observaciones " required></textarea>
                        </div>

                           <button type="submit" class="btn btn-primary"><i class="fas fa-user-edit"></i>Generar Orden</button>
                        <a href="lista_remisiones.php" class="btn btn-danger">Atras</a>

                    </div>
                </form>
            </div>
        </div>
       
<script type="text/javascript">
    $(".btnAgregarProducto").click(function(){

         const idEliminar = Date.now();

        let numProducto = 55;

        let cantidadproductos = 1;

        cantidadproductos++;
            
                $(".nuevoProducto").append(

              '<div class="row elim" style="padding:5px 15px" id="'+idEliminar+'" > '+

              '<!-- Descripción del producto -->'+
              
              '<div class="col-xs-6" style="padding-right:px">'+
              
                '<div class="input-group">'+

                '<span  id="btnEliminar" btnEliminar="'+idEliminar+'" class="input-group-addon"><button type="button" class="btn btn-danger btn-xs quitarProducto" idProducto><i class="fa fa-times"></i></button></span>'+

                  '<input  class="form-control nuevaDescripcionProducto" placeholder="PRODUCTO" id="nameproducto" name="nameproducto[]" required>'+ 
                '</div>'+

              '</div>'+

              '<!-- Cantidad del producto -->'+

              '<div class="col-xs-3 ingresoCantidad">'+
                
                 '<input type="number" class="form-control nuevaCantidadProducto" id="nuevaCantidadProducto" name="nuevaCantidadProducto[]" min="1" value="0" stock nuevoStock required>'+

              '</div>' +

              '<!-- Precio del producto -->'+

              '<div class="col-xs-3 ingresoPrecio" style="padding-left:0px">'+

                '<div class="input-group">'+

                  '<span class="input-group-addon">S/ </span>'+
                     
                  '<input type="text" class="form-control nuevoPrecioProducto" precioReal="" id="nuevoPrecioProducto" placeholder="PRECIO"  name="nuevoPrecioProducto[]" required>'+
     
                '</div>'+
                 
              '</div>'+

            '</div>');
    })

      $(document).on('click', '#btnEliminar', function(){
        const idEliminar = $(this).attr('btnEliminar');
        console.log(idEliminar);
      
        $(`#${idEliminar}`).remove();
        
    })


</script>
<?php include_once "includes/footer.php"; ?>