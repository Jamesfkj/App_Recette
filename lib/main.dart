// ignore_for_file: unnecessary_null_comparison, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_cooking_pot/dataBase.dart';
import 'recipe_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF490F0F),
          title: const Text("The cooking-pot",
              style: TextStyle(
                  color: Color(0xFFF0E6E6),
                  fontFamily: 'Monospace',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
        backgroundColor: Color(0xFFF0E6E6),
        body: Padding(
          padding: EdgeInsets.all(7),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Le plein d'idée",
                  style: TextStyle(
                      color: Color.fromRGBO(235, 103, 103, 1),
                      fontFamily: 'Monospace',
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Nous serons heureux de vous aider à trouver vos recettes. Naviguez parmis nos nombreux plats selon vos preférences géographiques.",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Monospace",
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/photo1.jpg"),
                          width: 180,
                          height: 180,
                        ),
                        SizedBox(width: 20),
                        Image(
                          image: AssetImage("assets/photo2.jpg"),
                          width: 180,
                          height: 180,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Se connecter",
                        style: TextStyle(
                            fontFamily: "Monospace",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFFF0E6E6)),
                      ),
                      style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(Size(320, 50)),
                        backgroundColor:
                            WidgetStateProperty.all(Color(0xFF490F0F)),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Center(
                    child: Text(
                      "Vous n'avez pas de compte?",
                      style: TextStyle(
                          fontFamily: "Monospace",
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Inscription()),
                        );
                      },
                      child: Text(
                        "S'inscrire",
                        style: TextStyle(
                            fontFamily: "Monospace",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFFF0E6E6)),
                      ),
                      style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(Size(320, 50)),
                        backgroundColor: WidgetStateProperty.all(
                            Color.fromRGBO(235, 103, 103, 1)),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF490F0F),
          title: Text("The cooking-pot",
              style: TextStyle(
                  color: Color(0xFFF0E6E6),
                  fontFamily: 'Monospace',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
        backgroundColor: Color(0xFFF0E6E6),
        body: Padding(
          padding: EdgeInsets.all(7),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Connectez-vous!",
                    style: TextStyle(
                      fontFamily: "Monospace",
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(235, 103, 103, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Saissez vos identifiants pour vous connecter à votre compte!",
                    style: TextStyle(
                      fontFamily: "Monospace",
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color(
                            0xFF490F0F,
                          ),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(235, 103, 103, 1),
                        ),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontFamily: "Monospace",
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(235, 103, 103, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color(
                            0xFF490F0F,
                          ),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(235, 103, 103, 1)),
                      ),
                      labelText: "Mot de passe",
                      labelStyle: TextStyle(
                        fontFamily: "Monospace",
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(235, 103, 103, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Builder(builder: (BuildContext context) {
                    return ElevatedButton(
                        onPressed: () {
                          if ((emailController.text.isEmpty) ||
                              (passwordController.text.isEmpty)) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text("Veuillez remplir tous les champs!")));
                          }
                          if (emailController.text.isNotEmpty &&
                              emailController.text.isNotEmpty) {
                            DatabaseHelper.instance
                                .verifyUserLogin(
                              emailController.text,
                              passwordController.text,
                            )
                                .then((isLoggedIn) {
                              if (isLoggedIn) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Categorie()));
                                // Naviguez vers la page d'accueil ou une autre page appropriée.
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        "Le username ou le mot de passe est incorrect!")));
                                // Affichez un message d'erreur ou une alerte à l'utilisateur.
                              }
                            });
                          }
                        },
                        child: Text(
                          "Se connecter",
                          style: TextStyle(
                            fontFamily: "Monospace",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFFF0E6E6),
                          ),
                        ),
                        style: ButtonStyle(
                            minimumSize: WidgetStateProperty.all(Size(320, 50)),
                            backgroundColor: WidgetStateProperty.all(Color(
                              0xFF490F0F,
                            ))));
                  }),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Vous n'avez pas de compte?",
                    style: TextStyle(
                      fontFamily: "Monospace",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Builder(builder: (BuildContext context) {
                    return TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Inscription()));
                      },
                      child: Text(
                        "Créez votre compte!",
                        style: TextStyle(
                          fontFamily: "Monospace",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromRGBO(235, 103, 103, 1),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Inscription extends StatelessWidget {
  Inscription({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confPsswdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF490F0F),
          title: Text("The cooking-pot",
              style: TextStyle(
                  color: Color(0xFFF0E6E6),
                  fontFamily: 'Monospace',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
        backgroundColor: Color(0xFFF0E6E6),
        body: Padding(
          padding: EdgeInsets.all(3),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Inscrivez-vous!",
                    style: TextStyle(
                      fontFamily: "Monospace",
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(235, 103, 103, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Saissez vos identifiants pour vous créer votre compte!",
                    style: TextStyle(
                      fontFamily: "Monospace",
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color(
                            0xFF490F0F,
                          ),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(235, 103, 103, 1),
                        ),
                      ),
                      labelText: "Username",
                      labelStyle: TextStyle(
                        fontFamily: "Monospace",
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(235, 103, 103, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color(
                            0xFF490F0F,
                          ),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(235, 103, 103, 1),
                        ),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontFamily: "Monospace",
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(235, 103, 103, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color(
                            0xFF490F0F,
                          ),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(235, 103, 103, 1)),
                      ),
                      labelText: "Mot de passe",
                      labelStyle: TextStyle(
                        fontFamily: "Monospace",
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(235, 103, 103, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: confPsswdController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color(
                            0xFF490F0F,
                          ),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(235, 103, 103, 1)),
                      ),
                      labelText: "Confirmez votre mot de passe",
                      labelStyle: TextStyle(
                        fontFamily: "Monospace",
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(235, 103, 103, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Builder(builder: (BuildContext context) {
                    return ElevatedButton(
                        onPressed: () {
                          if (userNameController.text.isEmpty ||
                              emailController.text.isEmpty ||
                              passwordController.text.isEmpty ||
                              confPsswdController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text("Veuillez remplir tous les champs!")));
                          }
                          if (passwordController.text !=
                              confPsswdController.text) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    "Les mots de passe ne correspondent pas!")));
                          }
                          if (passwordController.text.length < 4) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    "Votre mot de passe doit contenir au moins 4 caractères!")));
                          }
                          // ignore: unnecessary_null_comparison
                          if (userNameController != null &&
                              emailController != null &&
                              passwordController != null &&
                              confPsswdController != null &&
                              passwordController.text.length > 4 &&
                              passwordController.text ==
                                  confPsswdController.text) {
                            DatabaseHelper.instance
                                .verifyUserExist(
                              userNameController.text,
                              emailController.text,
                            )
                                .then((isExixt) {
                              if (isExixt) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            "Cet utilisateur existe déjà!")));
                              } else {
                                DatabaseHelper.instance
                                    .insertData(
                                  userNameController.text,
                                  emailController.text,
                                  passwordController.text,
                                )
                                    .then((result) {
                                  if (result > -1) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Votre compte a bien été créé!")));
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Une erreur est survenue lors de l'enregistrement!")));
                                  }
                                });
                              }
                            });
                          }
                        },
                        child: Text(
                          "S'inscrire",
                          style: TextStyle(
                            fontFamily: "Monospace",
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFFF0E6E6),
                          ),
                        ),
                        style: ButtonStyle(
                            minimumSize: WidgetStateProperty.all(Size(320, 50)),
                            backgroundColor: WidgetStateProperty.all(Color(
                              0xFF490F0F,
                            ))));
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class Categorie extends StatelessWidget {
  const Categorie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'categorie de plat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage2(title: 'categorie de plat'),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text("NOS RECETTES "),
          ],
        ),
      ),
      body:  Padding(
          padding: EdgeInsets.all(3),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
        children: [
          RecipeCard(
              title: "Trouvez vos differentes recettes par categorie ici",
              cookTime: "",
              rating: "4.5",
              thumbnailUrl:
                  'https://th.bing.com/th/id/OIP.WMrYOvAxBnV99b-FIni0twHaF7?w=186&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
        ],
      ),
    ),),),);
  }
}

