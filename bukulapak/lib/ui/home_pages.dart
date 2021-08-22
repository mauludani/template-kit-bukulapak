part of 'pages.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 80,
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('BukuBook',
                      style: font.copyWith(
                          fontSize: 24,
                          fontWeight: black,
                          color: Color(0xff2B3346))),
                  SizedBox(
                    width: 110,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xffE2DEF9),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [shadow]),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xff2B3346),
                            size: 22.0,
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [shadow]),
                          child: Icon(
                            Icons.menu,
                            color: Color(0xff2B3346),
                            size: 22.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xffF8F3ED),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              height: 50,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 16), // changes position of shadow
                    )
                  ]),
              child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Color(0xff958672)),
                      border: InputBorder.none,
                      hintText: 'Search a Book',
                      hintStyle:
                          font.copyWith(color: Color(0xff958672), fontSize: 12))),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 16),
              width: double.infinity,
              child: Text('Book of the day',
                  style: font.copyWith(
                      fontSize: 14, fontWeight: bold, color: Color(0xff2B3346))),
            ),
            Container(
              width: double.infinity,
              height: 124,
              margin: EdgeInsets.symmetric(
                vertical: 14,
              ),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 124,
                  aspectRatio: 16 / 10,
                  viewportFraction: 0.85,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 7),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  PromoWidget(),
                  PromoWidget(),
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return i;
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
                width: width,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    CustomTabBar(
                      titles: ['Best Seller', 'Baru', 'Rekomendasi'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: 241, maxWidth: double.infinity),
              child: Container(
                width: double.infinity,
                // height: double.infinity,
                height: 241,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  CardBook(
                    title: 'Koala Kumal',
                    price: 'Rp. 59.000',
                    picturPath: 'assets/cover (1).jpg',
                  ),
                  CardBook(
                    title: 'My Stupid Boss 5: Liar Liar Pants of Fire',
                    price: 'Rp. 59.000',
                    picturPath: 'assets/cover (2).jpg',
                  ),
                  CardBook(
                    title: 'Harry Potter',
                    price: 'Rp. 59.000',
                    picturPath: 'assets/cover (6).jpg',
                  ),
                  SizedBox(
                    width: 30,
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Koleksi Romantis',
                        style: font.copyWith(
                            fontWeight: bold,
                            fontSize: 16,
                            color: Color(0xff2B3346))),
                    Text('Lihat Semua',
                        style: font.copyWith(
                            fontSize: 12, color: Color(0xff2B3346))),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: 241, maxWidth: double.infinity),
              child: Container(
                width: double.infinity,
                // height: double.infinity,
                height: 241,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  CardBook(
                    title: 'Koala Kumal',
                    price: 'Rp. 59.000',
                    picturPath: 'assets/cover (4).jpg',
                  ),
                  CardBook(
                    title: 'My Stupid Boss 5: Liar Liar Pants of Fire',
                    price: 'Rp. 59.000',
                    picturPath: 'assets/cover (3).jpg',
                  ),
                  CardBook(
                    title: 'Cinta Iklas',
                    price: 'Rp. 59.000',
                    picturPath: 'assets/cover (6).jpg',
                  ),
                  SizedBox(
                    width: 30,
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
