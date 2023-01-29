import 'package:awayday/src/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:awayday/widgets/backButtonTop.dart';

class LoginSignnup extends StatefulWidget {
  const LoginSignnup({Key? key}) : super(key: key);

  @override
  State<LoginSignnup> createState() => _LoginSignnupState();
}

class _LoginSignnupState extends State<LoginSignnup> {
  @override
  void initState() {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/peakpx.jpg"), fit: BoxFit.cover)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                backButton(Colors.white, () => {}),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Travel with us.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: width / 1.2,
              child: Text(
                "Explore the most beautiful places with the best deals  on ferry trips, tarvel activities, schedules and accomodations.",
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomPaint(
                    painter: DrawCircle(Colors.white10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomPaint(
                    painter: DrawCircle(Colors.white10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomPaint(
                    painter: DrawCircle(Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomPaint(
                    painter: DrawCircle(Colors.white10),
                  ),
                ),
              ],
            ),
            Spacer(),
            colorBtn(
                context,
                Colors.black26,
                "Sign In",
                Colors.white,
                () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()))
                    },
                true),
            SizedBox(
              height: 20,
            ),
            colorBtn(context, Colors.white, "Create Account", Colors.purple,
                () => {}, true),
            SizedBox(
              height: 30,
            ),
            colorBtn(context, Colors.transparent, "Skip", Colors.white,
                () => {}, false),
            SizedBox(
              height: width / 6,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  var color;

  DrawCircle(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color;
    canvas.drawCircle(Offset(0.0, 0.0), 5, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    //false : paint call might be optimized away.
    return false;
  }
}
