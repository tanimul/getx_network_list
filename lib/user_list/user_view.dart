import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_network_list/model/user_model.dart';
import 'package:getx_network_list/user_list/user_controller.dart';
import 'package:getx_network_list/widget/user_item_widget.dart';
import 'package:getx_network_list/widget/widget_progressbar.dart';

class UserView extends StatelessWidget {
  final controller = Get.put(UserController());

  UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "User List",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.getUserList();
        },
        child: Center(
          child: Obx(() {
            if (controller.isLoading.isFalse) {
              debugPrint("length: ${controller.userData.length}");
              return ListView.builder(
                  itemCount: controller.userData.length,
                  itemBuilder: (context, index) {
                    final Users users=controller.userData[index];

                    return(UserItemWidget(users: users));

                  });
            } else {
              return const CustomProgressIndicator();
            }
          }),
        ),
      ),
    );
  }
}
