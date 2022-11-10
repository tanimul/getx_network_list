import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_network_list/model/user_model.dart';
import 'package:getx_network_list/user_list/user_repository.dart';

class UserController extends GetxController {
  late final UserRepository userRepository;
  var isLoading = true.obs;
  var userData = [].obs;

  @override
  void onInit() {
    userRepository=UserRepository();
    getUserList();
    super.onInit();
  }

  Future getUserList() async{

    final response=await userRepository.getUsers();
    isLoading.value=false;

    if(response?.users==null){
      Fluttertoast.showToast(msg: "Users Empty or Null");
    }


    userData.value=response?.users as List<Users>;
    debugPrint("Get User List: ${userData.length}");
  }
}
