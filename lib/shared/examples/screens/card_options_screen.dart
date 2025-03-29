import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/config/theme/base_colors.dart';
import 'package:starving_shopping_flutter_app/shared/examples/extension/string_extension.dart';
import 'package:starving_shopping_flutter_app/shared/models/models.dart';
import 'package:starving_shopping_flutter_app/shared/widget/card_options.dart';

class CardOptionsScreen extends StatelessWidget {
  const CardOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Card Options examples')),
      body: Column(
        children: [
          CardOptions(
            title: 'App options',
            iconTitle: Icons.settings,
            backgroundColor: BaseColors.backgroundColorLight,
            titleColor: Colors.black,
            iconTitleColor: Colors.black,
            itemColor: Colors.black,
            forwardColor: Colors.black,
            items: [
              ItemOption(
                name: 'Rate on App Store', // ! put app store o play store
                iconColor: Colors.amber,
                imageResource: getFullPathAsset('start_icon_menu.png'),
                onPressed: () {
                  // open some store
                }
              ),

              ItemOption(
                name: 'Share App',
                iconColor: Colors.blueAccent,
                imageResource: getFullPathAsset('share_icon_menu.png'),
                onPressed: () {
                  // open some store
                }
              ),

              ItemOption(
                name: 'Send Feedback',
                iconColor: Colors.greenAccent,
                imageResource: getFullPathAsset('mail_icon_menu.png'),
                onPressed: () {
                  // open some store
                }
              ),
            ],
          ),

          CardOptions(
            title: 'Connect',
            iconTitle: Icons.group,
            backgroundColor: BaseColors.backgroundColorLight,
            titleColor: Colors.black,
            iconTitleColor: Colors.black,
            itemColor: Colors.black,
            forwardColor: Colors.black,
            items: [
              ItemOption(
                name: 'Join Space Creators',
                iconColor: Colors.purpleAccent,
                imageResource: getFullPathAsset('feedback_icon_menu.png'),
                onPressed: () {
                  // open some store
                }
              ),

              ItemOption(
                name: 'Read on Medium',
                iconColor: Colors.orangeAccent,
                imageResource: getFullPathAsset('read_icon_menu.png'),
                onPressed: () {
                  // open some store
                }
              ),
            ],
          ),
        ],
      ),
    );
  }
}
