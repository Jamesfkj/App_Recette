import 'package:flutter/material.dart';
import 'package:the_cooking_pot/main.dart';


class RecipeCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String thumbnailUrl;
  RecipeCard({
    required this.title,
    required this.cookTime,
    required this.rating,
    required this.thumbnailUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
     
      height: 650,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 111, 108, 108),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 255, 249, 249).withOpacity(0.20),
            offset: const Offset(
              0.0,
              10.0,
            ),
           
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Color.fromARGB(255, 0, 0, 0).withOpacity(0.75),
            BlendMode.multiply,
          ),
          image: NetworkImage(thumbnailUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
             child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Liste()));
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                
                child: Text(title,
                  
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      const SizedBox(width: 7),
                      Text(rating),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [ 
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class Page2 extends StatelessWidget {
  const Page2({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collection de Recettes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final List<Map<String, String>> categories = [
    {'title': 'Koliko', 'image': 'assets/Koliko.jpg'},
    {'title': 'Riz Jollof', 'image': 'assets/Jollof.jpg'},
    {'title': 'Fufu', 'image': 'assets/Fufu.jpg'},
    {'title': 'Ayimolou', 'image': 'assets/Ayimolou.jpg'},
    {'title': 'Pate et sauce adémè', 'image': 'assets/Ademè.jpg'},
    {'title': 'Galidossi', 'image': 'assets/Galidossi.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste de plats africains'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Nombre de colonnes
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.9, // Ratio d'aspect des enfants (largeur/hauteur)
        ),
        itemBuilder: (context, index) {
          return Card( 
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      categories[index]['image']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        categories[index]['title']!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {
                          // Logique pour afficher la recette
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Voir la recette de ${categories[index]['title']}')),
                          );
                        },
                        child: Text(
                          'Voir la recette',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

