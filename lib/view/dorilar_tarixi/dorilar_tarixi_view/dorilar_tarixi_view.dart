import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:halal_farm/core/utils/size_config/size_config.dart';
import 'package:halal_farm/core/utils/widgets/widgets_container.dart';

class DorilarTarixiPage extends StatelessWidget {
  const DorilarTarixiPage({Key? key}) : super(key: key);

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
                text: "Dorilar Tarixi      ",
                ontap: () {},
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: const CachedNetworkImageProvider(
                      "https://www.sibagrotrade.com/upload/iblock/ebe/ebed971bdbcb3bd6e9ce693565c47779.jpg",
                    ),
                    radius: getHeight(40),
                  ),
                  title: Text(
                    "Furosimid (ukol) 1 doza",
                    style: TextStyle(
                        fontSize: getHeight(16), fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    "23000 so'm",
                    style: TextStyle(
                        fontSize: getHeight(15), fontWeight: FontWeight.w400),
                  ),
                  trailing: const Text("21.03.2022"),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
