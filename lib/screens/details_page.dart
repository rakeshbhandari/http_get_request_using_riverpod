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
          padding: const EdgeInsets.only(top: 50, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
              Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 1)),
                  child: Text("Full Name : ${e.firstName} ${e.lastName}")),
              const SizedBox(
                height: 7,
              ),
              Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 1)),
                  child: Text('Email: ${e.email}')),
            ],
          ),
        ),
      ),
    );
  }
}
