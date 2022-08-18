import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Stack(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 20.0,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFF3B2B7)),
          Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 20.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0)),
                      color: Colors.white))),

          //Content
          Positioned(
              top: MediaQuery.of(context).size.height / 2 + 25.0,
              left: 15.0,
              child: Container(
                  height: (MediaQuery.of(context).size.height / 2) - 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(children: [
                    const Text(
                      'Preparation time',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68)),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      '5min',
                      style: const TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Color(0xFFC6C4C4)),
                    ),
                    const SizedBox(height: 10.0),
                    //This is the line
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Container(
                        height: 0.5,
                        color: const Color(0xFFC6C4C4),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Ingredients',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68)),
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                        height: 125.0,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              buildIngredientItem(
                                  'Water',
                                  Icon(Feather.droplet,
                                      size: 10.0, color: Colors.white),
                                  const Color(0xFF6FC5DA)),
                              buildIngredientItem(
                                  'Brewed Espresso',
                                  Icon(Feather.target,
                                      size: 18.0, color: Colors.white),
                                  const Color(0xFF615955)),
                              buildIngredientItem(
                                  'Sugar',
                                  Icon(Feather.box,
                                      size: 18.0, color: Colors.white),
                                  const Color(0xFFF39595)),
                              buildIngredientItem(
                                  'Toffee Nut Syrup',
                                  Icon(MaterialCommunityIcons.peanut_outline,
                                      size: 18.0, color: Colors.white),
                                  const Color(0xFF8FC28A)),
                              buildIngredientItem(
                                  'Natural Flavors',
                                  Icon(MaterialCommunityIcons.leaf_maple,
                                      size: 18.0, color: Colors.white),
                                  const Color(0xFF3B8079)),
                              buildIngredientItem(
                                  'Vanilla Syrup',
                                  Icon(
                                      MaterialCommunityIcons
                                          .flower_tulip_outline,
                                      size: 18.0,
                                      color: Colors.white),
                                  const Color(0xFFF8B870)),
                              const SizedBox(width: 25.0)
                            ])),
                    //Line
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Container(
                        height: 0.5,
                        color: const Color(0xFFC6C4C4),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Nutrition Information',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF726B68)),
                    ),
                    const SizedBox(height: 10.0),
                    Row(children: [
                      const Text(
                        'Calories',
                        style: const TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Color(0xFFD4D3D2)),
                      ),
                      const SizedBox(width: 15.0),
                      const Text(
                        '250',
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF716966)),
                      ),
                    ]),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        const Text(
                          'Proteins',
                          style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: Color(0xFFD4D3D2)),
                        ),
                        const SizedBox(width: 15.0),
                        const Text(
                          '10g',
                          style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF716966)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        const Text(
                          'Caffeine',
                          style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: const Color(0xFFD4D3D2)),
                        ),
                        const SizedBox(width: 15.0),
                        const Text(
                          '150mg',
                          style: const TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF716966)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    //Line
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Container(
                        height: 0.5,
                        color: const Color(0xFFC6C4C4),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: const Color(0xFF473D3A)),
                          child: const Center(
                            child: const Text(
                              'Make Order',
                              style: const TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                    const SizedBox(height: 5.0)
                  ]))),
          Positioned(
              top: MediaQuery.of(context).size.height / 8,
              left: 80.0,
              child: Container(
                  height: 450.0,
                  width: 450.0,
                  decoration: const BoxDecoration(
                      image: const DecorationImage(
                          image: const AssetImage('assets/pinkcup.png'),
                          fit: BoxFit.cover)))),
          Positioned(
              top: 25.0,
              left: 15.0,
              child: Container(
                  height: 300.0,
                  width: 300.0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //use a row with crossaxis as end
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 230.0,
                              child: const Text('Caramel Macchiato',
                                  style: const TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            const SizedBox(width: 15.0),
                            Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white),
                                child: const Center(
                                    child: const Icon(Icons.favorite,
                                        size: 18.0, color: Colors.red)))
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          width: 170.0,
                          child: const Text(
                              'Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 13.0,
                                  color: Colors.white)),
                        ),
                        const SizedBox(height: 20.0),
                        Row(children: [
                          Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: const Color(0xFF473D3A)),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text('4.2',
                                      style: const TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 13.0,
                                          color: Colors.white)),
                                  const Text('/5',
                                      style: const TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 13.0,
                                          color: Color(0xFF7C7573))),
                                ],
                              ))),
                          const SizedBox(width: 15.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(children: [
                                  Container(height: 35.0, width: 80.0),
                                  Positioned(
                                      left: 40.0,
                                      child: Container(
                                          height: 35.0,
                                          width: 35.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17.5),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xFFF3B2B7),
                                                  style: BorderStyle.solid,
                                                  width: 1.0),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/man.jpg'),
                                                  fit: BoxFit.cover)))),
                                  Positioned(
                                    left: 20.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/model.jpg'),
                                              fit: BoxFit.cover),
                                          border: Border.all(
                                              color: const Color(0xFFF3B2B7),
                                              style: BorderStyle.solid,
                                              width: 1.0)),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 35.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(17.5),
                                        image: const DecorationImage(
                                            image:
                                                AssetImage('assets/model2.jpg'),
                                            fit: BoxFit.cover),
                                        border: Border.all(
                                            color: const Color(0xFFF3B2B7),
                                            style: BorderStyle.solid,
                                            width: 1.0)),
                                  ),
                                ]),
                                const SizedBox(height: 3.0),
                                const Text(
                                  '+ 27 more',
                                  style: const TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 12.0,
                                      color: Colors.white),
                                )
                              ])
                        ])
                      ])))
        ],
      )
    ]));
  }

  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Column(children: [
          Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0), color: bgColor),
              child: Center(child: iconName)),
          const SizedBox(height: 4.0),
          Container(
              width: 60.0,
              child: Center(
                  child: Text(name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 12.0,
                          color: const Color(0xFFC2C0C0)))))
        ]));
  }
}