class Liste extends StatelessWidget {
  const Liste({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  RecipePage({super.key});

  final Map<String, List<Map<String, String>>> dishes = {
    'Plats Africains': [
      {
        'title': 'Koliko',
        'image': 'assets/Koliko.jpg',
        'description':
            'Le Koliko est un plat traditionnel à base d’igname frit, populaire en Afrique de l’Ouest.',
        'ingredients':
            '1. Ignames\n2. Huile de friture\n3. Sel\n4. Poivre\n5. Oignon\n6. Tomates\n7. Persil\n8. Piment',
        'instructions':
            '1. Pelez et coupez les ignames en bâtonnets.\n2. Faites chauffer l\'huile dans une grande poêle.\n3. Faites frire les ignames jusqu\'à ce qu\'elles soient dorées et croustillantes.\n4. Égouttez sur du papier absorbant et assaisonnez avec du sel et du poivre.\n5. Servez chaud avec une sauce à base d\'oignons, de tomates, de persil et de piment.',
      },
      {
        'title': 'Attieke',
        'image': 'assets/attieke.jpg',
        'description':
            'L’Attieke est un plat ivoirien fait de semoule de manioc fermentée, souvent servi avec du poisson et des légumes.',
        'ingredients':
            '1. Attieke (semoule de manioc)\n2. Poisson\n3. Oignon\n4. Tomate\n5. Piment\n6. Citron\n7. Huile\n8. Sel\n9. Poivre',
        'instructions':
            '1. Faites cuire l\'attieke à la vapeur jusqu\'à ce qu\'il soit bien chaud.\n2. Faites frire le poisson dans l\'huile jusqu\'à ce qu\'il soit croustillant.\n3. Préparez une sauce avec l\'oignon, la tomate, le piment, le citron, le sel et le poivre.\n4. Servez l\'attieke avec le poisson frit et la sauce.',
      },
      {
        'title': 'Alloco Oeuf',
        'image': 'assets/allocoeuf.jpg',
        'description':
            'L’Alloco Oeuf est un plat ivoirien de bananes plantains frites servies avec des œufs durs.',
        'ingredients':
            '1. Bananes plantains\n2. Huile de friture\n3. Œufs\n4. Sel\n5. Poivre\n6. Piment',
        'instructions':
            '1. Faites chauffer l\'huile dans une grande poêle.\n2. Coupez les bananes plantains en rondelles et faites-les frire jusqu\'à ce qu\'elles soient dorées et croustillantes.\n3. Faites cuire les œufs durs et coupez-les en tranches.\n4. Assaisonnez les bananes plantains et les œufs avec du sel, du poivre et du piment.\n5. Servez chaud.',
      },
      {
        'title': 'Ayimolou',
        'image': 'assets/ayimolou.jpg',
        'description':
            'L’Ayimolou est un ragoût togolais à base de maïs, de manioc et de viande, souvent servi lors de cérémonies traditionnelles.',
        'ingredients':
            '1. Maïs\n2. Manioc\n3. Viande (bœuf, poulet, chèvre)\n4. Tomates\n5. Oignon\n6. Poivron\n7. Piment\n8. Huile\n9. Sel\n10. Poivre',
        'instructions':
            '1. Faites cuire le maïs et le manioc jusqu\'à ce qu\'ils soient tendres.\n2. Faites revenir la viande avec l\'oignon, le poivron et le piment jusqu\'à ce qu\'elle soit dorée.\n3. Ajoutez les tomates hachées et laissez mijoter jusqu\'à ce qu\'elles soient cuites.\n4. Ajoutez le maïs, le manioc et assez d\'eau pour couvrir.\n5. Laissez mijoter jusqu\'à ce que la sauce soit réduite et les légumes cuits.\n6. Assaisonnez avec du sel et du poivre selon votre goût.',
      },
      {
        'title': 'Galidossi',
        'image': 'assets/Galidossi.jpg',
        'description':
            'Le Galidossi est un plat sénégalais de riz pilaf cuit avec des légumes et de la viande.',
        'ingredients':
            '1. Riz\n2. Viande (poulet, bœuf, agneau)\n3. Carottes\n4. Pois verts\n5. Oignon\n6. Tomates\n7. Piment\n8. Huile\n9. Sel\n10. Poivre\n11. Épices',
        'instructions':
            '1. Faites chauffer l\'huile dans une casserole.\n2. Faites revenir l\'oignon, les tomates et le piment jusqu\'à ce qu\'ils soient tendres.\n3. Ajoutez la viande coupée en morceaux et faites-la revenir jusqu\'à ce qu\'elle soit dorée.\n4. Ajoutez les carottes et les pois verts et faites revenir quelques minutes.\n5. Ajoutez le riz cru et mélangez bien pour enrober de sauce.\n6. Ajoutez de l\'eau, couvrez et laissez cuire jusqu\'à ce que le riz soit tendre et les légumes cuits.\n7. Assaisonnez avec du sel, du poivre et des épices selon votre goût.',
      },
      {
        'title': 'Fufu',
        'image': 'assets/fufu.jpg',
        'description':
            'Le Fufu est une boule de farine de manioc ou de plantain servie avec diverses sauces en Afrique de l’Ouest.',
        'ingredients': '1. Farine de manioc ou de plantain\n2. Eau\n3. Sel',
        'instructions':
            '1. Faites bouillir de l\'eau dans une casserole.\n2. Ajoutez la farine en pluie tout en remuant vigoureusement pour éviter les grumeaux.\n3. Continuez à remuer jusqu\'à ce que la pâte épaississe et commence à se détacher des parois de la casserole.\n4. Retirez du feu et laissez refroidir légèrement.\n5. Formez des boules avec la pâte et servez chaud avec la sauce de votre choix.',
      },

      // Ajoutez plus de plats ici
    ],
    'Plats Européens': [
      {
        'title': 'Quiche Lorraine',
        'image': 'assets/quichelorraine.jpg',
        'description':
            'La Quiche Lorraine est une tarte salée française à base de crème, d\'œufs et de lardons.',
        'ingredients':
            '1. Pâte brisée\n2. Lardons\n3. Crème fraîche\n4. Œufs\n5. Fromage râpé\n6. Sel\n7. Poivre\n8. Muscade',
        'instructions':
            '1. Préchauffez le four à 180°C (350°F).\n2. Étalez la pâte brisée dans un moule à tarte et piquez le fond avec une fourchette.\n3. Faites revenir les lardons à la poêle jusqu\'à ce qu\'ils soient dorés.\n4. Dans un bol, mélangez la crème fraîche, les œufs, le fromage râpé, le sel, le poivre et une pincée de muscade.\n5. Répartissez les lardons sur le fond de tarte.\n6. Versez le mélange de crème et d’œufs par-dessus.\n7. Enfournez pendant 30-35 minutes ou jusqu’à ce que la quiche soit dorée.\n8. Laissez refroidir légèrement avant de servir.',
      },
      {
        'title': 'Crêpes',
        'image': 'assets/crepes.jpg',
        'description':
            'Les crêpes sont de fines galettes françaises servies avec divers garnitures, sucrées ou salées.',
        'ingredients':
            '1. Farine\n2. Lait\n3. Œufs\n4. Beurre\n5. Sucre\n6. Sel\n7. Vanille (optionnel)',
        'instructions':
            '1. Dans un bol, mélangez la farine, le sucre et une pincée de sel.\n2. Ajoutez les œufs et fouettez.\n3. Incorporez le lait petit à petit en mélangeant bien pour éviter les grumeaux.\n4. Ajoutez le beurre fondu et la vanille si désiré.\n5. Faites chauffer une poêle antiadhésive et versez une louche de pâte.\n6. Faites cuire chaque côté jusqu’à ce qu’il soit doré.\n7. Servez avec des garnitures au choix.',
      },
      {
        'title': 'Lasagne',
        'image': 'assets/lasagne.jpg',
        'description':
            'Les Lasagnes sont un plat italien à base de pâtes superposées avec de la sauce tomate, de la viande hachée, du fromage et de la béchamel.',
        'ingredients':
            '1. Feuilles de lasagnes\n2. Viande hachée (bœuf)\n3. Sauce tomate\n4. Oignon\n5. Ail\n6. Fromage râpé (parmesan, mozzarella)\n7. Béchamel\n8. Épinards (optionnel)\n9. Champignons (optionnel)\n10. Basilic frais\n11. Sel\n12. Poivre\n13. Huile d\'olive',
        'instructions':
            '1. Faites cuire les feuilles de lasagnes dans de l\'eau bouillante jusqu\'à ce qu\'elles soient al dente.\n2. Faites revenir l\'oignon et l\'ail dans l\'huile d\'olive.\n3. Ajoutez la viande hachée et faites-la cuire jusqu\'à ce qu\'elle soit dorée.\n4. Ajoutez la sauce tomate et laissez mijoter.\n5. Préparez la béchamel.\n6. Dans un plat à gratin, alternez les couches de feuilles de lasagnes, de sauce tomate avec viande, de béchamel, d\'épinards et de champignons (si utilisés), et de fromage râpé.\n7. Répétez jusqu\'à épuisement des ingrédients.\n8. Terminez par une couche de béchamel et de fromage râpé.\n9. Cuire au four jusqu\'à ce que le dessus soit doré et croustillant.\n10. Laissez reposer quelques minutes avant de servir.',
      },
      {
        'title': 'Pain Perdu',
        'image': 'assets/painperdu.jpg',
        'description':
            'Le Pain Perdu est une tranche de pain trempée dans un mélange d\'œufs battus et de lait, puis dorée à la poêle et servie avec du sirop, de la confiture ou du sucre.',
        'ingredients':
            '1. Tranches de pain (baguette, pain de campagne)\n2. Œufs\n3. Lait\n4. Sucre\n5. Cannelle\n6. Beurre\n7. Sirop d\'érable (optionnel)\n8. Confiture (optionnel)\n9. Fruits frais (optionnel)\n10. Sucre glace (optionnel)',
        'instructions':
            '1. Battez les œufs avec le lait, le sucre et la cannelle dans un bol.\n2. Trempez rapidement chaque tranche de pain dans le mélange d\'œufs battus jusqu\'à ce qu\'elle soit bien imbibée.\n3. Faites fondre du beurre dans une poêle à feu moyen.\n4. Faites cuire chaque tranche de pain trempée jusqu\'à ce qu\'elle soit dorée des deux côtés.\n5. Servez chaud, garni de sirop d\'érable, de confiture, de fruits frais ou saupoudré de sucre glace selon votre goût.',
      },
      {
        'title': 'Pizza',
        'image': 'assets/pizza.jpg',
        'description':
            'La Pizza est un plat italien composé d\'une pâte garnie de sauce tomate, de fromage et d\'autres ingrédients tels que les champignons, les olives, le pepperoni, etc.',
        'ingredients':
            '1. Pâte à pizza (faite maison ou achetée)\n2. Sauce tomate\n3. Mozzarella (ou autre fromage à pizza)\n4. Champignons\n5. Olives\n6. Basilic frais\n7. Huile d\'olive\n8. Sel\n9. Poivre\n10. Garnitures supplémentaires (pepperoni, jambon, légumes, etc.)',
        'instructions':
            '1. Préchauffez votre four à la température recommandée pour la pâte à pizza.\n2. Étalez la pâte sur une plaque à pizza légèrement huilée.\n3. Étalez la sauce tomate uniformément sur la pâte.\n4. Ajoutez une couche de mozzarella râpée sur la sauce tomate.\n5. Disposez les champignons, les olives et autres garnitures choisies sur le fromage.\n6. Assaisonnez avec du sel, du poivre et un filet d\'huile d\'olive.\n7. Cuire au four jusqu\'à ce que la croûte soit dorée et croustillante, et que le fromage soit fondu et légèrement doré.\n8. Garnissez de basilic frais avant de servir.',
      },
      {
        'title': 'Entrecôte de Veau',
        'image': 'assets/entrecotedeveau.jpg',
        'description':
            'L\'Entrecôte de Veau est un plat européen de viande de veau grillée ou poêlée, souvent accompagnée de légumes et de sauce.',
        'ingredients':
            '1. Entrecôtes de veau\n2. Beurre\n3. Ail\n4. Thym\n5. Sel\n6. Poivre\n7. Légumes au choix (pommes de terre, haricots verts, carottes, etc.)\n8. Sauce au choix (sauce au poivre, sauce aux champignons, sauce béarnaise, etc.)',
        'instructions':
            '1. Assaisonnez les entrecôtes de veau avec du sel et du poivre des deux côtés.\n2. Faites chauffer une poêle avec du beurre.\n3. Ajoutez l\'ail émincé et le thym dans la poêle.\n4. Faites cuire les entrecôtes de veau dans la poêle chaude jusqu\'à la cuisson désirée (saignant, à point, bien cuit).\n5. Pendant la cuisson de la viande, faites cuire les légumes de votre choix à la vapeur, à la poêle ou au four.\n6. Servez les entrecôtes de veau chaudes avec les légumes et la sauce choisie.',
      },
      {
        'title': 'Boeuf Bourguignon',
        'image': 'assets/boeufbourguignon.jpg',
        'description':
            'Le Boeuf Bourguignon est un plat français de viande de bœuf mijotée longuement dans du vin rouge avec des légumes et des herbes, souvent servi avec des pommes de terre ou des pâtes.',
        'ingredients':
            '1. Viande de bœuf (gîte, paleron)\n2. Vin rouge\n3. Carottes\n4. Oignons\n5. Champignons de Paris\n6. Bouquet garni (thym, laurier, persil)\n7. Farine\n8. Beurre\n9. Huile\n10. Sel\n11. Poivre',
        'instructions':
            '1. Coupez la viande de bœuf en cubes et faites-la revenir dans une cocotte avec du beurre et de l\'huile.\n2. Ajoutez les oignons et les carottes émincés, puis saupoudrez de farine et mélangez bien.\n3. Versez le vin rouge jusqu\'à couvrir la viande.\n4. Ajoutez le bouquet garni et laissez mijoter à feu doux pendant plusieurs heures jusqu\'à ce que la viande soit tendre.\n5. Faites revenir les champignons de Paris dans une poêle avec du beurre et ajoutez-les au plat en fin de cuisson.\n6. Servez chaud avec des pommes de terre ou des pâtes.',
      },
      {
        'title': 'Croissant',
        'image': 'assets/croissant.jpg',
        'description':
            'Le Croissant est une viennoiserie d\'origine autrichienne, très populaire en France, faite de pâte feuilletée et souvent consommée au petit-déjeuner ou au goûter.',
        'ingredients':
            '1. Farine\n2. Beurre\n3. Levure\n4. Sucre\n5. Sel\n6. Lait\n7. Œufs\n8. Eau\n9. Chocolat ou confiture (facultatif pour le garnissage)',
        'instructions':
            '1. Préparez la pâte en mélangeant la farine, le sucre, le sel, la levure, le lait, les œufs et l\'eau.\n2. Pétrissez jusqu\'à obtenir une pâte lisse, puis étalez-la en un rectangle.\n3. Placez du beurre au centre du rectangle et repliez la pâte en trois pour former un portefeuille.\n4. Répétez plusieurs fois l\'étape précédente pour créer des couches feuilletées.\n5. Découpez la pâte en triangles, roulez-les pour former des croissants, puis laissez-les reposer et gonfler.\n6. Préchauffez le four et faites cuire les croissants jusqu\'à ce qu\'ils soient dorés et croustillants.\n7. Laissez refroidir sur une grille avant de servir.',
      },

      // Ajoutez plus de plats ici
    ],
    'Plats Americains': [
      {
        'title': 'Hamburger',
        'image': 'assets/hamburger.jpg',
        'description':
            'Le Hamburger est un sandwich composé de viande hachée grillée, généralement du bœuf, servi dans un pain rond avec divers ingrédients comme la laitue, les tomates, les oignons et le fromage.',
        'ingredients':
            '1. Pain à hamburger\n2. Viande hachée\n3. Fromage\n4. Laitue\n5. Tomate\n6. Oignon\n7. Cornichons\n8. Ketchup\n9. Moutarde\n10. Sel\n11. Poivre',
        'instructions':
            '1. Faites cuire la viande hachée dans une poêle jusqu\'à ce qu\'elle soit bien cuite.\n2. Assaisonnez avec du sel et du poivre selon votre goût.\n3. Faites griller les pains à hamburger jusqu\'à ce qu\'ils soient légèrement dorés.\n4. Assemblez le hamburger en plaçant la viande, le fromage, la laitue, les tomates, les oignons et les cornichons sur le pain.\n5. Ajoutez du ketchup et de la moutarde selon votre préférence.\n6. Servez chaud.',
      },
      {
        'title': 'Crispy Fried Chicken',
        'image': 'assets/friedchicken.jpg',
        'description':
            'Le Crispy Fried Chicken est du poulet frit croustillant, préparé en trempant le poulet dans une pâte à base de farine et d’épices avant de le frire à la perfection.',
        'ingredients':
            '1. Poulet (cuisse, pilon, aile)\n2. Farine\n3. Œufs\n4. Lait\n5. Chapelure\n6. Sel\n7. Poivre\n8. Paprika\n9. Huile de friture',
        'instructions':
            '1. Préparez une marinade en mélangeant du lait, des œufs, du sel, du poivre et du paprika.\n2. Faites mariner le poulet dans ce mélange pendant au moins une heure.\n3. Dans un bol séparé, mélangez de la farine, du sel, du poivre et du paprika.\n4. Retirez le poulet mariné de la marinade et enrobez-le de la farine assaisonnée.\n5. Faites chauffer l\'huile de friture dans une grande poêle ou une friteuse.\n6. Faites frire le poulet jusqu\'à ce qu\'il soit doré et croustillant, en retournant une fois.\n7. Égouttez le poulet frit sur du papier absorbant pour éliminer l\'excès d\'huile.\n8. Servez chaud.',
      },
      {
        'title': 'Guacamole',
        'image': 'assets/guacamole.jpg',
        'description':
            'Le Guacamole est une sauce mexicaine à base d’avocat, de tomate, d’oignon, de coriandre et de jus de citron vert, souvent servie avec des chips de maïs ou comme accompagnement pour les plats mexicains.',
        'ingredients':
            '1. Avocats mûrs\n2. Tomates\n3. Oignon\n4. Coriandre\n5. Jus de citron vert\n6. Piment jalapeño (facultatif)\n7. Sel\n8. Poivre',
        'instructions':
            '1. Coupez les avocats en deux, retirez le noyau et prélevez la chair à l’aide d’une cuillère.\n2. Écrasez les avocats dans un bol à l’aide d’une fourchette jusqu\'à consistance désirée.\n3. Ajoutez les tomates coupées en dés, l’oignon finement haché, la coriandre fraîche ciselée et le piment jalapeño (si désiré).\n4. Pressez le jus de citron vert et ajoutez-le au mélange.\n5. Assaisonnez avec du sel et du poivre selon votre goût.\n6. Mélangez bien tous les ingrédients.\n7. Servez frais avec des chips de maïs ou en accompagnement.',
      },
      {
        'title': 'Poutine',
        'image': 'assets/poutine.jpg',
        'description':
            'La Poutine est un plat canadien composé de frites croustillantes garnies de fromage en grains frais et arrosées de sauce brune chaude.',
        'ingredients':
            '1. Pommes de terre (pour les frites)\n2. Fromage en grains frais (cheddar ou autre)\n3. Sauce brune (ou sauce demi-glace)',
        'instructions':
            '1. Préparez les frites en coupant les pommes de terre en bâtonnets et en les faisant frire jusqu’à ce qu’elles soient dorées et croustillantes.\n2. Égouttez les frites sur du papier absorbant pour éliminer l’excès d’huile.\n3. Disposez les frites dans un plat de service.\n4. Parsemez généreusement de fromage en grains frais sur les frites chaudes.\n5. Versez la sauce brune chaude sur le fromage et les frites.\n6. Servez immédiatement pour que le fromage fond et enrobe les frites.',
      },
      {
        'title': 'Cheesesteak',
        'image': 'assets/cheesesteak.jpg',
        'description':
            'Le Cheesesteak est un sandwich emblématique de Philadelphie, garni de fines tranches de bœuf, souvent du steak, et de fromage fondu, servi dans un pain à sous-marin.',
        'ingredients':
            '1. Steak (bœuf, préférentiellement de l’épaule)\n2. Pain à sous-marin (hoagie)\n3. Fromage (Provolone, Cheez Whiz ou autre fromage fondu)\n4. Oignon\n5. Poivron (facultatif)\n6. Sel\n7. Poivre',
        'instructions':
            '1. Faites chauffer une poêle et faites-y cuire le steak jusqu’à ce qu’il soit cuit selon votre préférence (saignant à bien cuit).\n2. Tranchez finement le steak cuit en lamelles.\n3. Ajoutez les oignons (et les poivrons si vous les utilisez) dans la poêle et faites-les revenir jusqu’à ce qu’ils soient tendres.\n4. Ajoutez les lamelles de steak dans la poêle avec les oignons et mélangez bien.\n5. Coupez le pain à sous-marin en deux sur la longueur sans le diviser complètement.\n6. Déposez les lamelles de steak et les oignons grillés sur le pain.\n7. Couvrez généreusement de fromage fondu.\n8. Placez le sandwich sous le gril du four ou dans une presse à panini jusqu’à ce que le fromage soit fondu et le pain légèrement grillé.\n9. Servez chaud.',
      },
      {
        'title': 'Burrito',
        'image': 'assets/burrito.jpg',
        'description':
            'Le Burrito est un plat mexicain composé de tortilla de blé garnie de viande, haricots, riz et autres ingrédients.',
        'ingredients':
            '1. Tortillas de blé\n2. Viande hachée (bœuf, poulet, porc)\n3. Haricots noirs\n4. Riz cuit\n5. Oignon\n6. Poivron\n7. Tomates\n8. Laitue\n9. Fromage râpé\n10. Sauce salsa\n11. Guacamole\n12. Crème sure\n13. Sel\n14. Poivre\n15. Épices mexicaines (cumin, chili en poudre, paprika)',
        'instructions':
            '1. Faites cuire la viande hachée avec l\'oignon, le poivron et les épices mexicaines jusqu\'à ce qu\'elle soit dorée.\n2. Chauffez les tortillas de blé légèrement.\n3. Disposez les haricots noirs, le riz cuit, la viande cuite, les tomates, la laitue, le fromage râpé, le guacamole et la crème sure sur chaque tortilla.\n4. Roulez les tortillas en forme de burritos.\n5. Servez chaud avec de la sauce salsa.',
      },
      {
        'title': 'Hotdog',
        'image': 'assets/hotdog.jpg',
        'description':
            'Le Hotdog est un sandwich américain composé d\'un pain allongé garni d\'une saucisse cuite, de moutarde, de ketchup, d\'oignons, de cornichons et d\'autres condiments.',
        'ingredients':
            '1. Saucisses à hot-dog\n2. Pains à hot-dog\n3. Moutarde\n4. Ketchup\n5. Oignons\n6. Cornichons (pickles)\n7. Relish\n8. Sauce chili (facultatif)\n9. Fromage râpé (facultatif)\n10. Sel\n11. Poivre',
        'instructions':
            '1. Cuire les saucisses à hot-dog dans de l\'eau bouillante ou les griller jusqu\'à ce qu\'elles soient bien cuites.\n2. Faites chauffer les pains à hot-dog.\n3. Placez une saucisse cuite dans chaque pain.\n4. Garnissez de moutarde, ketchup, oignons hachés, cornichons, relish et autres condiments selon votre goût.\n5. Ajoutez éventuellement du fromage râpé et de la sauce chili pour une variante plus épicée.\n6. Servez chaud.',
      },
      {
        'title': 'Tacos',
        'image': 'assets/tacos.jpg',
        'description':
            'Les Tacos sont des tortillas de maïs ou de blé garnies de viande, de légumes, de fromage et de sauces, un plat traditionnel mexicain.',
        'ingredients':
            '1. Tortillas de maïs ou de blé\n2. Viande (bœuf, poulet, porc)\n3. Laitue\n4. Tomates\n5. Oignon\n6. Fromage râpé\n7. Sauce salsa\n8. Guacamole\n9. Crème sure\n10. Piment jalapeño\n11. Épices mexicaines (cumin, chili en poudre, paprika)\n12. Sel\n13. Poivre',
        'instructions':
            '1. Faites cuire la viande avec les épices mexicaines jusqu\'à ce qu\'elle soit dorée et bien cuite.\n2. Chauffez les tortillas de maïs ou de blé légèrement.\n3. Disposez la viande cuite, la laitue, les tomates, l\'oignon, le fromage râpé, la sauce salsa, le guacamole, la crème sure et le piment jalapeño sur chaque tortilla.\n4. Roulez les tortillas en forme de tacos.\n5. Servez chaud avec des quartiers de citron vert et plus de sauce salsa si désiré.',
      },
    ],
    'Plats Coréens': [
      {
        'title': 'Sundubu Jjigae',
        'image': 'assets/sundubujjigae.jpg',
        'description':
            'Le Sundubu Jjigae est un ragoût coréen épicé à base de tofu soyeux (sundubu), de fruits de mer et de légumes.',
        'ingredients':
            '1. Tofu soyeux (sundubu)\n2. Fruits de mer (crevettes, moules)\n3. Champignons\n4. Piments\n5. Pâte de soja (doenjang)\n6. Pâte de piment (gochujang)\n7. Oignon\n8. Ail\n9. Huile de sésame\n10. Bouillon de poisson ou d\'algues\n11. Sel\n12. Poivre\n13. Oeuf (optionnel)\n14. Ciboule (pour garnir)',
        'instructions':
            '1. Faites revenir l\'ail haché et l\'oignon dans de l\'huile de sésame.\n2. Ajoutez les piments, les champignons et les fruits de mer, faites cuire jusqu\'à ce que les fruits de mer soient presque cuits.\n3. Ajoutez la pâte de soja, la pâte de piment et le bouillon, portez à ébullition.\n4. Ajoutez le tofu soyeux (sundubu) et laissez mijoter doucement.\n5. Assaisonnez avec du sel et du poivre selon votre goût.\n6. Garnissez de ciboule et servez chaud, idéalement avec du riz.',
      },
      {
        'title': 'Samgyetang',
        'image': 'assets/samgyetang.jpg',
        'description':
            'Le Samgyetang est une soupe coréenne traditionnelle à base de poulet farci de riz glutineux, de jujubes et d\'ail.',
        'ingredients':
            '1. Poulet entier\n2. Riz glutineux\n3. Ail\n4. Jujubes coréens (daechu)\n5. Gingembre\n6. Oignon vert\n7. Ginkgo (optionnel)\n8. Sauce soja\n9. Sel\n10. Poivre\n11. Huile de sésame',
        'instructions':
            '1. Lavez et remplissez le poulet avec du riz glutineux, de l\'ail, des jujubes, du gingembre et des oignons verts.\n2. Cousez l\'ouverture du poulet pour que le remplissage ne sorte pas.\n3. Placez le poulet farci dans une casserole, ajoutez de l\'eau, de la sauce soja, du sel et du poivre.\n4. Portez à ébullition, puis réduisez le feu et laissez mijoter jusqu\'à ce que le poulet et le riz soient cuits.\n5. Ajoutez éventuellement du ginkgo et de l\'huile de sésame avant de servir chaud.',
      },
      {
        'title': 'Bibimbap',
        'image': 'assets/bibimbap.jpg',
        'description':
            'Le Bibimbap est un plat coréen de riz cuit mélangé à des légumes sautés, de la viande, du jaune d\'œuf cru et de la sauce pimentée.',
        'ingredients':
            '1. Riz cuit\n2. Légumes (épinards, germes de soja, carottes, courgettes, épinards, champignons)\n3. Viande (bœuf, poulet ou porc mariné)\n4. Œufs\n5. Sauce gochujang (sauce pimentée coréenne)\n6. Huile de sésame\n7. Graines de sésame\n8. Sel\n9. Poivre\n10. Sauce soja (pour la marinade de viande)',
        'instructions':
            '1. Faites sauter chaque légume séparément avec de l\'huile de sésame et une pincée de sel jusqu\'à ce qu\'ils soient cuits mais croquants.\n2. Faites sauter la viande marinée dans une poêle jusqu\'à ce qu\'elle soit cuite.\n3. Disposez le riz cuit au fond d\'un bol, disposez les légumes sautés, la viande et un jaune d\'œuf cru au centre.\n4. Ajoutez une cuillère à soupe de sauce gochujang au centre.\n5. Saupoudrez de graines de sésame, arrosez d\'huile de sésame et servez chaud.\n6. Mélangez tous les ingrédients avant de déguster.',
      },
      {
        'title': 'Bulgogi',
        'image': 'assets/bulgogi.jpg',
        'description':
            'Le Bulgogi est un plat coréen de viande de bœuf marinée, grillée et servie avec du riz, des légumes et des accompagnements.',
        'ingredients':
            '1. Viande de bœuf (contre-filet ou faux-filet)\n2. Sauce soja\n3. Sucre\n4. Ail\n5. Poire ou pomme (pour la marinade)\n6. Oignon\n7. Poivre\n8. Graines de sésame\n9. Huile de sésame\n10. Carotte (pour la garniture)\n11. Champignons (optionnel)\n12. Épinards (optionnel)\n13. Riz cuit',
        'instructions':
            '1. Coupez la viande de bœuf en tranches fines.\n2. Mélangez la sauce soja, le sucre, l\'ail émincé, la poire ou la pomme râpée, l\'oignon émincé et le poivre pour faire la marinade.\n3. Faites mariner la viande pendant au moins une heure, idéalement toute une nuit.\n4. Faites griller la viande marinée dans une poêle ou sur un grill jusqu\'à ce qu\'elle soit bien cuite.\n5. Garnissez de carottes sautées, de champignons et d\'épinards.\n6. Saupoudrez de graines de sésame et arrosez d\'huile de sésame.\n7. Servez chaud avec du riz cuit et d\'autres accompagnements coréens.',
      },
      {
        'title': 'Jajangmyeon',
        'image': 'assets/jajangmyeon.jpg',
        'description':
            'Le Jajangmyeon est un plat coréen de nouilles épaisses servies avec une sauce noire à base de pâte de haricots noirs, de viande et de légumes.',
        'ingredients':
            '1. Nouilles épaisses (nouilles de blé)\n2. Pâte de haricots noirs (chunjang)\n3. Viande de porc (hachée ou en petits morceaux)\n4. Oignon\n5. Pommes de terre\n6. Courgettes\n7. Carottes\n8. Concombre (pour la garniture)\n9. Huile de sésame\n10. Sucre\n11. Sel\n12. Poivre',
        'instructions':
            '1. Faites cuire les nouilles épaisses dans de l\'eau bouillante selon les instructions sur l\'emballage.\n2. Faites revenir la viande de porc, l\'oignon et les légumes (pommes de terre, courgettes, carottes) dans de l\'huile de sésame.\n3. Ajoutez la pâte de haricots noirs diluée avec de l\'eau, une pincée de sucre, du sel et du poivre.\n4. Laissez mijoter jusqu\'à ce que la sauce épaississe.\n5. Égouttez les nouilles et versez la sauce Jajang sur les nouilles.\n6. Garnissez de concombre et servez chaud.',
      },
      {
        'title': 'Japchae',
        'image': 'assets/japchae.jpg',
        'description':
            'Le Japchae est un plat coréen composé de nouilles de patate douce sautées avec des légumes, de la viande et des champignons.',
        'ingredients':
            '1. Nouilles de patate douce\n2. Viande (bœuf, poulet, porc)\n3. Épinards\n4. Carottes\n5. Oignon\n6. Champignons shiitake\n7. Poivron rouge\n8. Huile de sésame\n9. Sauce soja\n10. Sucre\n11. Graines de sésame\n12. Sel\n13. Poivre',
        'instructions':
            '1. Faites cuire les nouilles de patate douce selon les instructions sur l\'emballage, puis égouttez-les et rincez-les à l\'eau froide.\n2. Faites sauter la viande avec les légumes (épinards, carottes, oignon, champignons shiitake, poivron rouge) dans de l\'huile de sésame jusqu\'à ce que la viande soit cuite et les légumes tendres.\n3. Ajoutez les nouilles cuites dans la poêle avec les légumes et la viande.\n4. Assaisonnez avec la sauce soja, le sucre, les graines de sésame, le sel et le poivre, en mélangeant bien pour enrober les ingrédients.\n5. Servez chaud ou froid, garni de graines de sésame supplémentaires si désiré.',
      },
      {
        'title': 'Kimchi',
        'image': 'assets/kimchi.jpg',
        'description':
            'Le Kimchi est un plat coréen fermenté à base de chou chinois (ou nappa) assaisonné avec du piment, de l\'ail, du gingembre et d\'autres ingrédients.',
        'ingredients':
            '1. Chou chinois (nappa)\n2. Radis coréen (mu)\n3. Ail\n4. Gingembre\n5. Piment en poudre (gochugaru)\n6. Sauce de poisson (ou sauce soja pour une version végétarienne)\n7. Poireau\n8. Carotte\n9. Sucre\n10. Sel\n11. Eau',
        'instructions':
            '1. Coupez le chou chinois et le radis coréen en morceaux, puis saupoudrez-les de sel et laissez-les reposer pendant quelques heures.\n2. Rincez les légumes salés à l\'eau froide et égouttez-les.\n3. Préparez la pâte de kimchi en mélangeant le piment en poudre (gochugaru), l\'ail émincé, le gingembre râpé, la sauce de poisson (ou sauce soja), le sucre et un peu d\'eau pour former une pâte.\n4. Mélangez les légumes avec la pâte de kimchi jusqu\'à ce qu\'ils soient bien enrobés.\n5. Placez le mélange dans un bocal propre et fermez-le hermétiquement.\n6. Laissez fermenter à température ambiante pendant 1 à 2 jours, puis conservez au réfrigérateur.\n7. Servez le kimchi comme accompagnement ou ingrédient dans d\'autres plats coréens.',
      },
      {
        'title': 'Kimbap',
        'image': 'assets/kimbap.jpg',
        'description':
            'Le Kimbap est un plat coréen composé de riz cuit, d\'algues séchées, de légumes et de viande (facultatif), roulés en rouleaux et tranchés en portions.',
        'ingredients':
            '1. Riz à sushi (ou riz à grain court)\n2. Algues séchées (nori)\n3. Œufs\n4. Carottes\n5. Épinards\n6. Concombre\n7. Viande (facultatif, comme du bœuf bulgogi ou du jambon)\n8. Omelette\n9. Sauce soja\n10. Vinaigre de riz\n11. Sucre\n12. Sel\n13. Graines de sésame',
        'instructions':
            '1. Faites cuire le riz à sushi selon les instructions sur l\'emballage, puis assaisonnez-le avec du vinaigre de riz, du sucre et du sel.\n2. Préparez des omelettes fines, des lamelles de carottes, des épinards blanchis, du concombre et, si désiré, de la viande marinée.\n3. Disposez une feuille d\'algue nori sur une natte de bambou, étalez une fine couche de riz sur l\'algue, en laissant un bord libre.\n4. Ajoutez les ingrédients préparés (omelette, carottes, épinards, concombre et viande) sur le riz.\n5. Roulez délicatement la natte de bambou pour former un rouleau serré.\n6. Coupez le rouleau en portions égales avec un couteau bien aiguisé.\n7. Servez le kimbap avec de la sauce soja pour tremper et des graines de sésame pour garnir.',
      },
    ],
    'Plats Chinois': [
      {
        'title': 'Canard Laqué',
        'image': 'assets/canardlaque.jpg',
        'description':
            'Le Canard Laqué est un plat chinois traditionnel, caractérisé par une peau croustillante et une viande tendre, souvent servi avec des crêpes, des légumes et une sauce hoisin.',
        'ingredients':
            '1. Canard entier\n2. Miel\n3. Sauce soja\n4. Vinaigre de riz\n5. Épices chinoises (anis étoilé, cannelle, clou de girofle)\n6. Oignon vert\n7. Concombre\n8. Sauce hoisin\n9. Crêpes de blé',
        'instructions':
            '1. Nettoyez et séchez le canard.\n2. Préparez et appliquez une marinade avec du miel, de la sauce soja, du vinaigre de riz et les épices chinoises à l\'intérieur et à l\'extérieur du canard.\n3. Laissez mariner le canard pendant quelques heures ou toute une nuit.\n4. Faites rôtir le canard à feu vif dans un four ou un four à bois.\n5. Servez le canard laqué avec des crêpes de blé, de la sauce hoisin, des tranches de concombre et d\'oignon vert.',
      },
      {
        'title': 'Kung Pao',
        'image': 'assets/kungpao.jpg',
        'description':
            'Le Kung Pao est un plat chinois épicé et savoureux composé de morceaux de poulet sautés avec des arachides, des poivrons et des légumes dans une sauce relevée.',
        'ingredients':
            '1. Poulet\n2. Arachides\n3. Poivrons (verts et rouges)\n4. Oignons\n5. Ail\n6. Gingembre\n7. Sauce soja\n8. Vinaigre de riz\n9. Sauce chili\n10. Huile de sésame\n11. Maïzena\n12. Sel\n13. Poivre',
        'instructions':
            '1. Coupez le poulet en morceaux et marinez-le avec de la sauce soja, du vinaigre de riz et de la maïzena.\n2. Faites chauffer de l\'huile dans une poêle et faites sauter l\'ail et le gingembre.\n3. Ajoutez le poulet et faites-le cuire jusqu\'à ce qu\'il soit doré.\n4. Ajoutez les arachides, les poivrons, les oignons et la sauce chili.\n5. Assaisonnez avec du sel, du poivre et de l\'huile de sésame.\n6. Remuez jusqu\'à ce que tous les ingrédients soient bien mélangés et cuits.\n7. Servez chaud avec du riz cuit à la vapeur.',
      },
      {
        'title': 'Dumpling',
        'image': 'assets/dumpling.jpg',
        'description':
            'Les Dumplings sont des petites boulettes de pâte farcies de viande hachée, de légumes ou de fruits de mer, cuites à la vapeur, frites ou bouillies, souvent servies avec une sauce dip.',
        'ingredients':
            'Pour la pâte :\n1. Farine de blé\n2. Eau\n3. Sel\n\nPour la farce :\n1. Viande hachée (porc, bœuf, poulet)\n2. Chou\n3. Oignon\n4. Gingembre\n5. Ail\n6. Champignons noirs\n7. Sauce soja\n8. Huile de sésame\n9. Poivre\n10. Sel',
        'instructions':
            '1. Préparez la pâte en mélangeant la farine avec de l\'eau et du sel, puis laissez reposer.\n2. Préparez la farce en mélangeant la viande hachée avec le chou, l\'oignon, le gingembre, l\'ail, les champignons noirs, la sauce soja, l\'huile de sésame, le poivre et le sel.\n3. Divisez la pâte en petites boules et roulez chaque boule en une fine feuille.\n4. Placez une cuillerée de farce au centre de chaque feuille de pâte et repliez-la en demi-cercle ou en forme de tortellini.\n5. Cuisez les dumplings à la vapeur, à la friture ou dans de l\'eau bouillante jusqu\'à ce qu\'ils soient cuits.\n6. Servez chaud avec une sauce dip à base de sauce soja, de vinaigre de riz et de piment.',
      },
      {
        'title': 'Sichuan Wonton',
        'image': 'assets/sichuanwonton.jpg',
        'description':
            'Les Sichuan Wontons sont des raviolis chinois farcis de viande hachée, généralement servis dans un bouillon épicé garni de ciboule et de coriandre.',
        'ingredients':
            'Pour la pâte :\n1. Farine de blé\n2. Eau\n3. Sel\n\nPour la farce :\n1. Viande hachée (porc, bœuf, poulet)\n2. Gingembre\n3. Ail\n4. Ciboule\n5. Champignons noirs\n6. Sauce soja\n7. Huile de sésame\n8. Poivre\n9. Bouillon de poulet\n10. Sauce chili\n11. Ciboule et coriandre pour garnir',
        'instructions':
            '1. Préparez la pâte en mélangeant la farine avec de l\'eau et du sel, puis laissez reposer.\n2. Préparez la farce en mélangeant la viande hachée avec le gingembre, l\'ail, la ciboule, les champignons noirs, la sauce soja, l\'huile de sésame, le poivre et le sel.\n3. Divisez la pâte en petites boules et roulez chaque boule en une fine feuille.\n4. Placez une cuillerée de farce au centre de chaque feuille de pâte et repliez-la en forme de wonton (triangle ou en forme de tortellini).\n5. Cuisez les wontons dans un bouillon de poulet frémissant jusqu\'à ce qu\'ils flottent à la surface.\n6. Servez chaud dans un bol de bouillon épicé avec de la sauce chili, de la ciboule et de la coriandre pour garnir.',
      },
      {
        'title': 'Mapo Tofu',
        'image': 'assets/mapotofu.jpg',
        'description':
            'Le Mapo Tofu est un plat chinois épicé à base de tofu assaisonné avec de la viande hachée, des piments fermentés, du soja et de l\'ail, souvent servi avec du riz cuit à la vapeur.',
        'ingredients':
            '1. Tofu ferme\n2. Viande hachée (porc ou bœuf)\n3. Pâte de haricots fermentés (doubanjiang)\n4. Ail\n5. Gingembre\n6. Sauce soja\n7. Vin de cuisine chinois (Shaoxing)\n8. Fécule de maïs\n9. Huile de sésame\n10. Poivre de Sichuan\n11. Ciboule',
        'instructions':
            '1. Coupez le tofu en dés et faites-le blanchir dans de l\'eau bouillante salée.\n2. Faites sauter la viande hachée avec l\'ail, le gingembre et le poivre de Sichuan jusqu\'à ce qu\'elle soit dorée.\n3. Ajoutez la pâte de haricots fermentés, la sauce soja, le vin de cuisine chinois et un peu d\'eau.\n4. Ajoutez le tofu blanchi et laissez mijoter jusqu\'à ce que la sauce épaississe.\n5. Assaisonnez avec de la fécule de maïs délayée dans de l\'eau pour lier la sauce.\n6. Servez chaud avec du riz cuit à la vapeur et garni de ciboule.',
      },
      {
        'title': 'Mooncake',
        'image': 'assets/mooncake.jpg',
        'description':
            'Le Mooncake est un gâteau traditionnel chinois consommé principalement lors de la fête de la Lune (Mid-Autumn Festival), farci de pâte de haricots, de jaunes d\'œufs de canard et d\'autres ingrédients.',
        'ingredients':
            '1. Pâte de haricots rouges ou mungo\n2. Jaunes d\'œufs de canard\n3. Sucre\n4. Farine\n5. Beurre de porc ou huile végétale\n6. Eau de rose (facultatif)\n7. Sel',
        'instructions':
            '1. Préparez la pâte et divisez-la en portions.\n2. Formez une boule avec la pâte de haricots et insérez un jaune d\'œuf au centre.\n3. Scellez soigneusement la pâte et formez des mooncakes.\n4. Badigeonnez les mooncakes de jaune d\'œuf ou de lait pour une finition dorée.\n5. Faites cuire au four jusqu\'à ce que les mooncakes soient dorés et cuits.\n6. Laissez refroidir avant de servir.',
      },
      {
        'title': 'Chowmein',
        'image': 'assets/chowmein.jpg',
        'description':
            'Le Chowmein est un plat de nouilles sautées d\'origine chinoise, cuit avec des légumes, de la viande (optionnelle) et des sauces aromatiques.',
        'ingredients':
            '1. Nouilles chow mein ou nouilles de blé\n2. Viande (poulet, bœuf, porc) (optionnel)\n3. Légumes (chou, carottes, poivrons, oignons, brocolis)\n4. Sauce soja\n5. Sauce d\'huître\n6. Huile de sésame\n7. Ail\n8. Gingembre\n9. Sel\n10. Poivre',
        'instructions':
            '1. Faites cuire les nouilles chow mein selon les instructions sur l\'emballage. Égouttez et réservez.\n2. Dans une grande poêle ou un wok, faites chauffer de l\'huile de sésame et faites sauter l\'ail et le gingembre hachés jusqu\'à ce qu\'ils soient parfumés.\n3. Ajoutez la viande (si utilisée) et faites cuire jusqu\'à ce qu\'elle soit dorée.\n4. Ajoutez les légumes coupés en julienne et faites sauter jusqu\'à ce qu\'ils soient tendres mais encore croquants.\n5. Ajoutez les nouilles cuites et les sauces (soja, huître), assaisonnez avec du sel et du poivre selon votre goût.\n6. Mélangez bien et continuez à faire sauter jusqu\'à ce que les nouilles soient bien enrobées de sauce et chauffées.\n7. Servez chaud garni de ciboules hachées ou de graines de sésame.',
      },
    ]
    // Ajoutez plus de catégories et de plats ici
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Les différents plats'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: dishes.keys.map((category) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      category,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GridView.builder(
                    padding: const EdgeInsets.all(10.0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dishes[category]!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  dishes[category]![index]['image']!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                dishes[category]![index]['title']!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RecipeDetailPage(
                                      title: dishes[category]![index]['title']!,
                                      image: dishes[category]![index]['image']!,
                                      description: dishes[category]![index]
                                          ['description']!,
                                      ingredients: dishes[category]![index]
                                          ['ingredients']!,
                                      instructions: dishes[category]![index]
                                          ['instructions']!,
                                    ),
                                  ),
                                );
                              },
                              child: const Text('Voir la recette'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class RecipeDetailPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String ingredients;
  final String instructions;

  const RecipeDetailPage({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Ingrédients:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              ingredients,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Instructions:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              instructions,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}