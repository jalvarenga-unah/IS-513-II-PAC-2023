import 'package:componentes/src/pages/detalle_producto_page.dart';
import 'package:componentes/src/pages/imagenes_page.dart';
import 'package:componentes/src/pages/manejo_estado_page.dart';
import 'package:componentes/src/pages/peticiones_page.dart';

import '../pages/home_page.dart';
import '../pages/inputs_page.dart';
import '../pages/listas_const_page.dart';
import '../pages/listas_page.dart';
import 'constantes.dart';

final rutas = {
  Rutas.inicio.name: (context) => const HomePage(),
  Rutas.listas.name: (context) => const ListasPage(),
  Rutas.listasConstrucor.name: (context) => const ListaConstPage(),
  Rutas.imagenesPage.name: (context) => const ImagenesPage(),
  Rutas.inputsPage.name: (context) => InputsPage(),
  Rutas.peticionesPage.name: (context) => const PeticionesPage(),
  Rutas.detalleProductoPage.name: (context) => const DetalleProductoPage(),
  Rutas.manejoEstado.name: (context) => ManejoEstadoPage(),
};
