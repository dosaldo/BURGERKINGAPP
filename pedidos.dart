import 'domicilio.dart';
import '../bkkingflutter/botones.dart';
import '../bkkingflutter/temas.dart';
import '../bkkingflutter/herramientas.dart';
import 'inicio.dart';
import 'ofertas.dart';
import 'perfil.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PedidosWidget extends StatefulWidget {
  const PedidosWidget({Key key}) : super(key: key);

  @override
  _PedidosWidgetState createState() => _PedidosWidgetState();
}

class _PedidosWidgetState extends State<PedidosWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF5EBDC),
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/Logo-Burger-King.png',
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5EBDC),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.95, -0.95),
                      child: Text(
                        'Hola,',
                        style: temasburguerking.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.35),
                      child: Text(
                        'Antes de ordenar, asegúrate que tu ciudad y Burguer King estén conectados',
                        textAlign: TextAlign.center,
                        style: temasburguerking.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.google.com.mx/maps/preview');
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.food_bank,
                                color: Color(0xFFFFA367),
                              ),
                              title: Text(
                                'Consumir en el restaurante',
                                style: temasburguerking.of(context).title3,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFFFFA367),
                                size: 20,
                              ),
                              tileColor: Color(0xFFF5EBDC),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.google.com.mx/maps/preview');
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.shopping_bag,
                                color: Color(0xFFFFA367),
                              ),
                              title: Text(
                                'Recoger en tienda',
                                style: temasburguerking.of(context).title3,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFFFFA367),
                                size: 20,
                              ),
                              tileColor: Color(0xFFF5EBDC),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DomicilioWidget(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.motorcycle,
                                color: Color(0xFFFFA367),
                              ),
                              title: Text(
                                'Entrega a domicilio',
                                style: temasburguerking.of(context).title3,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFFFFA367),
                                size: 20,
                              ),
                              tileColor: Color(0xFFF5EBDC),
                              dense: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EBDC),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.9, -0.9),
                      child: Text(
                        'Encuentra tu BK®',
                        style: temasburguerking.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.03, 0.31),
                      child: Wrap(
                        spacing: 0,
                        runSpacing: 0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      'Plaza Juárez\nAv. Ejército Nacional #6514',
                                      textAlign: TextAlign.center,
                                      style: temasburguerking.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      'Jilotepec\nAv. de las Torres No 1680',
                                      textAlign: TextAlign.center,
                                      style: temasburguerking.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      'Blvrd. Francico Villareal Torres #2050',
                                      textAlign: TextAlign.center,
                                      style: temasburguerking.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        botones(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.home,
                            color: Color(0xFF4D2008),
                            size: 20,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InicioWidget(),
                              ),
                            );
                          },
                        ),
                        botones(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.fastfood_sharp,
                            color: Color(0xFFFF2222),
                            size: 22,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        botones(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.local_offer,
                            color: Color(0xFF4D2008),
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OfertasWidget(),
                              ),
                            );
                          },
                        ),
                        botones(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.drive_eta,
                            color: Color(0xFF4D2008),
                            size: 25,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DomicilioWidget(),
                              ),
                            );
                          },
                        ),
                        botones(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: FaIcon(
                            FontAwesomeIcons.crown,
                            color: Color(0xFF4D2008),
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PerfilWidget(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
