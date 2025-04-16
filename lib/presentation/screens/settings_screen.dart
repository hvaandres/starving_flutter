import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/config/theme/color_manager_extension.dart';
import 'package:starving_shopping_flutter_app/shared/examples/extension/string_extension.dart';
import 'package:starving_shopping_flutter_app/shared/models/models.dart';
import 'package:starving_shopping_flutter_app/shared/widget/card_options.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: context.primaryContrastColor,
          ),
        ),
        backgroundColor: context.primaryBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: context.primaryBackgroundColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Card(
                  color: context.backgroundSecondaryColor,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 16),
                        CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 38,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 36,
                            child: Image(
                              image: AssetImage(
                                getFullPathAsset('avatar_dev_1.png'),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Andres Haro',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: context.primaryContrastColor
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Software engineer passionate about building innovative apps and teaching others.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: context.secondaryTextColor
                          ),
                        ),
                        SizedBox(height: 8),
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.link, color: Colors.lightBlue),
                              SizedBox(width: 8),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Github Profile',
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
          
              CardOptions(
                title: 'App options',
                iconTitle: Icons.settings,
                backgroundColor: context.backgroundSecondaryColor,
                titleColor: context.primaryContrastColor,
                iconTitleColor: context.primaryContrastColor,
                itemColor: context.primaryContrastColor,
                forwardColor: context.primaryContrastColor,
                items: [
                  ItemOption(
                    name: 'Rate on App Store', // ! put app store o play store
                    iconColor: Colors.amber,
                    imageResource: getFullPathAsset('start_icon_menu.png'),
                    onPressed: () {
                      // open some store
                    },
                  ),
          
                  ItemOption(
                    name: 'Share App',
                    iconColor: Colors.blueAccent,
                    imageResource: getFullPathAsset('share_icon_menu.png'),
                    onPressed: () {
                      // open some store
                    },
                  ),
          
                  ItemOption(
                    name: 'Send Feedback',
                    iconColor: Colors.greenAccent,
                    imageResource: getFullPathAsset('mail_icon_menu.png'),
                    onPressed: () {
                      // open some store
                    },
                  ),
                ],
              ),
          
              CardOptions(
                title: 'Connect',
                iconTitle: Icons.group,
                backgroundColor: context.backgroundSecondaryColor,
                titleColor: context.primaryContrastColor,
                iconTitleColor: context.primaryContrastColor,
                itemColor: context.primaryContrastColor,
                forwardColor: context.primaryContrastColor,
                items: [
                  ItemOption(
                    name: 'Join Space Creators',
                    iconColor: Colors.purpleAccent,
                    imageResource: getFullPathAsset('feedback_icon_menu.png'),
                    onPressed: () {
                      // open some store
                    },
                  ),
          
                  ItemOption(
                    name: 'Read on Medium',
                    iconColor: Colors.orangeAccent,
                    imageResource: getFullPathAsset('read_icon_menu.png'),
                    onPressed: () {
                      // open some store
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
