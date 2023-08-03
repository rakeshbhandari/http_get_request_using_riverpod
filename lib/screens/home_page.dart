import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_get_request_using_riverpod/models/user_model.dart';
import 'package:http_get_request_using_riverpod/screens/details_page.dart';

import '../data provider/data_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users Information'),
        centerTitle: true,
      ),
      body: data.when(
        data: (data) {
          List<UserModel> userList = data.map((e) => e).toList();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: userList.length,
                        shrinkWrap: true,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(e: userList[index]),
                              ),
                            ),
                            child: Card(
                              color: Colors.blueGrey,
                              elevation: 6,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: ListTile(
                                title: Text(
                                  "${userList[index].firstName} ${userList[index].lastName}",
                                  style: const TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(
                                  userList[index].email,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                trailing: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(userList[index].avatar),
                                ),
                              ),
                            ),
                          );
                        }))
              ],
            ),
          );
        },
        error: (err, s) => Text(err.toString()),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
