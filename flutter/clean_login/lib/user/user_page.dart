import 'package:clean_login/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';

class UserPage extends StatelessWidget {
  final UserModel user;
  const UserPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 170,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/alucard.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Text.rich(TextSpan(
              text: "Bem-vindo, ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 26),
              children: [
                TextSpan(
                  text: user.nick,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )
              ])),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ultrices, ligula quis mollis rutrum, leo purus luctus nunc, ac elementum magna orci eu metus. Nulla a quam purus. Pellentesque tortor arcu, ultricies ac quam sit amet, volutpat interdum nulla. Aliquam consequat sodales erat at ornare. Vivamus bibendum mauris id fringilla sagittis. Cras vehicula orci sapien. Ut quis ultrices ex, dapibus semper velit. Mauris diam tortor, facilisis sit amet ipsum at, egestas mollis est. Maecenas consequat vitae enim vitae volutpat. Mauris sed finibus dolor. Curabitur vitae porta ipsum, sit amet luctus odio. Donec convallis ex et ligula faucibus, id sollicitudin magna volutpat. Cras vel velit non justo commodo condimentum quis id lacus. Vestibulum ultrices et leo ut volutpat. Nulla a nunc pulvinar tellus tempor vehicula. Donec faucibus luctus turpis quis porta.",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.justify,
            ),
          )
        ]),
      ),
    );
  }
}
