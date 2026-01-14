import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:starving_shopping_flutter_app/config/theme/color_manager_extension.dart';
import 'package:starving_shopping_flutter_app/presentation/blocs/blocs.dart';
import 'package:starving_shopping_flutter_app/presentation/widget/widget.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  _getBottomButton(BuildContext context) {
    return SolidButton(
      labelButton: 'Add new item',
      colorButton: context.primaryContrastColor,
      textColor: context.primaryBackgroundColor,
      onTap: () {
        //! open bottomsheet
        context.read<GroceryBloc>().add(AddGrocery('new'));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroceryBloc, GroceryState>(
      builder: (context, state) {
        Widget middleWidget = const Center(child: CircularProgressIndicator());
        Widget? bottomWidget;

        switch (state) {
          case GroceryLoadedNotEmpty groceryLoadedNotEmpty:
            middleWidget = ItemsListMiddleScreen(
              groceryList: groceryLoadedNotEmpty.groceries,
            );
            bottomWidget = _getBottomButton(context);
            break;
          case GroceryLoadedEmpty():
            middleWidget = EmptyStateDynamic(
              nameSkeletonImage: 'items_screen_resource.png',
              descriptionText:
                  'Star by adding the groceries you\'ll need for the week, and be sure to select the items on this screen to move them to the Today\'s tab!',
              dynamicCardColor: context.backgroundSecondaryColor,
            );
            bottomWidget = bottomWidget = _getBottomButton(context);
            break;
          case GroceryError _:
            middleWidget = EmptyStateDynamic(
              nameSkeletonImage: 'items_screen_resource.png',
              descriptionText:
                  'Star by adding the groceries you\'ll need for the week, and be sure to select the items on this screen to move them to the Today\'s tab!',
              dynamicCardColor: context.backgroundSecondaryColor,
            );
            break;
          default:
            break;
        }

        return SkeletonDynamicContainer(
          containerColor: context.primaryBackgroundColor,
          topWidget: ParagraphCard(
            title: 'My groceries',
            description:
                'Never forget your weekly needs! Add groceries and select items to move them to the Todas\'s tab.',
            backgroundColor: context.primaryBackgroundColor,
            paragraphColor: context.primaryContrastColor,
          ),

          middleWidget: middleWidget,
          bottomWidget: bottomWidget,
        );
      },
    );
  }
}
