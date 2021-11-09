import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MetodoPago extends StatelessWidget {
  const MetodoPago({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue),
        title: Text(
          'MÉTODO DE PAGO',
          style: TextStyle(
            color: Color(0xff808080),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20),
            ),
            width: double.infinity,
            height: ScreenUtil().setHeight(250),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 0.8],
                colors: [
                  Color(0xff00afef),
                  Color(0xff0077bd),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff323232).withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Row(
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(100),
                      height: ScreenUtil().setHeight(30),
                      child: SvgPicture.asset(
                        'assets/svg/visa_white.svg',
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: Container(
                        width: ScreenUtil().setWidth(100),
                        height: ScreenUtil().setHeight(50),
                        child: Image(
                          image: AssetImage('assets/svg/gore2.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(80),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: ScreenUtil().setHeight(8),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(2),
                      ),
                      CircleAvatar(
                        radius: ScreenUtil().setHeight(8),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(2),
                      ),
                      CircleAvatar(
                        radius: ScreenUtil().setHeight(8),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(20),
                      ),
                      CircleAvatar(
                        radius: ScreenUtil().setHeight(8),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(2),
                      ),
                      CircleAvatar(
                        radius: ScreenUtil().setHeight(8),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(2),
                      ),
                      CircleAvatar(
                        radius: ScreenUtil().setHeight(8),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(20),
                      ),
                      CircleAvatar(
                        radius: ScreenUtil().setHeight(8),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(2),
                      ),
                      CircleAvatar(
                        radius: ScreenUtil().setHeight(8),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(2),
                      ),
                      CircleAvatar(
                        radius: ScreenUtil().setHeight(8),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(20),
                      ),
                      Text(
                        '1234',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(
                            22,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
                  child: Row(
                    children: [
                      Text(
                        'Bufeotec Company',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(
                            18,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '11/25',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(
                            18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                )
              ],
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(20),
          ),
          Row(
            children: [
              SizedBox(
                width: ScreenUtil().setWidth(20),
              ),
              Text(
                'Detalles',
                style: TextStyle(
                  color: Color(0xff505050),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenUtil().setSp(
                    22,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(20),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20),
            ),
            height: ScreenUtil().setHeight(120),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff323232).withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Salida'),
                        Text(
                          '08:00 AM',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '2hr',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(25),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Salida'),
                        Text(
                          '08:00 AM',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
