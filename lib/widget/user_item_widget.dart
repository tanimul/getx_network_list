import 'package:flutter/material.dart';
import 'package:getx_network_list/model/user_model.dart';

import 'custom_row_widget.dart';

class UserItemWidget extends StatelessWidget {
  final Users users;

  const UserItemWidget({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 65,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60,
                        backgroundImage: users?.image!.isEmpty == true ||
                                users?.image == null
                            ? const AssetImage('assets/images/placeholder.jpg')
                            : Image.network(
                                users!.image!,
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.asset(
                                      'assets/images/placeholder.jpg');
                                },
                              ).image,
                      ),
                    ),
                    CustomRowWidget(
                        title: "Full Name",
                        text:
                            "${users.firstName} ${users.maidenName} ${users.lastName}"),
                    CustomRowWidget(title: "Address", text: "${users.address}"),
                    CustomRowWidget(title: "Gender", text: "${users.gender}"),
                    CustomRowWidget(title: "Email", text: "${users.email}"),
                    CustomRowWidget(title: "Phone", text: "${users.phone}"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
