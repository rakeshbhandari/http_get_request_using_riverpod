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
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  maxRadius: 80,
                  backgroundImage: NetworkImage(e.avatar),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Full Name : ${e.firstName} ${e.lastName}"),
              const SizedBox(
                height: 5,
              ),
              Text('Email: ${e.email}'),
            ],
          ),
        ),
      ),
    );
  }
}
