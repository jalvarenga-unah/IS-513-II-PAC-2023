import 'package:componentes/src/pages/imagenes_page.dart';

import '../pages/home_page.dart';
import '../pages/listas_const_page.dart';
import '../pages/listas_page.dart';
import 'constantes.dart';

final rutas = {
  Rutas.inicio.name: (context) => const HomePage(),
  Rutas.listas.name: (context) => const ListasPage(),
  Rutas.listasConstrucor.name: (context) => const ListaConstPage(),
  Rutas.imagenesPage.name: (context) => const ImagenesPage()
};
