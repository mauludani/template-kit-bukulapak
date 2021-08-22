part of 'widgets.dart';

class CardBook extends StatelessWidget {
  final String title, picturPath, price;
  const CardBook({
    Key? key,
    required this.title,
    required this.picturPath,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 224,
          maxWidth: 126,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 181,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(picturPath), fit: BoxFit.cover)),
              ),
              Text(
                title,
                style: font.copyWith(fontSize: 12, fontWeight: bold,  color: Color(0xff2B3346)),
              ),
              Text(
                price,
                style: font.copyWith(fontSize: 10, color: Color(0xff8C96AC)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
