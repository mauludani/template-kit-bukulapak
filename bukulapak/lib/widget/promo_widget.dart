part of 'widgets.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        image:
              DecorationImage(image: AssetImage('assets/promo1.jpg'), fit: BoxFit.cover)
      ),
    );
  }
}