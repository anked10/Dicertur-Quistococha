import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetalleTicketPage extends StatelessWidget {
  final bool esProximo;
  const DetalleTicketPage({Key key, @required this.esProximo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0XFFFAFAFA),
        elevation: 0,
        title: Text(
          'Ticket: SUK 9058',
          style: GoogleFonts.poppins(
            color: Color(0XFF707070),
            fontWeight: FontWeight.w500,
            fontSize: ScreenUtil().setSp(16),
            letterSpacing: 1.5,
          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0XFF40A3FF),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: ScreenUtil().setWidth(24)),
            child: Icon(Icons.share),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(32)),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(24),
                            vertical: ScreenUtil().setHeight(16),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              )),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Entrada',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFFA8A8A8),
                                      fontWeight: FontWeight.w400,
                                      fontSize: ScreenUtil().setSp(14),
                                    ),
                                  ),
                                  Text(
                                    '01 agosto',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFFA8A8A8),
                                      fontWeight: FontWeight.w400,
                                      fontSize: ScreenUtil().setSp(14),
                                    ),
                                  ),
                                  Text(
                                    'Salida',
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
                                  Text(
                                    '8:00 AM',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w700,
                                      fontSize: ScreenUtil().setSp(18),
                                    ),
                                  ),
                                  Text(
                                    '2hr',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFFA8A8A8),
                                      fontWeight: FontWeight.w400,
                                      fontSize: ScreenUtil().setSp(18),
                                    ),
                                  ),
                                  Text(
                                    '10:00 AM',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w700,
                                      fontSize: ScreenUtil().setSp(18),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                height: ScreenUtil().setHeight(20),
                                width: ScreenUtil().setWidth(10),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                                      color: Color(0XFFFAFAFA)),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Flex(
                                        children: List.generate(
                                            (constraints.constrainWidth() / 10).floor(),
                                            (index) => SizedBox(
                                                  height: ScreenUtil().setHeight(1),
                                                  width: ScreenUtil().setWidth(5),
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(color: Color(0XFFC4C4C4)),
                                                  ),
                                                )),
                                        direction: Axis.horizontal,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(20),
                                width: ScreenUtil().setWidth(10),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                      color: Color(0XFFFAFAFA)),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                                height: ScreenUtil().setHeight(12),
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
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Lincoln Rios',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenUtil().setSp(16),
                                    ),
                                  ),
                                  Text(
                                    '71100394',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenUtil().setSp(16),
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
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Flex(
                                    children: List.generate(
                                        (constraints.constrainWidth() / 10).floor(),
                                        (index) => SizedBox(
                                              height: ScreenUtil().setHeight(1),
                                              width: ScreenUtil().setWidth(5),
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(color: Color(0XFFC4C4C4)),
                                              ),
                                            )),
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  );
                                },
                              ),
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
                                      color: Color(0XFFA8A8A8),
                                      fontWeight: FontWeight.w400,
                                      fontSize: ScreenUtil().setSp(14),
                                    ),
                                  ),
                                  Text(
                                    'Cantidad',
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
                                  Text(
                                    'Adultos',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenUtil().setSp(16),
                                    ),
                                  ),
                                  Text(
                                    'X02',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w400,
                                      fontSize: ScreenUtil().setSp(16),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Niños',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenUtil().setSp(16),
                                    ),
                                  ),
                                  Text(
                                    'X01',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w400,
                                      fontSize: ScreenUtil().setSp(16),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Adultos mayores',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenUtil().setSp(16),
                                    ),
                                  ),
                                  Text(
                                    'X02',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w400,
                                      fontSize: ScreenUtil().setSp(16),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Extrajeros',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenUtil().setSp(16),
                                    ),
                                  ),
                                  Text(
                                    'X01',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w400,
                                      fontSize: ScreenUtil().setSp(16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Flex(
                                    children: List.generate(
                                        (constraints.constrainWidth() / 10).floor(),
                                        (index) => SizedBox(
                                              height: ScreenUtil().setHeight(1),
                                              width: ScreenUtil().setWidth(5),
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(color: Color(0XFFC4C4C4)),
                                              ),
                                            )),
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(24),
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
                                  Row(
                                    children: [
                                      Container(
                                        child: SvgPicture.asset('assets/svg/visa.svg'),
                                      ),
                                      SizedBox(
                                        width: ScreenUtil().setWidth(8),
                                      ),
                                      Text(
                                        '*** 1234',
                                        style: GoogleFonts.poppins(
                                          color: Color(0XFF505050),
                                          fontWeight: FontWeight.w500,
                                          fontSize: ScreenUtil().setSp(16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'S/ 45.00',
                                    style: GoogleFonts.poppins(
                                      color: Color(0XFF505050),
                                      fontWeight: FontWeight.w600,
                                      fontSize: ScreenUtil().setSp(18),
                                    ),
                                  ),
                                ],
                              ),
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
                            children: [
                              Expanded(
                                child: Text(
                                  'Al momento de ingresar al complejo por favor dejar que escaneen su ticket',
                                  style: GoogleFonts.poppins(
                                    color: Color(0XFFA8A8A8),
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(14),
                                  ),
                                ),
                              ),
                              Container(
                                height: ScreenUtil().setHeight(70),
                                width: ScreenUtil().setWidth(70),
                                child: Image.asset('assets/svg/qrCode.png'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Image.asset('assets/svg/banner.png'),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setHeight(16),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset('assets/svg/clock.svg'),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(9),
                        ),
                        Expanded(
                          child: Text(
                            'Por favor acuda 30 min antes de su visita, no olvide llevar su identificación',
                            style: GoogleFonts.poppins(
                              color: Color(0XFF808080),
                              fontWeight: FontWeight.w400,
                              fontSize: ScreenUtil().setSp(14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              (!esProximo)
                  ? Container(
                      child: SvgPicture.asset('assets/svg/utilizado.svg'),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
