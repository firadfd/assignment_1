import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  String selectedCategory = "All";

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
          backgroundColor: Color(0xff1E1E1E),
          elevation: 0,
          toolbarHeight: 80,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Rafsan",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Let's watch today",
                style: GoogleFonts.roboto(
                  color: Colors.white60,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white30, width: 2),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFF008B),
                        Color(0xff00FFD3),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white30, width: 1),
                      ),
                      child: TextField(
                        controller: searchController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: GoogleFonts.akatab(
                              color: Colors.white54,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          suffixIcon: IconButton(
                            icon:
                                const Icon(Icons.search, color: Colors.white54),
                            onPressed: () {
                              searchController.text = "";
                            },
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(15),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.tune, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.akatab(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See More",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CustomWidgets.chipsItem("All", selectedCategory == "All",
                      (label) {
                    setState(() => selectedCategory = label);
                  }),
                  CustomWidgets.chipsItem(
                      "Action", selectedCategory == "Action", (label) {
                    setState(() => selectedCategory = label);
                  }),
                  CustomWidgets.chipsItem("Anime", selectedCategory == "Anime",
                      (label) {
                    setState(() => selectedCategory = label);
                  }),
                  CustomWidgets.chipsItem(
                      "Sci-fi", selectedCategory == "Sci-fi", (label) {
                    setState(() => selectedCategory = label);
                  }),
                  CustomWidgets.chipsItem(
                      "Thriller", selectedCategory == "Thriller", (label) {
                    setState(() => selectedCategory = label);
                  }),
                ],
              ),
            ),
            SizedBox(
                height: 165, child: CustomWidgets.movieCard((value) => {})),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Movies",
                    style: GoogleFonts.akatab(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See More",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CustomWidgets.moviePoster(
                          "https://m.media-amazon.com/images/I/81rLvrHv8SL.jpg",
                          "Thor: Love and Thunder",
                          (value) => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CustomWidgets.moviePoster(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGegbQDwEvmkehUqYXat0OEYNa6PED3YIyfQ&s",
                          "Iron man",
                          (value) => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CustomWidgets.moviePoster(
                          "https://www.wallpaperflare.com/static/495/674/470/captain-america-poster-wallpaper.jpg",
                          "Captain America",
                          (value) => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CustomWidgets.moviePoster(
                          "https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/3/l/1/medium-poster-design-no-3019-hulk-poster-hulk-posters-for-room-original-imaggbybvwbygz8y.jpeg?q=90&crop=false",
                          "Hulk",
                          (value) => {}),
                    ),
                  ],
                )),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Continue watching",
                    style: GoogleFonts.akatab(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See More",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomWidgets.watchedEpisode(
                          "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2024/07/wednesday-addams-jenna-ortega-and-fez-in-wednesday.jpg",
                          "Wednesday | Season - 1 | Episode - 3",
                          0.8,
                          (value) => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomWidgets.watchedEpisode(
                        "https://phantom-marca.unidadeditorial.es/d287ef85f502ccc31676d98d37c5ecc7/resize/828/f/jpg/assets/multimedia/imagenes/2024/01/02/17042107082304.jpg",
                        "Game of thrones | Season - 1 | Episode - 3",
                        0.4,
                        (value) => {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomWidgets.watchedEpisode(
                          "https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/09/1-8454943726.jpg",
                          "Money Heist | Season - 1 | Episode - 3",
                          0.9,
                          (value) => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomWidgets.watchedEpisode(
                          "https://images.immediate.co.uk/production/volatile/sites/3/2020/09/loki-tv-show-ddb01c2.jpg",
                          "Loki | Season - 1 | Episode - 3",
                          0.5,
                          (value) => {}),
                    ),
                  ],
                )),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended For You",
                    style: GoogleFonts.akatab(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See More",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomWidgets.recommendedMoviePoster(
                          "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p24429_p_v12_bf.jpg",
                          "The Green mile",
                          (value) => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomWidgets.recommendedMoviePoster(
                          "https://hips.hearstapps.com/hmg-prod/images/black-panther-1519084547.jpg",
                          "Black Panther",
                          (value) => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomWidgets.recommendedMoviePoster(
                          "https://mir-s3-cdn-cf.behance.net/project_modules/hd/8d8f28105415493.619ded067937d.jpg",
                          "interstellar",
                          (value) => {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomWidgets.recommendedMoviePoster(
                          "https://static1.srcdn.com/wordpress/wp-content/uploads/2022/07/star-trek-4-timing.jpg",
                          "Star Trek",
                          (value) => {}),
                    ),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xff1C212A),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.tv),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
