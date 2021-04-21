import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/presentantion/home/home_scren.dart';
import 'package:proyecto_deliviery_app/presentantion/theme.dart';
import 'package:proyecto_deliviery_app/presentantion/widgets/botton_delivery.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logoSize = 60.0;
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final moreSize = 50.0;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                  bottom: logoSize,
                  left: -moreSize / 5,
                  right: -moreSize / 5,
                  height: width + moreSize,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.5, 1.0],
                        colors: deliverygrandiant,
                      ),
                      borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).canvasColor,
                      radius: logoSize,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          'assets/avatar.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "Username",
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        hintText: 'username',
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Password",
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.vpn_key_sharp,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        hintText: 'password',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DeliveryButton(
            title: 'Login',
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 150,
            ),
            ontap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          SizedBox(height:50)
        ],
      ),
    );
  }
}
