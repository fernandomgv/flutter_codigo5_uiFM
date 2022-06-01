import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportPage extends StatelessWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.notifications_none),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Hello Fernando",
                  style: GoogleFonts.poppins(),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Welcome back!",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 230.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://images.pexels.com/photos/949126/pexels-photo-949126.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fernando, hagas lo que hagas, hazlo intensamente",
                                maxLines: 2,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffFE006F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                child: Text(
                                  "Regístrate Ahora",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categorías",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.0,
                      ),
                    ),
                    Text(
                      "Ver más",
                      style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  children: [
                    ItemGridWidget(
                        Imagen: "assets/images/swimming.png",
                        Name: "Natación"),
                    ItemGridWidget(
                        Imagen: "assets/images/basketball.png",
                        Name: "Basketball"),
                    ItemGridWidget(
                        Imagen: "assets/images/boxing.png",
                        Name: "Box"),
                    ItemGridWidget(
                        Imagen: "assets/images/football.png",
                        Name: "football"),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemGridWidget extends StatelessWidget {

  String Imagen;
  String Name;

  ItemGridWidget({
    required this.Name,
    required this.Imagen
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0, vertical: 12.0,),
      margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6,),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(4, 4),
            ),
          ]
      ),
      child: Row(
        children: [
          Image.asset(this.Imagen,  ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            this.Name,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 13.0
            ),

          ),
        ],
      ),
    );
  }
}