import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FBFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                color: Color(0xffC1D6F4),
                            ),
                            Text(
                              "Location",
                              style: GoogleFonts.montserrat(
                                  color: Colors.black.withOpacity(0.37)),
                            )
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "Purbalinga, Jawa Tengah",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)

                      ),
                      child: Stack(
                        children: [
                          Icon(Icons.notifications,
                            color: Colors.black.withOpacity(0.37),
                            size: 20,
                        ),
                          Positioned(
                            top: 3,
                            right: 3,
                            child: Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color: Colors.white
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12,
                                    color: Colors.white.withOpacity(0.05),
                                    offset: Offset(-4, -4)
                                  )
                                ]
                              ),
                            ),
                          )
                      ]
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.27)
                    ),
                    suffixIcon: Icon(Icons.search,
                        color: Colors.black.withOpacity(0.27)
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.black12.withOpacity(0.037),
                        width: 1.4,
                        
                      ),

                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  "Category",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                const SizedBox(height: 20,),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        ItemCategoria( images:  "assets/images/building.png", categoria: "House",),
                        ItemCategoria(images:  "assets/images/building.png", categoria: "Hotel",),
                        ItemCategoria(images:  "assets/images/building.png", categoria: "Apartment",),
                        ItemCategoria(images:  "assets/images/building.png", categoria: "House",),
                        ItemCategoria(images:  "assets/images/building.png", categoria: "House",),
                      ],
                    )),
                const SizedBox(height: 20,),
                Text(
                  "Recomendation",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.17),
                        offset: Offset(4,4)
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://definicion.de/wp-content/uploads/2011/01/casa-1.jpg"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Minimalist House",
                            style: GoogleFonts.montserrat(
                                color: Colors.black.withOpacity(0.65),
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star,
                              color: Colors.yellow,),
                              const SizedBox(width: 10,),
                              Text(
                                "4.5",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black.withOpacity(0.35),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            ],
                          ),

                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "\$734",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.lightBlue.withOpacity(0.75),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "/Month",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black.withOpacity(0.25),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.15),
                                  offset: Offset(4,4),
                                )
                              ]
                            ),
                              child: Icon(Icons.comment,
                              size: 20,),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemCategoria extends StatelessWidget {

  String images;
  String categoria;

  ItemCategoria({
    required this.images,
    required this.categoria
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Row(
        children: [
          Image.asset(
            images,
            height: 22.0,
          ),
          const SizedBox(width: 10,),
          Text(categoria,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
    );
  }
}
