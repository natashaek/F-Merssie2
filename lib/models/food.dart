import 'package:merssie/models/lugar.dart';

class Food {
  late String nombre;
  late String tipo;
  late String comidaFot;
  late Lugar lugar;

  bool isFavorite;

  Food(
      {required this.nombre,
      required this.tipo,
      required this.lugar,
      required this.comidaFot,
      this.isFavorite = false});
}
