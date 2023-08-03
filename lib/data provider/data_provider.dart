import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_get_request_using_riverpod/models/user_model.dart';
import 'package:http_get_request_using_riverpod/services/services.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
  return ref.watch(userProvider).getUsers();
});
