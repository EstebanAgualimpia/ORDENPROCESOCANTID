<?php


require_once '../../conexion.php';
require_once 'fpdf/fpdf.php';
//$pdf = new FPDF($orientation='P',$unit='mm');
$pdf = new FPDF('P', 'mm', 'letter');
$pdf->AddPage();
$pdf->SetFont('Arial','B',20);    
$textypos = 5;
$pdf->setY(12);
$pdf->setX(10);
$id = $_GET['v'];
$idcliente = $_GET['cl'];

$ventas = mysqli_query($conexion, "SELECT * FROM ventas WHERE id = $id");
$result_venta = mysqli_fetch_assoc($ventas);

/*
$ventasT = mysqli_query($conexion, "SELECT t.*,v.*
FROM tiposervicio t
INNER JOIN ventas v 
ON v.id = t.codtiposervicio WHERE v.id  = id");
$result_venta = mysqli_fetch_assoc($ventasT);

*/
$usu = mysqli_query($conexion, "SELECT * FROM usuario");
$usuario = mysqli_fetch_assoc($usu);


//$tipo = mysqli_query($conexion, "SELECT * FROM tiposervicio WHERE codtiposervicio = $id");
//$tiposervicio = mysqli_fetch_assoc($tipo);

$config = mysqli_query($conexion, "SELECT * FROM configuracion");
$datos = mysqli_fetch_assoc($config);

$clientes = mysqli_query($conexion, "SELECT * FROM cliente WHERE idcliente = $idcliente");

$config = mysqli_query($conexion, "SELECT * FROM configuracion");

