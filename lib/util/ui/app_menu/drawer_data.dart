import 'package:dude/util/ui/common_ui.dart';
import 'package:dude/util/ui/text_field.dart';
import 'package:flutter/material.dart';

class DrawerData extends StatelessWidget {
  const DrawerData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<DrawerItem> drawer = [
      const DrawerItem('Profile', Icons.account_circle),
      const DrawerItem('Messages', Icons.message),
      const DrawerItem('Activity', Icons.compare_arrows),
      const DrawerItem('Bookmarks', Icons.bookmark),
      const DrawerItem('Sign Out', Icons.exit_to_app),
    ];
    return Container(
      // decoration: BoxDecoration(color: getPrimaryBgColor(context)),
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getprofileCard(),
          const Divider(
            color: Colors.white54,
          ),
          ListView.builder(
              itemCount: drawer.length,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 12),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(drawer[index].icon),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              drawer[index].name,
                              style: const TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
          const Divider(
            color: Colors.white54,
          ),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.share),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Tell a Friend',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.help_outline),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Help and Feedback',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getprofileCard() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            ),
            verticalSpacing(10),
            const MyText(
              "user Name",
              fontSize: 16,
            ),
            verticalSpacing(10),
            const MyText(
              "user Email / phone",
              fontSize: 16,
            )
          ],
        ),
        IconButton(
            onPressed: () {
              print("dark moda");
            },
            icon: const Icon(Icons.light_mode))
      ],
    );
  }
}

class DrawerItem {
  final String name;
  final IconData icon;

  const DrawerItem(this.name, this.icon);
}
