document.addEventListener('DOMContentLoaded', function () {
    $('#tbl').DataTable()
    $('.confirmar').submit(function (e) {
        e.preventDefault()
        Swal.fire({
            title: 'Esta seguro de eliminar?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'SI, Eliminar!'
        }).then((result) => {
            if (result.isConfirmed) {
                this.submit()
            }
        })
    })
    $('#nom_cliente').autocomplete({
        minLength: 3,
        source: function (request, response) {
            $.ajax({
                url: 'ajax.php',
                dataType: 'json',
                data: {
                    q: request.term
                },
                success: function (data) {
                    response(data)
                }
            })
        },
        select: function (event, ui) {
            $('#idcliente').val(ui.item.id)
            $('#nom_cliente').val(ui.item.label)
            $('#NIT_cliente').val(ui.item.NIT)
            $('#tel_cliente').val(ui.item.telefono)
            $('#dir_cliente').val(ui.item.direccion)
            $('#ciu_cliente').val(ui.item.ciudad)
        }
    })
     $('#nom_proveedor').autocomplete({
        minLength: 3,
        source: function (request, response) {
            $.ajax({
                url: 'ajax.php',
                dataType: 'json',
                data: {
                    p: request.term
                },
                success: function (data) {
                    response(data)
                }
            })
        },
        select: function (event, ui) {
            $('#idproveedor').val(ui.item.id)
            $('#nom_proveedor').val(ui.item.label)
            $('#NIT_proveedor').val(ui.item.NIT)
            $('#tel_proveedor').val(ui.item.telefono)
            $('#cor_proveedor').val(ui.item.correo)
        }
    })
    $('#producto').autocomplete({
        minLength: 3,
        source: function (request, response) {
            $.ajax({
                url: 'ajax.php',
                dataType: 'json',
                data: {
                    pro: request.term
                },
                success: function (data) {
                    response(data)
                }
            })
        },
        select: function (event, ui) {
            $('#producto').val(ui.item.value)
            setTimeout(function () {
                const e = jQuery.Event('keypress')
                e.which = 13
                registrarDetalle(e, ui.item.id, 1, ui.item.precio)
            })
        }
    })
   $('#btn_generar').click(function (e) {
        e.preventDefault()
        const rows = $('#tblDetalle tr').length
        if (rows > 2) {
            //const action = 'procesarVenta'
            var form_data = new FormData();
            var file_data = $("#campoarchivo").prop("files")[0];
            form_data.append("action",'procesarVenta');
            form_data.append("procesarVenta",'action');
            form_data.append("id",$('#idcliente').val());
            form_data.append("tiposervicio",$('#tiposervicio').val());
            form_data.append("fecha",$('#fecha').val());
            form_data.append("tiempoentrega",$('#tiempoentrega').val());
            form_data.append("ordeno",$('#ordeno').val());
            form_data.append("descripcionfacturar",$('#descripcionfacturar').val());
            form_data.append("nombrevendedor",$('#nombrevendedor').val());
            form_data.append("numeroorden",$('#numeroorden').val());
            form_data.append("formapago",$('#formapago').val());
            form_data.append("nordencompra",$('#nordencompra').val());
            form_data.append("observaciones",$('#observaciones').val());
            form_data.append("incluye",$('#incluye').val());
            form_data.append("campoarchivo",file_data);
            
            for (var value of form_data.values()) {
                console.log(value);
            }
    
            //const action = 'procesarVenta'
            // const id = $('#idcliente').val()
            // const tiposervicio = $('#tiposervicio').val()
            // const tiempoentrega = $('#tiempoentrega').val()
            // const ordeno = $('#ordeno').val()
            // const formapago = $('#formapago').val()
            // const nordencompra = $('#nordencompra').val()
            // const observaciones = $('#observaciones').val()

            $.ajax({
                url: 'ajax.php',
                async: true, 
                method:'post',
                processData: false,
                contentType: false,
                data: form_data,
                success: function (response) {
                     const res = JSON.parse(response)
                    if (response !== 'error') {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'success',
                            title: 'Venta Generada',
                            showConfirmButton: false,
                            timer: 2000
                        })
                        setTimeout(() => {
                            generarPDF(res.id_cliente, res.id_venta)
                            location.reload()
                        }, 300)
                    } else {
                        Swal.fire({
                            position: 'top-end',
                            icon: 'error',
                            title: 'Error al generar la venta',
                            showConfirmButton: false,
                            timer: 2000
                        })
                    }
                },
                error: function (error) {
                    console.log(error)
                }
            })
        } else {
            Swal.fire({
                position: 'top-end',
                icon: 'warning',
                title: 'No hay producto para generar la venta',
                showConfirmButton: false,
                timer: 2000
            })
        }
    })
    if (document.getElementById('detalle_venta')) {
        listar()
    }
})