$datosC = mysqli_fetch_assoc($clientes);
$ventas = mysqli_query($conexion, "SELECT d.*, p.codproducto, p.descripcion,p.modelo,p.relacion,p.potencia,p.velocidad,p.voltaje,p.alimentacion,p.capacidad,p.tipopolipasto,p.izaje,p.dimensiones,p.longitud,p.amperaje 
    FROM detalle_venta d INNER JOIN producto p ON d.id_producto = p.codproducto WHERE d.id_venta = $id");



// Agregamos los datos de la empresa
$pdf->Cell(5,$textypos,"GIRAVAN SAS");

$pdf->SetFont('Arial','B',10);  

/*  
$pdf->setY(30);$pdf->setX(10);
$pdf->Cell(5,$textypos,"DATOS EMPRESA:");

$pdf->SetFont('Arial','B',10);    
$pdf->setY(40);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("Empresa:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(20, 5, $datos['nombre'], 0, 1, 'L');

$pdf->SetFont('Arial','B',10);    
$pdf->setY(45);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("NIT:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(20, 5, $datos['NIT'], 0, 1, 'L');


$pdf->SetFont('Arial','B',10);    
$pdf->setY(50);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("PBX:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(20, 5, $datos['telefono'], 0, 1, 'L');

$pdf->SetFont('Arial','B',10);    
$pdf->setY(55);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("Dirección:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(20, 5, $datos['direccion'], 0, 1, 'L');

$pdf->setY(60);$pdf->setX(10);
$pdf->Cell(5,$textypos,"Sabaneta - Colombia");


*/

// Agregamos los datos del cliente
$pdf->SetFont('Arial','B',10);    
$pdf->setY(30);$pdf->setX(10);
$pdf->Cell(5,$textypos,"DATOS DEL CLIENTE:");


$pdf->SetFont('Arial','B',10);    
$pdf->setY(40);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("NIT:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(20, 5, $datosC['NIT'], 0, 1, 'L');

$pdf->SetFont('Arial','B',10);    
$pdf->setY(45);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("Empresa:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
//$pdf->MultiCell(190,5,'');
$pdf->Cell(20, 5, utf8_decode ($datosC['nombre']), 0, 1, 'L');



$pdf->SetFont('Arial','B',10);    
$pdf->setY(50);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("Telefono:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(20, 5, $datosC['telefono'], 0, 1, 'L');

$pdf->SetFont('Arial','B',10);    
$pdf->setY(55);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("Dirección"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(20, 5, utf8_decode ($datosC['direccion']), 0, 1, 'L');


$pdf->SetFont('Arial','B',10);    
$pdf->setY(60);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("Ciudad:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(20, 5,utf8_decode( $datosC['ciudad']), 0, 1, 'L');


$pdf->SetFont('Arial','B',10);    
$pdf->setY(65);$pdf->setX(10);
$pdf->Cell(18, 5, utf8_decode("Correo:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
//$pdf->MultiCell(190,5,'');

$pdf->MultiCell(70, 5,utf8_decode ($datosC['correo']), 0, 1);


//$pdf->SetFont('Arial','B',10);   
//$pdf->setY(65);$pdf->setX(72);
//$pdf->Cell(18, 5, utf8_decode("Correo:"), 0, 0, 'L');
//$pdf->SetFont('Arial','',10);
//$pdf->Cell(40, 5, $datosC['correo'], 0, 1, 'L');

// Agregamos los datos del cliente
$pdf->SetFont('Arial','B',10);    
$pdf->setY(25);$pdf->setX(140);
//$pdf->Cell(39, 5, utf8_decode("Orden de proceso No:"), 0, 0, 'L');
$pdf->SetFont('Arial','B',5);
$pdf->Cell(20, 5, $result_venta['id'], 0, 1, 'L');

$pdf->SetFont('Arial','B',10);    
$pdf->setY(30);$pdf->setX(140);
$pdf->Cell(39, 5, utf8_decode("Orden de proceso No:"), 0, 0, 'L');
$pdf->SetFont('Arial','B',17);
$pdf->Cell(20, 5, $result_venta['id'], 0, 1, 'L');



$pdf->SetFont('Arial','B',10);    
$pdf->setY(35);$pdf->setX(140);
$pdf->Cell(25, 5, utf8_decode("Fecha y hora:"), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(20, 5, $result_venta['fecha'], 0, 1, 'L');
//$pdf->SetFont('Arial', 'B', 10); 


$pdf->setY(40);$pdf->setX(135);
$pdf->Cell(5,$textypos,"");
$pdf->setY(50);$pdf->setX(135);
$pdf->Cell(5,$textypos,"");

//$pdf = new FPDF('P', 'mm', 'letter');
//$pdf->AddPage();
//$pdf->SetMargins(10, 10, 10);
//$pdf->SetTitle("Ventas");
$pdf->SetFont('Arial', 'B', 12);
$id = $_GET['v'];
$idcliente = $_GET['cl'];


//ACABE DE COMENTAR LA LINEA 169 170 Y 171
//$ventas = mysqli_query($conexion, "SELECT * FROM ventas WHERE id = $id");
//$result_venta = mysqli_fetch_assoc($ventas);

// PARA GUARDAR EL TIPO DE SERVICIO CON NOMBRE " prestamo, garantia, orden de compra" al guardar me aparece error pero en las listas anteriores si me las muestra
/*$ventas = mysqli_query($conexion, "SELECT t.*,v.*, t.codtiposervicio, t.servicio, v.tiposervicio
FROM tiposervicio t
INNER JOIN ventas v 
ON v.id = t.codtiposervicio WHERE t.codtiposervicio  = $id;");
$result_venta = mysqli_fetch_assoc($ventas);
*/


/*
SELECT v.*, t.codtiposervicio, t.servicio
FROM ventas v 
INNER JOIN tiposervicio t 
ON V.id = T.codtiposervicio WHERE V.id = id;
*/


$usu = mysqli_query($conexion, "SELECT * FROM usuario");
$usuario = mysqli_fetch_assoc($usu);

$config = mysqli_query($conexion, "SELECT * FROM configuracion");
$datos = mysqli_fetch_assoc($config);

$clientes = mysqli_query($conexion, "SELECT * FROM cliente WHERE idcliente = $idcliente");
$config = mysqli_query($conexion, "SELECT * FROM configuracion");

$datosC = mysqli_fetch_assoc($clientes);
$ventas = mysqli_query($conexion, "SELECT d.*, p.codproducto, p.descripcion,p.modelo,p.relacion,p.potencia,p.velocidad,p.voltaje,p.alimentacion,p.capacidad,p.tipopolipasto,p.izaje,p.dimensiones,p.longitud,p.amperaje 
    FROM detalle_venta d INNER JOIN producto p ON d.id_producto = p.codproducto WHERE d.id_venta = $id");
$pdf->Cell(195, 5, utf8_decode($datos['nombre']), 0, 1, 'C');
$pdf->Ln();


//$pdf->Image("../../assets/img/logo.png", 180, 10, 30, 30, 'PNG');
$pdf->Ln();
$pdf->SetFont('Arial', 'B', 10);
$pdf->Ln();
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetFillColor(0, 0, 0);
$pdf->SetTextColor(255, 255, 255);
$pdf->Cell(202, 5, "Datos de la orden", 1, 1, 'C', 1);
$pdf->SetTextColor(0, 0, 0);


$pdf->Cell(40, 5, utf8_decode("Descripcion a facturar: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);

//  utf8_decode ( // ANTES DEL RESULT VENTA CORRIJO LOS ERRORES DE TILDES Y ACENTOS
$pdf->MultiCell(150, 5, utf8_decode ($result_venta['descripcionfacturar']));
$pdf->SetFont('Arial', 'B', 10); 

//$pdf->Cell(30, 5, utf8_decode("Descripcion a facturar"), 0, 0, 'L');
//$pdf->SetFont('Arial','',10);
//$pdf->MultiCell(190,5,'');
//$pdf->MultiCell(190,5,$result_venta['descripcionfacturar'],0); 
//$pdf->SetFont('Arial', 'B', 10); 


$pdf->Cell(37, 5, utf8_decode("Orden de compra No: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(40, 5, $result_venta['nordencompra'], 0, 0, 'L');
$pdf->SetFont('Arial', 'B', 10); 

$pdf->Cell(15, 5, utf8_decode("Ordeno: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(45, 5,utf8_decode ($result_venta['ordeno']), 0, 0, 'L');
$pdf->SetFont('Arial', 'B', 10);

$pdf->Cell(30, 5, utf8_decode("Tipo de servicio: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(20, 5,utf8_decode ($result_venta['tiposervicio']), 0, 1, 'L');
$pdf->SetFont('Arial', 'B', 10);



$pdf->Cell(27, 5, utf8_decode("Forma de pago: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(50, 5,utf8_decode ($result_venta['formapago']), 0, 0, 'L');
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetFont('Arial', 'B', 10); 

/////////////////////////////

/////////////////////


$pdf->Cell(34, 5, utf8_decode("Tiempo de entrega: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(20, 5, $result_venta['tiempoentrega'], 0, 0, 'L');
$pdf->SetFont('Arial', 'B', 10);
$pdf->Ln(2);

//$pdf->Cell(90, 5, utf8_decode('Nombre'), 0, 0, 'L');
//$pdf->Cell(50, 5, utf8_decode('Teléfono'), 0, 0, 'L');
//$pdf->Cell(56, 5, utf8_decode('Dirección'), 0, 1, 'L');
//$pdf->SetFont('Arial', '', 10);
//$pdf->Cell(90, 5, utf8_decode($datosC['nombre']), 0, 0, 'L');
//$pdf->Cell(50, 5, utf8_decode($datosC['telefono']), 0, 0, 'L');
//$pdf->Cell(56, 5, utf8_decode($datosC['direccion']), 0, 1, 'L');
$pdf->Ln(3);
//$pdf->SetFont('Arial', 'B', 10);
//$pdf->SetTextColor(255, 255, 255);
//$pdf->Cell(202, 5, "Detalle de Producto", 1, 1, 'C', 1);
//$pdf->SetTextColor(0, 0, 0);
//$pdf->Cell(7, 5, utf8_decode('N°'), 0, 0, 'L');
//$pdf->Cell(25, 5, utf8_decode('Producto'), 0, 0, 'L');
//$pdf->Cell(50, 5, utf8_decode('Modelo'), 0, 0, 'L');
//$pdf->Cell(20, 5, utf8_decode('Relacion'), 0, 0, 'L');
//$pdf->Cell(20, 5, utf8_decode('Potencia'), 0, 0, 'L');
//$pdf->Cell(20, 5, 'Cantidad', 0, 0, 'L');
//$pdf->Cell(32, 5, 'Precio', 0, 0, 'L');
//$pdf->Cell(35, 5, 'Sub Total.', 0, 1, 'L');
//$pdf->SetFont('Arial', '', 10);
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetTextColor(255, 255, 255);
$pdf->Cell(202, 5, "Detalle de Productos", 1, 1, 'C', 1);
$pdf->SetTextColor(0, 0, 0);
$contador = 1;
while ($row = mysqli_fetch_assoc($ventas)) {

$pdf->SetFont('Arial', '', 10);
$pdf->SetTextColor(255, 255, 255);
//$pdf->Cell(202, 5, "Detalle de Producto", 1, 1, 'C', 1);
$pdf->SetTextColor(0, 0, 0);
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(7, 5, utf8_decode('N°'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(7, 5, $contador, 0, 1, 'L');
$pdf->SetFont('Arial','B',10);


$pdf->Cell(24, 5, utf8_decode("Producto:"), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);

//  utf8_decode ( // ANTES DEL RESULT VENTA CORRIJO LOS ERRORES DE TILDES Y ACENTOS
$pdf->MultiCell(190, 5, utf8_decode ($row['descripcion']));
$pdf->SetFont('Arial', 'B', 10); 



$pdf->SetFont('Arial','B',10);
$pdf->Cell(16, 5, utf8_decode('Modelo:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(59, 5, $row['modelo'], 0, 0, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, utf8_decode('Relacion:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(51, 5, $row['relacion'], 0, 1, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, utf8_decode('Potencia:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(51, 5, $row['potencia'], 0, 0, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, utf8_decode('Velocidad:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(60, 5, $row['velocidad'], 0, 0, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, utf8_decode('Voltaje:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(24, 5, $row['voltaje'], 0, 1, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, utf8_decode('Alimentacion:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(51, 5, $row['alimentacion'], 0, 0, 'L');
//$pdf->Cell(20, 5, utf8_decode('Capacidad:'), 0, 0, 'L');
//$pdf->Cell(20, 5, $row['capacidad'], 0, 1, 'L');
//$pdf->Cell(20, 5, utf8_decode('Tipo'), 0, 0, 'L');
//$pdf->Cell(20, 5, $row['tipopolipasto'], 0, 1, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, utf8_decode('Izaje:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(60, 5, $row['izaje'], 0, 0, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, utf8_decode('Dimensiones:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(24, 5, $row['dimensiones'], 0, 1, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, utf8_decode('Longitud:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(51, 5, $row['longitud'], 0, 0, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, utf8_decode('Amperaje'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(60, 5, $row['amperaje'], 0, 0, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(20, 5, utf8_decode('Capacidad:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(24, 5, $row['capacidad'], 0, 1, 'L');


$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, 'Cantidad:', 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(51, 5, $row['cantidad'], 0, 0, 'L');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(24, 5, 'Precio:', 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(60, 5, '$' . number_format ($row['precio'], 2, '.', ','));
$pdf->SetFont('Arial','B',10);
$pdf->Cell(20, 5, 'Sub Total:', 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(24, 5, '$' . number_format($row['cantidad'] * $row['precio'], 2, '.', ','), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
//$contador = 1;
    //$pdf->Cell(7, 5, $contador, 0, 0, 'L');
    //$pdf->Cell(25, 5, $row['descripcion'], 0, 0, 'L');
     //$pdf->Cell(50, 5, $row['modelo'], 0, 0, 'L');
     //$pdf->Cell(20, 5, $row['relacion'], 0, 0, 'L');
    // $pdf->Cell(20, 5, $row['potencia'], 0, 0, 'L');
    //$pdf->Cell(20, 5, $row['cantidad'], 0, 0, 'L');
    //$pdf->Cell(32, 5, $row['precio'], 0, 0, 'L');
    //$pdf->Cell(32, 5,number_format ($row['precio'], 2, '.', ','));
    //$pdf->Cell(35, 5, number_format($row['cantidad'] * $row['precio'], 2, '.', ','), 0, 1, 'L');
$pdf->Ln();
    $contador++;
    $pdf->Ln();
   // $pdf->Ln();

}
$pdf->Ln();
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(20, 5, utf8_decode("Total: "), 0, 0, 'L');
$pdf->Cell(35, 5, '$' . number_format($result_venta['total'], 2, '.', ','), 0, 1, 'L');
$pdf->Ln(5);


$pdf->Cell(30, 5, utf8_decode("Observaciones"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->MultiCell(190,5,'');
$pdf->MultiCell(190,5,utf8_decode($result_venta['observaciones']));

$pdf->Ln(8);

$pdf->SetFont('Arial','B',10);
$pdf->MultiCell(190, 5, utf8_decode('Vo.Bo.Gerencia: _________________________________   Vo.Bo.Cartera:  _________________________________'));



//$pdf->Output("ventas.pdf", "I");
$pdf->Output($result_venta ['id'].'.pdf', "I");//CON ESTE CODIGO SE PUEDE DESCARGAR LA ORDEN CON EL NUMERO DE ORDEN QUE TIEN
?>

