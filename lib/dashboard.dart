import 'package:flutter/material.dart';
import 'package:kuliah/category_card.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kuliah/jadwal.dart';
import 'package:kuliah/map_screen.dart';
import 'package:kuliah/constants.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.all(30),
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(""),
                    ),
                  ),
                  Text(
                    "Mobile Programming",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Qiblat",
                          svgSrc: "assets/images/yoga.svg",
                          press: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return MapScreen();
                            }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Jadwal Sholat",
                          svgSrc: "assets/images/calendar.svg",
                          press: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return JadwalSholat();
                            }),
                            );
                          },
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