// Se debe mantener los elementos como array, no tomar valores desde html
let products = []
const targetTable = document.querySelector('#detalle_venta')

function mostrarLoader () {
    targetTable.innerHTML = `
        <div class="text-center">
            Cargando...
        </div>
    `
}

function renderizarTabla () {
    let htmlTabla = ''
    products
        .forEach((row) => {
            htmlTabla += `<tr>
            <td>${row.id}</td>
            <td>${row.descripcion}</td>
           <td>${row.modelo}</td>
            <td>${row.potencia}</td>
            <td>${row.relacion}</td>
            <td>${row.velocidad}</td>
            <td>${row.voltaje}</td>
            <td>${row.capacidad}</td>
            <td>${row.tipopolipasto}</td>
            <td>${row.izaje}</td>
            <td>${row.dimensiones}</td>
            <td>${row.longitud}</td>
            <td>${row.amperaje}</td>
            <td>${row.alimentacion}</td>
            <td>${row.cantidad}</td>
            <td>${formatoMoneda(row.precio_venta)}</td>
            <td>${formatoMoneda(row.sub_total)}</td>
            <td>
                <button
                    class="btn btn-danger"
                    type="button"
                    onclick="deleteDetalle(${row.id})"
                >
                    <i class="fas fa-trash-alt"></i>
                </button>
                <button
                    class="btn btn-info"
                    type="button"
                    alt="Editar precio"
                    onClick="modificarPrecio(${row.id})"
                >
                    <i class="fas fa-money-bill"></i>
                </button>
            </td>
            </tr>`
        })
    targetTable.innerHTML = htmlTabla
}

function modificarPrecio (idProducto) {
    const productoActual = products.findIndex((prod) => prod.id == idProducto)

    if (productoActual >= 0) {
        const nuevoPrecio = prompt(
            'Ingrese nuevo precio',
            products[productoActual].precio_venta
        )
        if (nuevoPrecio !== null && nuevoPrecio != '') {
            products[productoActual].precio_venta = nuevoPrecio
        }

        $.ajax({
            url: 'ajax.php',
            type: 'POST',
            dataType: 'json',
            data: {
                action: 'modificarPrecio',
                nuevo_precio: nuevoPrecio,
                id_producto: products[productoActual].id_producto,
                id_detalle: products[productoActual].id
            },
            success: function (response) {
                console.log('Modificando precio...', response)

                if (response.success === true) {
                    alert(response.msg || 'Precio modificado')
                    renderizarTabla()
                    calcularTotal()
                } else {
                    alert(response.msg || 'No se pudo modificar')
                }
            },
            error: function (err) {
                console.log(err)
            }
        })

        console.log(`Modificando precio de producto: ${idProducto}...`)
    } else {
        console.log('Producto no encontrado')
    }
}

function listar () {
    const html = ''
    const detalle = 'detalle'

    // Limpiar total de tabla
    document
        .querySelectorAll('#tblDetalle tfoot tr td')[1]
            .textContent = '...'

    $.ajax({
        url: 'ajax.php',
        dataType: 'json',
        data: {
            detalle
        },
        beforeSend: () => mostrarLoader(),
        success: function (response) {
            products = response
            setTimeout(() => {
                renderizarTabla()
                calcularTotal()
            }, 500)
        }
    })
}

