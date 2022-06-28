
import 'package:flutter/material.dart';
import 'package:flutter_application_1/color.dart';
import 'package:flutter_application_1/widgets/my_widgets.dart';


class VitalRates extends StatefulWidget {
  const VitalRates({Key? key}) : super(key: key);

  @override
  _VitalRatesState createState() => _VitalRatesState();
}

class _VitalRatesState extends State<VitalRates> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: MyColors().primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/tameni.png',
                        width: 50,
                        height: 50,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const WhiteText(text: 'رجوع', size: 20))
                    ],
                  ),
                )),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.87,
                  decoration: BoxDecoration(
                    color: MyColors().white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child: IconButton(
                            onPressed: () {}, icon:const Icon(Icons.more_horiz)),
                      ),
                      const RatesConrainer(
                          text: 'ضغط الدم', secondText: '80/120'),
                      const RatesConrainer(
                          text: 'معدل التنفس', secondText: '40'),
                      const RatesConrainer(
                          text: 'معدل النبض', secondText: '65'),
                      const RatesConrainer(
                          text: 'فصيلة الدم', secondText: 'A+'),
                      const RatesConrainer(text: 'الوزن', secondText: '60'),
                      const RatesConrainer(text: 'الطول', secondText: '160'),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
