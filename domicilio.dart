import '../bkkingflutter/botones.dart';
import '../bkkingflutter/temas.dart';
import '../bkkingflutter/herramientas.dart';
import '../bkkingflutter/widgets.dart';
import 'inicio.dart';
import 'ofertas.dart';
import 'pedidos.dart';
import 'perfil.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DomicilioWidget extends StatefulWidget {
  const DomicilioWidget({Key key}) : super(key: key);

  @override
  _DomicilioWidgetState createState() => _DomicilioWidgetState();
}

class _DomicilioWidgetState extends State<DomicilioWidget> {
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
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0x00EEEEEE),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.85, -0.27),
                          child: InkWell(
                            onTap: () async {
                              await launchURL('https://www.ubereats.com/mx');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/images/descarga.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, -0.27),
                          child: InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.didi-food.com/es-MX');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/images/descarga_(1).png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.85, -0.27),
                          child: InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.rappi.com.mx/restaurantes/1923261088-15001-burger-king-jilotepec-hm');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/images/800px-Rappi_backgr_logo.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.55, -0.95),
                          child: Text(
                            'Servicio a domicilio',
                            style:
                                temasburguerking.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF4D2008),
                                      fontSize: 27,
                                    ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.7, -0.7),
                          child: Text(
                            'Realiza tu pedido en línea',
                            style:
                                temasburguerking.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.5),
                          child: btnwidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Ordena ahora',
                            options: btnking(
                              width: 200,
                              height: 40,
                              color: Color(0xFFFF2222),
                              textStyle: temasburguerking.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            color: Color(0xFF4D2008),
                            size: 22,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PedidosWidget(),
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
                            color: Color(0xFFFF2222),
                            size: 25,
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
