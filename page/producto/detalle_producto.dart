import 'package:flutter/material.dart';
import 'package:nova_sport_app/page/producto/boton_colors.dart';
import 'package:nova_sport_app/page/producto/boton_tallas.dart';
import 'package:nova_sport_app/page/producto/producto.dart';

class ProductDetailsPage extends StatefulWidget {
  final Producta product;

  ProductDetailsPage({required this.product});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class Colores extends StatefulWidget {
  @override
  _ColoresState createState() => _ColoresState();
}

class _ColoresState extends State<Colores> {
  // Guarda el índice del botón de color seleccionado
  int selectedIndex = 0;

  // Lista de colores para elegir
  final colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < colors.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              onPressed: () {
                // Al presionar el botón de color, cambia el índice seleccionado
                setState(() {
                  selectedIndex = i;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: colors[i],
                shape: CircleBorder(),
                padding: const EdgeInsets.all(12.0),
                // Si el índice seleccionado es igual al índice del botón actual,
                // establece el borde como un borde de 2 píxeles, de lo contrario, sin borde
                side: BorderSide(
                  color: selectedIndex == i ? Colors.white : Colors.transparent,
                  width: 2.0,
                ),
              ),
              child: SizedBox.shrink(),
            ),
          ),
      ],
    );
  }
}

class TallasScreen extends StatefulWidget {
  @override
  _TallasScreenState createState() => _TallasScreenState();
}

class _TallasScreenState extends State<TallasScreen> {
  // Guarda la talla seleccionada
  String selectedSize = "";

  // Lista de tallas para elegir
  final sizes = ["XS", "S", "M", "L", "XL"];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var size in sizes)
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Al presionar el botón de talla, establece la talla seleccionada
                setState(() {
                  selectedSize = size;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: selectedSize == size ? Colors.grey[300] : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: Colors.grey[300]!,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
              ),
              child: Text(
                size,
                style: TextStyle(
                  color: selectedSize == size ? Colors.white : Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int cartItemCount = 0;
  List<Producta> _cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.product.nombre),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // Acción al presionar el botón de búsqueda
                },
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 18,
                    minHeight: 18,
                  ),
                  child: Text(
                    '$cartItemCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //imagen
                  Container(
                    constraints: BoxConstraints(
                      minHeight: 300,
                      maxHeight: 400,
                    ),
                    child: Image.network(
                      widget.product.rutaimagen,
                      fit: BoxFit.cover,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          child: Center(
                            child: Text(
                              'No se pudo cargar la imagen',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  //todos los datos
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.nombre,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          "Descripcion",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.amber),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          widget.product.descripcion,
                          style: const TextStyle(fontSize: 18.0),
                        ),
                        const SizedBox(height: 16.0),
                        const Text(
                          "Colores",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.amber),
                        ),
                        const SizedBox(height: 16.0),

                        Colores(),
                        const SizedBox(height: 16.0),
                        const Text(
                          "Tallas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.amber),
                        ),
                        const SizedBox(height: 16.0),

                        // Row(
                        //   children: [
                        //     _buildButton("ch", Colors.grey[300]!),
                        //     const SizedBox(width: 16.0),
                        //     _buildButton("G", Colors.grey[300]!),
                        //     const SizedBox(width: 16.0),
                        //     _buildButton("M", Colors.grey[300]!),
                        //   ],
                        // ),
                        // SizedBox(height: 50),
                      ],
                    ),
                  ),

                  Column(
                    children: [
                      TallasScreen(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Agregar el producto actual a la lista del carrito
                    _cartItems.add(widget.product);

                    // Aumentar el número de productos en el carrito
                    cartItemCount++;

                    // Mostrar un mensaje en la consola con los productos en el carrito
                    print('Productos en el carrito: $_cartItems');
                  });
                },
                child: Text(
                  "Agregar",
                  style: TextStyle(fontSize: 24.0),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 70),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildDot(Color color) {
  return Container(
    width: 30.0,
    height: 30.0,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
    margin: const EdgeInsets.only(right: 8.0),
  );
}

Widget _buildButton(String text, Color color) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          padding: const EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    ),
  );
}
