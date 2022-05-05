import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_container.dart';

class YemishlarTarixiPage extends StatelessWidget {
  const YemishlarTarixiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: getHeight(20), left: getWidth(16)),
              child: AppbarTarix(
                text: "Yemishlar Tarixi",
                ontap: () {},
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: const CachedNetworkImageProvider(
                      "https://apollo-olx.cdnvideo.ru/v1/files/vvw99wqabzg93-UZ/image;s=644x461",
                    ),
                    radius: getHeight(40),
                  ),
                  title: Text(
                    "Beda- 5 bog'",
                    style: TextStyle(
                        fontSize: getHeight(16), fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "9000 so'm",
                    style: TextStyle(
                        fontSize: getHeight(15), fontWeight: FontWeight.w400),
                  ),
                  trailing: const Text("19.03.2022"),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
