import 'package:flutter/material.dart';
import 'package:http_get_request_using_riverpod/models/user_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.e}) : super(key: key);

  final UserModel e;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  maxRadius: 80,
                  backgroundImage: NetworkImage(e.avatar),
                ),
              ),
              Text("${e.firstName}${e.lastName}"),
              Text(e.email),
            ],
          ),
        ),
      ),
    );
  }
}
