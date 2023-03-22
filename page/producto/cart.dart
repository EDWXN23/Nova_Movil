import 'producto.dart';

//aqui mantengo los productos , de todas las categorias
class Cart {
  static final Cart _singleton = Cart._internal();

  List<Producta> _selectedProducts = [];

  factory Cart() {
    return _singleton;
  }

  Cart._internal();

  void addProduct(Producta product) {
    _selectedProducts.add(product);
  }

  void removeProduct(Producta product) {
    _selectedProducts.remove(product);
  }

  List<Producta> get selectedProducts {
    return _selectedProducts;
  }
}
