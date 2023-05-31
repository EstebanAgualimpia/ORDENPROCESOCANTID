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
$id_cliente= $_GET['cl'];
$id_requisicion = $_GET['v'];
//echo "<pre>";
   //print_r($id_requisicion);
   //print_r($id_cliente);
   //print_r($numeroorden);
   //echo "</pre>";
   //die();
   // $id = $id_requisicion['id'];
$ventas = mysqli_query($conexion, "SELECT r.*, c.NIT, c.telefono, c.nombre FROM remision r INNER JOIN cliente c  ON r.id_cliente = c.idcliente WHERE r.id_requisicion = $id_requisicion;");
$result_venta = mysqli_fetch_assoc($ventas);

$usu = mysqli_query($conexion, "SELECT * FROM usuario");
$usuario = mysqli_fetch_assoc($usu);

$config = mysqli_query($conexion, "SELECT * FROM configuracion");
$datos = mysqli_fetch_assoc($config);

// Agregamos los datos de la empresa
$pdf->Cell(202, 5, utf8_decode('REQUISICIÓN INTERNA GIRAVAN S.A.S'), 0, 0, 'C');
$pdf->SetFont('Arial','B',10);    
$pdf->setY(30);$pdf->setX(10);
$pdf->Cell(5,$textypos,"DATOS DE LA EMPRESA");
$pdf->SetFont('Arial','',10);    
$pdf->setY(35);$pdf->setX(10);
$pdf->Cell(5,$textypos,"GIRAVAN SAS");
$pdf->setY(40);$pdf->setX(10);
$pdf->Cell(5,$textypos,utf8_decode("Dirección: Cra. 47D #78c Sur43"));
$pdf->setY(45);$pdf->setX(10);
$pdf->Cell(5,$textypos,"PBX - 44448452");
$pdf->setY(50);$pdf->setX(10);
$pdf->Cell(5,$textypos,"Correo: ventas@giravan.com ");
// Agregamos los datos del cliente
$pdf->SetFont('Arial','B',10);    
$pdf->setY(30);$pdf->setX(75);
$pdf->Cell(5,$textypos,"CLIENTE");
$pdf->SetFont('Arial','',10);    
$pdf->setY(35);$pdf->setX(75);
$pdf->Cell(18,$textypos,"NIT:");
$pdf->Cell(20, 5, $result_venta['NIT'], 0, 1, 'L');
$pdf->setY(40);$pdf->setX(75);


