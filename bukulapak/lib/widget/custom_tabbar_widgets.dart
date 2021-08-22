part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int? selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabBar({required this.titles, required this.selectedIndex,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 1,
            color: Color(0xffF2F2F2),
          ),
          Row(
            children: titles
                .map((e) => Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                                onTap(titles.indexOf(e));
                            },
                            child: Text(
                              e,
                              style: (titles.indexOf(e) == selectedIndex)
                                  ? font.copyWith(fontSize: 12,
                                      fontWeight: bold,  color: Color(0xff2B3346))
                                  : font.copyWith(
                                      fontSize: 12, fontWeight: bold,  color: Color(0xff2B3346)),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 3,
                            margin: EdgeInsets.only(top: 7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: (titles.indexOf(e) == selectedIndex)
                                    ?  Color(0xff2B3346)
                                    : Colors.transparent),
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