function registrarDetalle (e, id, cant, precio) {
    if (document.getElementById('producto').value != '') {
        if (e.which == 13) {
            if (id != null) {
                const action = 'regDetalle'
                $.ajax({
                    url: 'ajax.php',
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        id,
                        cant,
                        action,
                        precio
                        //incluye
                    },
                    success: function (response) {
                        if (response == 'registrado') {
                            Swal.fire({
                                position: 'top-end',
                                icon: 'success',
                                title: 'Producto Ingresado',
                                showConfirmButton: false,
                                timer: 2000
                            })
                            document.querySelector('#producto').value = ''
                            document.querySelector('#producto').focus()
                            listar()
                        } else if (response == 'actualizado') {
                            Swal.fire({
                                position: 'top-end',
                                icon: 'success',
                                title: 'Producto Actualizado',
                                showConfirmButton: false,
                                timer: 2000
                            })
                            document.querySelector('#producto').value = ''
                            document.querySelector('#producto').focus()
                            listar()
                        } else {
                            Swal.fire({
                                position: 'top-end',
                                icon: 'error',
                                title: 'Error al ingresar el producto',
                                showConfirmButton: false,
                                timer: 2000
                            })
                        }
                    }
                })
            }
        }
    }
}
function deleteDetalle (id) {
    const detalle = 'Eliminar'
    $.ajax({
        url: 'ajax.php',
        data: {
            id,
            delete_detalle: detalle
        },
        success: function (response) {
            console.log(response)
            if (response == 'restado') {
                Swal.fire({
                    position: 'top-end',
                    icon: 'success',
                    title: 'Producto Descontado',
                    showConfirmButton: false,
                    timer: 2000
                })
                document.querySelector('#producto').value = ''
                document.querySelector('#producto').focus()
                listar()
            } else if (response == 'ok') {
                Swal.fire({
                    position: 'top-end',
                    icon: 'success',
                    title: 'Producto Eliminado',
                    showConfirmButton: false,
                    timer: 2000
                })
                document.querySelector('#producto').value = ''
                document.querySelector('#producto').focus()
                listar()
            } else {
                Swal.fire({
                    position: 'top-end',
                    icon: 'error',
                    title: 'Error al eliminar el producto',
                    showConfirmButton: false,
                    timer: 2000
                })
            }
        }
    })
}
function calcular () {
    // Obtenemos todas las filas del tbody
    var filas = document.querySelectorAll('#tblDetalle tbody tr')

    let total = 0

    // Recorremos cada una de las filas
    filas.forEach(function (e) {
        // Obtenemos las columnas de cada fila
        const columnas = e.querySelectorAll('td')

        // Obtenemos los valores de la cantidad y importe
        const importe = parseFloat(columnas[4].textContent)

        total += importe
    })

    // Mostramos la suma total
    var filas = document.querySelectorAll('#tblDetalle tfoot tr td')
    filas[1].textContent = total.toFixed(2)
}

function calcularTotal () {
    const total = products
        .reduce((prev, cur) => (prev.sub_total || 0) + cur.sub_total)
    document
        .querySelectorAll('#tblDetalle tfoot tr td')[1]
            .textContent = formatoMoneda(total)
    console.log('Total de productos', total)
}

function formatoMoneda (entrada) {
    return `$${parseFloat(entrada.toString()).toFixed(2)}`
}

