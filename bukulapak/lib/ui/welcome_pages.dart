part of 'pages.dart';

class WelcomePages extends StatefulWidget {
  const WelcomePages({Key? key}) : super(key: key);

  @override
  _WelcomePagesState createState() => _WelcomePagesState();
}

class _WelcomePagesState extends State<WelcomePages> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Stack(
          children: [
            Image(
              image: AssetImage('assets/sampul.png'),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SafeArea(
                child: ListView(
              children: [
                Container(
                  width: width,
                  height: height * 0.3,
                  child: Center(
                    child: Text(
                      'BukuLapak',
                      style: font.copyWith(
                          fontSize: 42, fontWeight: black, color: lightColor),
                    ),
                  ),
                ),
              ],
            )),
            Positioned(
              bottom: 0,
              child: Container(
                height: 100,
                width: width,
                alignment: Alignment.center,
                child: Container(
                  height: 49,
                  width: 138,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePages()),
                      );
                    },
                    child: Text(
                      "Get Started",
                      style: font.copyWith(
                          color: Colors.black,
                          letterSpacing: .3,
                          fontSize: 14,
                          fontWeight: bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffDCFF00),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
