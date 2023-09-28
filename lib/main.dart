import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Shop App',
      theme: ThemeData(
        primarySwatch: Colors.green, // Change the primary color
        fontFamily: 'Roboto', // Change the default font
      ),
      home: LocationSelectionScreen(),
    );
  }
}

class LocationSelectionScreen extends StatefulWidget {
  @override
  _LocationSelectionScreenState createState() =>
      _LocationSelectionScreenState();
}

class _LocationSelectionScreenState extends State<LocationSelectionScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Location'),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/background.jpg')
          ,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Enter your location or search term',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Perform your search logic here using _controller.text
                  final searchText = _controller.text;
                  // print('Searching for: $searchText');
                  // Navigate to the customer screen or display results as needed
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          CustomerScreen(selectedLocation: searchText),
                    ),
                  );
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String pimage;

  Product({required this.name, required this.price, required this.pimage});
}



class CustomerScreen extends StatefulWidget {
  final String selectedLocation;

  CustomerScreen({required this.selectedLocation});

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List<Shop> nearbyShops = [
    Shop(
      name: 'Love Over Coffee',
      location: '8 km away',
      ratings: [4.5,4.8],
      comments: ['Great shop!', 'Nice products!'],
      // Add an image URL for the shop here
      image: 'assets/images/Cafe1.jpg',
      estimatedWaitingTime: '10 minutes',
      products: [
        Product(name: 'Coffee', price: 1.00, pimage: 'assets/images/Coffee.jpg'),
        Product(name: 'Burger', price: 2.99,pimage: 'assets/images/Burger.jpg'),
        Product(name: 'Pasta', price: 3.50,pimage: 'assets/images/Pasta.jpg'),
        Product(name: 'Pizza', price: 3.99,pimage: 'assets/images/Pizza.jpg'),
        Product(name: 'Sandwich', price: 2.50,pimage: 'assets/images/Sandwich.jpg'),



        // Add more products for this shop
      ],
    ),
    Shop(
      name: 'Cafe Connect',
      location: '500 m away',
      ratings: [4.0],
      comments: ['Good service.'],
      // Add an image URL for the shop here
      image: 'assets/images/Cafe2.jpg',
      estimatedWaitingTime: '15 minutes',
      products: [
        Product(name: 'Coffee', price: 1.00, pimage: 'assets/images/Coffee.jpg'),
        Product(name: 'Burger', price: 2.99,pimage: 'assets/images/Burger.jpg'),
        Product(name: 'Pasta', price: 3.50,pimage: 'assets/images/Pasta.jpg'),
        Product(name: 'Pizza', price: 3.99,pimage: 'assets/images/Pizza.jpg'),
        Product(name: 'Sandwich', price: 2.50,pimage: 'assets/images/Sandwich.jpg'),

        // Add more products for this shop
      ],
    ),

    Shop(
      name: 'La Multignain',
      location: '1 km away',
      ratings: [4.2],
      comments: ['Good service.'],
      // Add an image URL for the shop here
      image: 'assets/images/Cafe3.jpg',
      estimatedWaitingTime: '5 minutes',
      products: [
        Product(name: 'Coffee', price: 1.00, pimage: 'assets/images/Coffee.jpg'),
        Product(name: 'Burger', price: 2.99,pimage: 'assets/images/Burger.jpg'),
        Product(name: 'Pasta', price: 3.50,pimage: 'assets/images/Pasta.jpg'),
        Product(name: 'Pizza', price: 3.99,pimage: 'assets/images/Pizza.jpg'),
        Product(name: 'Sandwich', price: 2.50,pimage: 'assets/images/Sandwich.jpg'),

      ],
    ),
    Shop(
      name: 'Nothing Before Coffee',
      location: '2 km away',
      ratings: [4.4],
      comments: ['Good service.'],
      // Add an image URL for the shop here
      image: 'assets/images/Cafe4.jpg',
      estimatedWaitingTime: '18 minutes',
      products: [
        Product(name: 'Coffee', price: 1.00, pimage: 'assets/images/Coffee.jpg'),
        Product(name: 'Burger', price: 2.99,pimage: 'assets/images/Burger.jpg'),
        Product(name: 'Pasta', price: 3.50,pimage: 'assets/images/Pasta.jpg'),
        Product(name: 'Pizza', price: 3.99,pimage: 'assets/images/Pizza.jpg'),
        Product(name: 'Sandwich', price: 2.50,pimage: 'assets/images/Sandwich.jpg'),

      ],
    ),
    Shop(
      name: 'Starbucks Coffee',
      location: '3 km away',
      ratings: [4.6],
      comments: ['Good service.'  ],
      // Add an image URL for the shop here
      image: 'assets/images/Cafe5.jpg',
      estimatedWaitingTime: '20 minutes',
      products: [
        Product(name: 'Coffee', price: 1.00, pimage: 'assets/images/Coffee.jpg'),
        Product(name: 'Burger', price: 2.99,pimage: 'assets/images/Burger.jpg'),
        Product(name: 'Pasta', price: 3.50,pimage: 'assets/images/Pasta.jpg'),
        Product(name: 'Pizza', price: 3.99,pimage: 'assets/images/Pizza.jpg'),
        Product(name: 'Sandwich', price: 2.50,pimage: 'assets/images/Sandwich.jpg'),

      ],
    ),
    Shop(
      name: 'Step Out',
      location: '1.5 km away',
      ratings: [4.1],
      comments: ['Good service.'],
      // Add an image URL for the shop here
      image: 'assets/images/Cafe6.jpg',
      estimatedWaitingTime: '1 minutes',
      products: [
        Product(name: 'Coffee', price: 1.00, pimage: 'assets/images/Coffee.jpg'),
        Product(name: 'Burger', price: 2.99,pimage: 'assets/images/Burger.jpg'),
        Product(name: 'Pasta', price: 3.50,pimage: 'assets/images/Pasta.jpg'),
        Product(name: 'Pizza', price: 3.99,pimage: 'assets/images/Pizza.jpg'),
        Product(name: 'Sandwich', price: 2.50,pimage: 'assets/images/Sandwich.jpg'),

      ],
    ),
    Shop(
      name: 'Burger King',
      location: '3 km away',
      ratings: [3.8],
      comments: ['Good service.'],
      // Add an image URL for the shop here
      image: 'assets/images/Cafe7.jpg',
      estimatedWaitingTime: '7.5 minutes',
      products: [
        Product(name: 'Coffee', price: 1.00, pimage: 'assets/images/Coffee.jpg'),
        Product(name: 'Burger', price: 2.99,pimage: 'assets/images/Burger.jpg'),
        Product(name: 'Pasta', price: 3.50,pimage: 'assets/images/Pasta.jpg'),
        Product(name: 'Pizza', price: 3.99,pimage: 'assets/images/Pizza.jpg'),
        Product(name: 'Sandwich', price: 2.50,pimage: 'assets/images/Sandwich.jpg'),

      ],
    ),
    // Add more shops here
  ];