function generarPDF (cliente, id_venta) {
    url = `pdf/generar.php?cl=${cliente}&v=${id_venta}`
    window.open(url, '_blank')
}
if (document.getElementById('sales-chart')) {
    const action = 'sales'
    $.ajax({
        url: 'chart.php',
        type: 'POST',
        data: {
            action
        },
        async: true,
        success: function (response) {
            if (response != 0) {
                const data = JSON.parse(response)
                const nombre = []
                const cantidad = []
                for (let i = 0; i < data.length; i++) {
                    nombre.push(data[i].descripcion)
                    cantidad.push(data[i].existencia)
                }
                try {
                    // Sales chart
                    const ctx = document.getElementById('sales-chart')
                    if (ctx) {
                        ctx.height = 150
                        const myChart = new Chart(ctx, {
                            type: 'line',
                            data: {
                                labels: nombre,
                                type: 'line',
                                defaultFontFamily: 'Poppins',
                                datasets: [
                                    {
                                        label: 'Disponible',
                                        data: cantidad,
                                        backgroundColor: 'transparent',
                                        borderColor: 'rgba(220,53,69,0.75)',
                                        borderWidth: 3,
                                        pointStyle: 'circle',
                                        pointRadius: 5,
                                        pointBorderColor: 'transparent',
                                        pointBackgroundColor: 'rgba(220,53,69,0.75)'
                                    },
                                    {
                                        label: 'Cantidad',
                                        data: [
                                            0,
                                            2,
                                            3,
                                            4,
                                            5,
                                            6,
                                            7,
                                            8,
                                            9,
                                            10
                                        ],
                                        backgroundColor: 'transparent',
                                        borderColor: 'rgba(40,167,69,0.75)',
                                        borderWidth: 3,
                                        pointStyle: 'circle',
                                        pointRadius: 5,
                                        pointBorderColor: 'transparent',
                                        pointBackgroundColor: 'rgba(40,167,69,0.75)'
                                    }
                                ]
                            },
                            options: {
                                responsive: true,
                                tooltips: {
                                    mode: 'index',
                                    titleFontSize: 12,
                                    titleFontColor: '#000',
                                    bodyFontColor: '#000',
                                    backgroundColor: '#fff',
                                    titleFontFamily: 'Poppins',
                                    bodyFontFamily: 'Poppins',
                                    cornerRadius: 3,
                                    intersect: false
                                },
                                legend: {
                                    display: false,
                                    labels: {
                                        usePointStyle: true,
                                        fontFamily: 'Poppins'
                                    }
                                },
                                scales: {
                                    xAxes: [
                                        {
                                            display: true,
                                            gridLines: {
                                                display: false,
                                                drawBorder: false
                                            },
                                            scaleLabel: {
                                                display: false,
                                                labelString: 'Month'
                                            },
                                            ticks: {
                                                fontFamily: 'Poppins'
                                            }
                                        }
                                    ],
                                    yAxes: [
                                        {
                                            display: true,
                                            gridLines: {
                                                display: false,
                                                drawBorder: false
                                            },
                                            scaleLabel: {
                                                display: true,
                                                labelString: 'Cantidad',
                                                fontFamily: 'Poppins'

                                            },
                                            ticks: {
                                                fontFamily: 'Poppins'
                                            }
                                        }
                                    ]
                                },
                                title: {
                                    display: false,
                                    text: 'Normal Legend'
                                }
                            }
                        })
                    }
                } catch (error) {
                    console.log(error)
                }
            }
        },
        error: function (error) {
            console.log(error)
        }
    })
}
if (document.getElementById('polarChart')) {
    const action = 'polarChart'
    $('.alertAddProduct').html('')
    $.ajax({
        url: 'chart.php',
        type: 'POST',
        async: true,
        data: {
            action
        },
        success: function (response) {
            if (response != 0) {
                const data = JSON.parse(response)
                var nombre = []
                var cantidad = []
                for (let i = 0; i < data.length; i++) {
                    nombre.push(data[i].descripcion)
                    cantidad.push(data[i].cantidad)
                }
            }
            try {
                // Polar chart
                const ctx = document.getElementById('polarChart')
                if (ctx) {
                    ctx.height = 200
                    const myChart = new Chart(ctx, {
                        type: 'polarArea',
                        data: {
                            datasets: [
                                {
                                    data: cantidad,
                                    backgroundColor: [
                                        'rgb(0, 123, 255)',
                                        'rgb(255, 0, 0)',
                                        'rgb(0, 255, 0)',
                                        'rgb(0,0,0)',
                                        'rgb(0, 0, 255)'
                                    ]

                                }
                            ],
                            labels: nombre
                        },
                        options: {
                            legend: {
                                position: 'top',
                                labels: {
                                    fontFamily: 'Poppins'
                                }

                            },
                            responsive: true
                        }
                    })
                }
            } catch (error) {
                console.log(error)
            }
        },
        error: function (error) {
            console.log(error)
        }
    })
}
function btnCambiar (e) {
    e.preventDefault()
    const actual = document.getElementById('actual').value
    const nueva = document.getElementById('nueva').value
    if (actual == '' || nueva == '') {
        Swal.fire({
            position: 'top-end',
            icon: 'error',
            title: 'Los campos estan vacios',
            showConfirmButton: false,
            timer: 2000
        })
    } else {
        const cambio = 'pass'
        $.ajax({
            url: 'ajax.php',
            type: 'POST',
            data: {
                actual,
                nueva,
                cambio
            },
            success: function (response) {
                console.log(response)
                if (response == 'ok') {
                    Swal.fire({
                        position: 'top-end',
                        icon: 'success',
                        title: 'Contraseña modificado',
                        showConfirmButton: false,
                        timer: 2000
                    })
                    document.querySelector('frmPass').reset()
                    $('#nuevo_pass').modal('hide')
                } else if (response == 'dif') {
                    Swal.fire({
                        position: 'top-end',
                        icon: 'error',
                        title: 'La contraseña actual incorrecta',
                        showConfirmButton: false,
                        timer: 2000
                    })
                } else {
                    Swal.fire({
                        position: 'top-end',
                        icon: 'error',
                        title: 'Error al modificar la contraseña',
                        showConfirmButton: false,
                        timer: 2000
                    })
                }
            }
        })
    }
}
