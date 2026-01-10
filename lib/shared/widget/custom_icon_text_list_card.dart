import 'package:flutter/material.dart';

class CustomIconTextListCard extends StatefulWidget {
  final Map<String, IconData> optionIcons;

  // card dimensions
  final double cardWidth;
  final double cardHeight;
  // colors and icons
  final Color activeColor;
  final Color inactiveColor;

  final int itemSelected;
  final ValueChanged<int>? onItemSelected;

  const CustomIconTextListCard({
    super.key,
    required this.optionIcons,
    required this.cardWidth,
    required this.cardHeight,
    required this.inactiveColor,
    required this.activeColor,
    required this.itemSelected,
    this.onItemSelected,
  });

  @override
  State<CustomIconTextListCard> createState() => _CustomIconTextListCardState();
}

class _CustomIconTextListCardState extends State<CustomIconTextListCard> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSelectedItem();
    });
  }

  @override
  void didUpdateWidget(covariant CustomIconTextListCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.itemSelected != widget.itemSelected) {
      _scrollToSelectedItem();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.cardHeight,
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(right: 0.0),
        itemCount: widget.optionIcons.length,
        separatorBuilder: (context, index) => const SizedBox(width: 4),
        itemBuilder: (context, index) {
          final currentColor =
              index == widget.itemSelected
                  ? widget.activeColor
                  : widget.inactiveColor;

          final currentIcon = widget.optionIcons.values.elementAt(index);
          final currentText = widget.optionIcons.keys.elementAt(index);

          return GestureDetector(
            onTap: () {
              widget.onItemSelected?.call(index);
            },
            child: SizedBox(
              width: widget.cardWidth,
              height: widget.cardHeight,
              child: Card(
                color: Colors.grey[900],
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: currentColor,
                      radius: 18,
                      child: Icon(currentIcon, color: Colors.black),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      currentText,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: currentColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _scrollToSelectedItem() {
    if (widget.itemSelected < 0 ||
        widget.itemSelected >= widget.optionIcons.length) {
      return;
    }

    // Calculate item selected position
    final double itemWidth = widget.cardWidth + 4; // card width + separator
    final double targetPosition = itemWidth * widget.itemSelected;

    // To center the selected item if is possible
    final double screenWidth = MediaQuery.of(context).size.width;
    final double centeredPosition =
        targetPosition - (screenWidth / 2) + (widget.cardWidth / 2);

    // make sure dont exceed scroll limits
    final double maxScroll = _scrollController.position.maxScrollExtent;
    final double finalPosition = centeredPosition.clamp(0.0, maxScroll);

    _scrollController.animateTo(
      finalPosition,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );
  }
}
