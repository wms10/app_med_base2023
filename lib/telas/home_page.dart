import 'package:flutter/material.dart';
import 'package:app_med_base2023/telas/login_medico.dart';
import 'package:app_med_base2023/telas/tela_sobre.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 45, top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        child: Image.asset('images/hospital1.png'),
                      ),
                    ),
                    SizedBox(width: 8),
                    InkWell(
                      child: Container(
                        child: Image.asset('images/image 1.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 120),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SouMedico(),
                            ),
                          );
                        },
                        child: Image.asset('images/equipe-medica 3.png'),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 95,
                        child: Text(
                          'Sou médico',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SobrE()),
                );
              },
              child: Text('Sobre', style: TextStyle(fontSize: 22, height: 1.5)),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                side: BorderSide(color: Colors.blue, width: 2.5),
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
