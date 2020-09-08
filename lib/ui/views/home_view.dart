//import 'package:compound/ui/views/login_view.dart';
import 'package:compound/ui/views/logout_view.dart';
import 'package:compound/ui/widgets/busy_button.dart';
import 'package:compound/ui/widgets/text_link.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f3d56),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                child: Image.asset('assets/images/alien.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextLink('Uau! Seja bem-vindo tripulante!'),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BusyButton(
                  title: 'Deseja desembarcar?',
                  onPressed: () {
                    // TODO: Handle navigation
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogoutView()),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