  double calculateAverageRating(List<double> ratings) {
    if (ratings.isEmpty) {
      return 0.0;
    }
    double sum = ratings.reduce((a, b) => a + b);
    return sum / ratings.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Shops'),
      ),
      body: ListView.builder(
        itemCount: nearbyShops.length,
        itemBuilder: (context, index) {
          final shop = nearbyShops[index];
          List<Product> topProducts = nearbyShops[index].products.take(2).toList();
          final averageRating = calculateAverageRating(shop.ratings);

          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ShopDetailScreen(shop: nearbyShops[index]),
                  ),
                );
              },
              child: Column(
                children: <Widget>[
                  // Circular avatar for shop image
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(nearbyShops[index].image),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          nearbyShops[index].name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Location: ${nearbyShops[index].location}',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Estimated Waiting Time: ${nearbyShops[index].estimatedWaitingTime}',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              '${averageRating.toStringAsFixed(1)}',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Top Products Available:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                          children: topProducts.map((product) {
                            return ListTile(
                              title: Text(product.name),
                              trailing: Text('\$${product.price.toStringAsFixed(2)}'),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      )

    );
  }
}

class Shop {
  final String name;
  final String location;
  final List<double> ratings; // List of ratings for each comment
  final List<String> comments;
  final String image;
  final List<Product> products;
  final String estimatedWaitingTime;

  Shop({
    required this.name,
    required this.location,
    required this.ratings, // Initialize this field
    required this.comments,
    required this.image,
    required this.products,
    required this.estimatedWaitingTime,
  });
}



class ShopDetailScreen extends StatefulWidget {
  final Shop shop;

  ShopDetailScreen({required this.shop});

  @override
  _ShopDetailScreenState createState() => _ShopDetailScreenState();
}

class _ShopDetailScreenState extends State<ShopDetailScreen> {
  List<int> productQuantities = [];

  @override
  void initState() {
    super.initState();
    // Initialize product quantities to 0 for each product
    productQuantities = List<int>.filled(widget.shop.products.length, 0);
  }

  double calculateTotalCost() {
    double totalCost = 0.0;
    for (int i = 0; i < widget.shop.products.length; i++) {
      totalCost += productQuantities[i] * widget.shop.products[i].price;
    }
    return totalCost;
  }

  double calculateAverageRating(List<double> ratings) {
    if (ratings.isEmpty) {
      return 0.0;
    }
    double sum = ratings.reduce((a, b) => a + b);
    return sum / ratings.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.shop.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Display the cafe image at the top
            Container(
              width: double.infinity,
              height: 250, // Adjust the desired height for the cafe image
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.shop.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.green),
                      SizedBox(width: 4),
                      Text(
                        widget.shop.location,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text(
                        ' ${calculateAverageRating(widget.shop.ratings).toStringAsFixed(1)}',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Estimated Waiting Time: ${widget.shop.estimatedWaitingTime}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Products Available:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            // Display a list of products available in the shop
            // You can use ListView.builder for this
            SizedBox(
              height: 200, // Adjust the desired height for the products list
              child: ListView.builder(
                itemCount: widget.shop.products.length,
                itemBuilder: (context, index) {
                  final product = widget.shop.products[index];
                  final quantity = productQuantities[index];

                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      title: Text(product.name),
                      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                      // Display product images on the right side of the product list
                      // Use the image URL from the selected product
                      leading: SizedBox(
                        width: 60, // Adjust the desired width for the product image
                        height: 60, // Adjust the desired height for the product image
                        child: Image.asset(
                          product.pimage, // Use the image URL from the selected product
                          fit: BoxFit.cover,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              if (quantity > 0) {
                                setState(() {
                                  productQuantities[index]--;
                                });
                              }
                            },
                          ),
                          Text(quantity.toString()),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                productQuantities[index]++;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Comments:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            // Display shop comments here using a ListView.builder
            SizedBox(
              height: 150, // Adjust the desired height for the comments list
              child: ListView.builder(
                itemCount: widget.shop.comments.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(widget.shop.comments[index]),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              ' ${widget.shop.ratings[index]}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Images:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            // Display additional images related to the shop or products
            // You can use a GridView.builder for this
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Cost: \$${calculateTotalCost().toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement your order placement logic here
                // You can use the productQuantities and calculateTotalCost() to process the order
                // Show a confirmation dialog or navigate to the order confirmation screen
              },
              child: Text(
                'Place Order',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}