import 'package:dicertur_quistococha/src/api/ticket_api.dart';
import 'package:dicertur_quistococha/src/bloc/provider_bloc.dart';
import 'package:dicertur_quistococha/src/models/detalle_ticket_model.dart';
import 'package:dicertur_quistococha/src/models/tarifa_model.dart';
import 'package:dicertur_quistococha/src/models/tarifas_monto_precio_model.dart';
import 'package:dicertur_quistococha/src/models/ticket_model.dart';
import 'package:dicertur_quistococha/src/pages/mostrar_tarifas.dart';
import 'package:dicertur_quistococha/src/pages/tabs/bloc_contador_qr.dart';
import 'package:dicertur_quistococha/src/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CobroTicket extends StatefulWidget {
  final String idTicket;
  const CobroTicket({Key? key, required this.idTicket}) : super(key: key);

  @override
  _CobroTicketState createState() => _CobroTicketState();
}

class _CobroTicketState extends State<CobroTicket> {
  final _controllerCobro = TarifasCobroController();
  ValueNotifier<bool> _cargando = ValueNotifier(false);
  String idConsulta = '';

  @override
  Widget build(BuildContext context) {
    var fomatoQR = widget.idTicket.split("|");
    idConsulta = fomatoQR[fomatoQR.length - 1].trim();
    final ticketBloc = ProviderBloc.ticket(context);
    ticketBloc.getTicketsForID(idConsulta);

    final ContadorQrBloc? provider = Provider.of<ContadorQrBloc>(context, listen: false);

    return WillPopScope(
      onWillPop: () async {
        provider!.changeValorQr(0);
        Navigator.pop(context);
        return false;
      },
      child: StreamBuilder(
        stream: ticketBloc.ticketIdStream,
        builder: (context, AsyncSnapshot<List<TicketModel>> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.length > 0) {
              return ValueListenableBuilder(
                  valueListenable: _cargando,
                  builder: (BuildContext context, bool data, Widget? child) {
                    return Stack(
                      children: [
                        Scaffold(
                          appBar: AppBar(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            iconTheme: IconThemeData(
                              color: Colors.black,
                            ),
                          ),
                          body: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(16),
                              vertical: ScreenUtil().setHeight(10),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(24),
                                    vertical: ScreenUtil().setHeight(16),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Complejo Turístico Quistococha',
                                          style: GoogleFonts.poppins(
                                            color: Color(0XFF505050),
                                            fontWeight: FontWeight.w500,
                                            fontSize: ScreenUtil().setSp(16),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: ScreenUtil().setHeight(9),
                                      ),
                                      Center(
                                        child: Text(
                                          'Km. 4.5 Carrt. Iquitos-Nauta',
                                          style: GoogleFonts.poppins(
                                            color: Color(0XFFA8A8A8),
                                            fontWeight: FontWeight.w400,
                                            fontSize: ScreenUtil().setSp(14),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Divider(),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(24),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Fecha: ',
                                        style: GoogleFonts.poppins(
                                          color: Color(0XFFA8A8A8),
                                          fontWeight: FontWeight.w400,
                                          fontSize: ScreenUtil().setSp(14),
                                        ),
                                      ),
                                      Text(
                                        '${snapshot.data![0].eventoFecha}',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: ScreenUtil().setSp(14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  height: ScreenUtil().setHeight(25),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(24),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Cliente',
                                            style: GoogleFonts.poppins(
                                              color: Color(0XFFA8A8A8),
                                              fontWeight: FontWeight.w400,
                                              fontSize: ScreenUtil().setSp(14),
                                            ),
                                          ),
                                          Text(
                                            'DNI',
                                            style: GoogleFonts.poppins(
                                              color: Color(0XFFA8A8A8),
                                              fontWeight: FontWeight.w400,
                                              fontSize: ScreenUtil().setSp(14),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: ScreenUtil().setHeight(12),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '${snapshot.data![0].clienteNombre}',
                                              style: GoogleFonts.poppins(
                                                color: Color(0XFF505050),
                                                fontWeight: FontWeight.w500,
                                                fontSize: ScreenUtil().setSp(16),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: ScreenUtil().setWidth(10),
                                          ),
                                          Container(
                                            width: ScreenUtil().setWidth(85),
                                            child: Text(
                                              '${snapshot.data![0].clienteDni}',
                                              textAlign: TextAlign.end,
                                              style: GoogleFonts.poppins(
                                                color: Color(0XFF505050),
                                                fontWeight: FontWeight.w500,
                                                fontSize: ScreenUtil().setSp(16),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        final boxWidth = constraints.constrainWidth();
                                        final dashWidth = 10.0;
                                        final dashCount = (boxWidth / (2 * dashWidth)).floor();

                                        return Flex(
                                          children: List.generate(dashCount, (_) {
                                            return SizedBox(
                                              width: dashWidth,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(color: Colors.grey),
                                              ),
                                            );
                                          }),
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          direction: Axis.horizontal,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(24),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Tipo',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xffA8A8A8),
                                              fontWeight: FontWeight.w400,
                                              fontSize: ScreenUtil().setSp(14),
                                            ),
                                          ),
                                          Text(
                                            'Cantidad',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xffA8A8A8),
                                              fontWeight: FontWeight.w400,
                                              fontSize: ScreenUtil().setSp(14),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: ScreenUtil().setHeight(12),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: ScreenUtil().setHeight(11),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          // borderRadius: BorderRadius.only(
                                          //   bottomLeft: Radius.circular(15),
                                          //   bottomRight: Radius.circular(15),
                                          // ),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Método de pago',
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0XFFA8A8A8),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: ScreenUtil().setSp(14),
                                                  ),
                                                ),
                                                Text(
                                                  'Precio',
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0XFFA8A8A8),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: ScreenUtil().setSp(14),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                ('${snapshot.data![0].ticketTipoPago}' == '1')
                                                    ? Text(
                                                        'Pago con tarjeta',
                                                        style: GoogleFonts.poppins(
                                                          color: Color(0XFF505050),
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: ScreenUtil().setSp(16),
                                                        ),
                                                      )
                                                    : Text(
                                                        'Pago en efectivo',
                                                        style: GoogleFonts.poppins(
                                                          color: Color(0XFF505050),
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: ScreenUtil().setSp(16),
                                                        ),
                                                      ),
                                                Spacer(),
                                                Text(
                                                  'S/.${snapshot.data![0].ticketTotal}',
                                                  style: GoogleFonts.poppins(
                                                    color: Color(0XFF505050),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: ScreenUtil().setSp(18),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      (snapshot.data![0].detalle!.length > 0)
                                          ? Container(
                                              height: (snapshot.data![0].detalle!.length + 1) * ScreenUtil().setHeight(55),
                                              child: ListView.builder(
                                                  physics: NeverScrollableScrollPhysics(),
                                                  itemCount: snapshot.data![0].detalle!.length,
                                                  itemBuilder: (context, index2) {
                                                    var tarifas = snapshot.data![0].detalle;
                                                    List<int> array = [];
                                                    for (var i = 0; i < tarifas!.length; i++) {
                                                      array.add(0);
                                                    }
                                                    _controllerCobro.changeArray(array, tarifas);

                                                    return Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              '${snapshot.data![0].detalle![index2].tarifaNombre}',
                                                              style: GoogleFonts.poppins(
                                                                fontSize: ScreenUtil().setSp(16),
                                                                fontWeight: FontWeight.w500,
                                                                color: Color(0XFF505050),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Spacer(),
                                                        _cantidad(int.parse('${snapshot.data![0].detalle![index2].tarifaDetalleCantidad}'), index2,
                                                            '${snapshot.data![0].detalle![index2].tarifaNombre}'),
                                                      ],
                                                    );
                                                  }),
                                            )
                                          : Container(),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(25),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Color(0xffffb240),
                                    onPressed: () async {
                                      _cargando.value = true;
                                      int cont = 0;

                                      for (var i = 0; i < _controllerCobro.array.length; i++) {
                                        if (_controllerCobro.array[i] > 0) {
                                          cont++;
                                        }
                                      }

                                      if (cont > 0) {
                                        String detalle = '';
                                        num tarifaSeleccionado = 0;
                                        for (var i = 0; i < _controllerCobro.array.length; i++) {
                                          tarifaSeleccionado = tarifaSeleccionado + _controllerCobro.array[i];
                                          if (_controllerCobro.array[i] > 0) {
                                            detalle += '${_controllerCobro.tarifas[i].idTarifa},,,${_controllerCobro.array[i].toString()}//--';
                                          }
                                        }
                                        final ticketApi = TicketApi();

                                        final res = await ticketApi.cobrarTicket('${snapshot.data![0].idTicket}', detalle);

                                        if (res.code == '1') {
                                          showToast2('operación realizada correctamente', Colors.green);

                                          Navigator.of(context).pushNamedAndRemoveUntil('home', (Route<dynamic> route) => false);
                                        } else {
                                          showToast2('Operación fallida', Colors.red);
                                        }
                                      } else {
                                        showToast2('Por favor seleccione la cantidad de entradas a cobrar', Colors.red);
                                      }

                                      _cargando.value = false;
                                    },
                                    child: Text(
                                      'Guardar',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        (data) ? Center(child: CupertinoActivityIndicator()) : Container()
                      ],
                    );
                  });
            } else {
              return Scaffold(
                appBar: AppBar(),
                body: Center(
                  child: Text('No existen Tickets'),
                ),
              );
            }
          } else {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget _cantidad(int cantidadMaxima, int index, String nombre) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        width: ScreenUtil().setWidth(160),
        height: ScreenUtil().setHeight(50),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              flex: 3,
              child: GestureDetector(
                onTap: () {
                  _controllerCobro.changeCatidad(-1, index, cantidadMaxima, nombre);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffb240),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      "-",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(36),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: AnimatedBuilder(
                  animation: _controllerCobro,
                  builder: (context, snapshot) {
                    return Container(
                      color: Colors.white,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          _controllerCobro.array[index].toString(),
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(24),
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF606060),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Flexible(
              flex: 3,
              child: GestureDetector(
                onTap: () {
                  _controllerCobro.changeCatidad(1, index, cantidadMaxima, nombre);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffb240),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(36),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TarifasCobroController extends ChangeNotifier {
  var array;
  List<DetalleTicketModel> tarifas = [];

  void changeArray(var dato, List<DetalleTicketModel> t) {
    array = dato;
    tarifas = t;
    notifyListeners();
  }

  void changeCatidad(int cantidad, int index, int maximo, String nombreEntrada) {
    if (cantidad > 0) {
      if (array[index] >= maximo) {
        showToast2('Supero el número de entradas compradas para $nombreEntrada', Colors.red);
      } else {
        array[index]++;
      }
    } else {
      if (array[index] > 1) {
        array[index]--;
      } else {
        array[index] = 0;
      }
    }
    print('dato actualizado index : $index, cantida ${array[index]}');

    notifyListeners();
  }
}
