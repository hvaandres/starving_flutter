import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starving_shopping_flutter_app/config/theme/color_manager_extension.dart';
import 'package:starving_shopping_flutter_app/presentation/provider/grocery_provider.dart';
import 'package:starving_shopping_flutter_app/presentation/widget/widget.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class ItemsScreen extends ConsumerStatefulWidget {
  const ItemsScreen({super.key});

  @override
  ItemsScreenState createState() => ItemsScreenState();
}

class ItemsScreenState extends ConsumerState<ItemsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    loadGroceries();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final groceriesList = ref.watch(groceryProvider);

    return SkeletonDynamicContainer(
      containerColor: context.primaryBackgroundColor,
      topWidget: ParagraphCard(
        title: 'My groceries',
        description:
            'Never forget your weekly needs! Add groceries and select items to move them to the Todas\'s tab.',
        backgroundColor: context.primaryBackgroundColor,
        paragraphColor: context.primaryContrastColor,
      ),
      middleWidget:
          groceriesList.isNotEmpty
              ? ItemsListMiddleScreen(groceryList: groceriesList)
              : EmptyStateDynamic(
                nameSkeletonImage: 'items_screen_resource.png',
                descriptionText:
                    'Star by adding the groceries you\'ll need for the week, and be sure to select the items on this screen to move them to the Today\'s tab!',
                dynamicCardColor: context.backgroundSecondaryColor,
              ),
      bottomWidget: SolidButton(
        labelButton: 'Add new item',
        colorButton: context.primaryContrastColor,
        textColor: context.primaryBackgroundColor,
        onTap: () {
          //! open bottomsheet
          ref.watch(groceryProvider.notifier).registerCard(nameGrocery: 'new');
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  void loadGroceries() async {
    ref.read(groceryProvider.notifier).getGroceries();
  }
}