$pdf->setY(40);$pdf->setX(75);
$pdf->Cell(18, 5, utf8_decode("Empresa:"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->MultiCell(64, 5, $result_venta['nombre'], 0, 1);


$pdf->setY(50);$pdf->setX(75);
$pdf->Cell(18,$textypos,"Telefono:");
$pdf->Cell(20, 5, $result_venta['telefono'], 0, 1, 'L');
//$pdf->setY(50);$pdf->setX(75);
//$pdf->Cell(5,$textypos,"Email del cliente");

// Agregamos los datos del cliente
$pdf->SetFont('Arial','B',10);    
$pdf->setY(30);$pdf->setX(160);
$pdf->Cell(27, 5, utf8_decode(('REQUISICIÓN #')), 0, 0, 'L');
$pdf->Cell(20, 5, $result_venta['numerorequisicion'], 0, 1, 'L');

//$pdf->Cell(5,$textypos,"REQUISICIÓN #12345");
$pdf->SetFont('Arial','',10);    
$pdf->setY(35);$pdf->setX(160);
$pdf->Cell(13,$textypos,"Fecha:");
$pdf->Cell(20, 5, $result_venta['fecharequisicion'], 0, 1, 'L');
$pdf->setY(40);$pdf->setX(160);
$pdf->Cell(5,$textypos,"F - Com - 01");
$pdf->setY(45);$pdf->setX(160);
$pdf->Cell(5,$textypos,"Area: Compras");
//$pdf->setY(45);$pdf->setX(160);
//$pdf->Cell(5,$textypos,"Vencimiento: 11/ENE/2023");
$pdf->setY(45);$pdf->setX(135);
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


$ventas = mysqli_query($conexion, "SELECT * FROM remision WHERE id_requisicion = $id_requisicion");
$result_venta = mysqli_fetch_assoc($ventas);

$ventas2 = mysqli_query($conexion, "SELECT * FROM remisionproductos WHERE id_remision = $id_requisicion");

$ordenes = mysqli_query($conexion, "SELECT * FROM ventas WHERE id = $id");
$result_ordenes = mysqli_fetch_assoc($ordenes);

// PARA GUARDAR EL TIPO DE SERVICIO CON NOMBRE " prestamo, garantia, orden de compra" al guardar me aparece error pero en las listas anteriores si me las muestra
/*$ventas = mysqli_query($conexion, "SELECT t.*,v.*, t.codtiposervicio, t.servicio, v.tiposervicio
FROM tiposervicio t
INNER JOIN ventas v 
ON v.id = t.codtiposervicio WHERE t.codtiposervicio  = $id;");
$result_venta = mysqli_fetch_assoc($ventas);
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
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetFillColor(0, 0, 0);
$pdf->SetTextColor(255, 255, 255);
$pdf->Cell(202, 5, utf8_decode("DATOS DE LA REQUISICIÓN"), 1, 1, 'C', 1);
$pdf->SetTextColor(0, 0, 0);

$pdf->Cell(20, 5, utf8_decode("No de OP:"), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(20, 5, $result_venta['numeroorden'], 0, 0, 'L');
$pdf->SetFont('Arial', 'B', 10);

$pdf->Cell(20, 5, utf8_decode("Fecha OP: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(30, 5, $result_venta['fecha'], 0, 0, 'L');
$pdf->SetFont('Arial', 'B', 10);

$pdf->Cell(19, 5, utf8_decode("Vendedor: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(30, 5, $result_venta['nombrevendedor'], 0, 0, 'L');
$pdf->SetFont('Arial', 'B', 10);

$pdf->Cell(29, 5, utf8_decode("Tiempo entrega:"), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->MultiCell(25, 5, utf8_decode ($result_venta['tiempoentregarequisicion']));
$pdf->SetFont('Arial', 'B', 10); 
$pdf->Ln(4);
$pdf->Cell(40, 5, utf8_decode("Persona que solicita: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(70, 5,utf8_decode ($result_venta['personaquesolicita']), 0, 0, 'L');
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(40, 5, utf8_decode("Persona que autoriza: "), 0, 0, 'L');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(70, 5,utf8_decode ($result_venta['personaqueautoriza']), 0, 0, 'L');
$pdf->SetFont('Arial', 'B', 10);
////////////////////////////
$pdf->Ln(6);

$pdf->SetFont('Arial', 'B', 10);
$pdf->SetTextColor(255, 255, 255);
$pdf->Ln();
$pdf->Cell(202, 5, "DETALLE PRODUCTOS ORDEN DE PROCESO", 1, 1, 'C', 1);
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
$pdf->Cell(24, 5, utf8_decode('Modelo:'), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->Cell(51, 5, $row['modelo'], 0, 0, 'L');
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
   // $pdf->Ln();
}
$pdf->Ln();
$pdf->SetFont('Arial', 'B', 10);
$pdf->Cell(20, 5, utf8_decode("Total: "), 0, 0, 'L');
$pdf->Cell(35, 5, '$' . number_format($result_ordenes['total'], 2, '.', ','), 0, 1, 'L');
$pdf->Ln(2);
//$pdf->Cell(30, 5, utf8_decode("Descripcion a facturar"), 0, 0, 'L');
//$pdf->SetFont('Arial','',10);
//$pdf->MultiCell(190,5,'');
//$pdf->MultiCell(190,5,$result_venta['descripcionfacturar'],0); 
//$pdf->SetFont('Arial', 'B', 10); 
$pdf->Ln(3);
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetTextColor(255, 255, 255);
$pdf->Ln();
$pdf->Cell(202, 5, utf8_decode("DETALLE PRODUCTOS REQUISICIÓN"), 1, 1, 'C', 1);
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetFillColor(000,111,111);
$pdf->SetTextColor(40, 40, 40);
$pdf->SetDrawColor(255,255,255);
$pdf->Cell(20, 5, "ITEM", 1, 0, 'C', 1);
$pdf->Cell(60, 5, "PRODUCTO", 1, 0, 'C', 1);
$pdf->Cell(40, 5, "CANTIDAD", 1, 0, 'C', 1);
$pdf->Cell(41, 5, "VALOR VENTA", 1, 0, 'C', 1);
$pdf->Cell(41, 5, "SUBTOTAL", 1, 0, 'C', 1);
$pdf->Ln();

$contador = 0;
$total = 0;
while ($row22 = mysqli_fetch_assoc($ventas2)) {
$contador=$contador+1;
$total2=$row22['cantidad']*$row22['precio'];
$total=$total+$total2;
$pdf->SetFont('Arial', 'B', 10);
$pdf->SetFillColor(224,240,240);
$pdf->SetTextColor(40, 40, 40);
$pdf->SetDrawColor(255,255,255);
$pdf->Cell(20, 5, $contador, 1, 0, 'C', 1);
$pdf->Cell(60, 5, $row22['producto'], 1, 0, 'C', 1);
$pdf->Cell(40, 5, $row22['cantidad'], 1, 0, 'C', 1);
$pdf->Cell(41, 5, '$' . number_format($row22['precio'], 2, '.', ','), 1, 0, 'C', 1);
$pdf->Cell(41, 5, '$' . number_format($row22['cantidad']*$row22['precio'], 2, '.', ','), 1, 0, 'C', 1);
$pdf->Ln();
}
$pdf->Cell(20, 5, "", 1, 0, 'C', 1);
$pdf->Cell(60, 5, "", 1, 0, 'C', 1);
$pdf->Cell(40, 5, "", 1, 0, 'C', 1);
$pdf->Cell(41, 5, "TOTAL", 1, 0, 'C', 1);
$pdf->Cell(41, 5,'$' . number_format($total, 2, '.', ','), 1, 0, 'C', 1);
$pdf->Ln();

$pdf->Ln();
$pdf->Cell(30, 5, utf8_decode("Observaciones"), 0, 0, 'L');
$pdf->SetFont('Arial','',10);
$pdf->MultiCell(190,5,'');
$pdf->MultiCell(190,5,utf8_decode($result_venta['observaciones']));

$pdf->Ln(8);

//$pdf->SetFont('Arial','B',10);
//$pdf->MultiCell(190, 5, utf8_decode('Vo.Bo.Gerencia: _________________________________   Vo.Bo.Cartera:  _________________________________'));

$pdf->Output("ventas.pdf", "I");

?>

