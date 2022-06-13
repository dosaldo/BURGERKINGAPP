import 'config.dart';
import 'domicilio.dart';
import '../bkkingflutter/botones.dart';
import '../bkkingflutter/temas.dart';
import '../bkkingflutter/herramientas.dart';
import 'inicio.dart';
import 'login.dart';
import 'ofertas.dart';
import 'pedidos.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({Key key}) : super(key: key);

  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
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
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.9, -0.75),
                      child: Text(
                        'Perfil',
                        style: temasburguerking.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF4D2008),
                              fontSize: 24,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 300,
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
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ConfigWidget(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.settings,
                                color: Color(0xFF4D2008),
                              ),
                              title: Text(
                                'Ajustes',
                                style: temasburguerking.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF4D2008),
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
                                  builder: (context) => LoginWidget(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.login,
                                color: Color(0xFF4D2008),
                              ),
                              title: Text(
                                'Crear cuenta ° Iniciar Sesión',
                                style: temasburguerking.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF4D2008),
                                size: 20,
                              ),
                              tileColor: Color(0xFFF5EBDC),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.facebook.com/burgerking');
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.share,
                                color: Color(0xFF4D2008),
                              ),
                              title: Text(
                                'Seguir BK',
                                style: temasburguerking.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF4D2008),
                                size: 20,
                              ),
                              tileColor: Color(0xFFF5EBDC),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.facebook.com/burgerking');
                            },
                            child: ListTile(
                              leading: FaIcon(
                                FontAwesomeIcons.share,
                                color: Color(0xFF4D2008),
                              ),
                              title: Text(
                                'Compartir BK',
                                style: temasburguerking.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF4D2008),
                                size: 20,
                              ),
                              tileColor: Color(0xFFF5EBDC),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.bk.com/?fbclid=IwAR3Uc1l5BpZ7GvTSnGOEuBZluP0UsUja_GuPuGKLpko5B7KThA3IPviodUY');
                            },
                            child: ListTile(
                              leading: FaIcon(
                                FontAwesomeIcons.share,
                                color: Color(0xFF4D2008),
                              ),
                              title: Text(
                                'Contacto BK',
                                style: temasburguerking.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF4D2008),
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
                            color: Color(0xFFFF2222),
                            size: 30,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
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
