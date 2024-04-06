library tuldokator;

import 'package:flutter/material.dart';

class Tuldokator extends StatefulWidget {
  const Tuldokator({
    super.key,
    required this.itemCount,
    required this.controller,
  });

  final int itemCount;
  final TuldokatorController controller;

  @override
  State<Tuldokator> createState() => _TuldokatorState();
}

class _TuldokatorState extends State<Tuldokator> {
  final _pageController = PageController(viewportFraction: 1 / 5);
  final scrollController = ScrollController();
  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() => _selectedPage = widget.controller.value);
      final hasPosition = _pageController.positions.isNotEmpty;
      if (hasPosition) {
        _pageController.animateToPage(
          widget.controller.value,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 10,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: widget.itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final isSelected = index == _selectedPage;
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 2.5),
            padding: EdgeInsets.all(isSelected ? 0 : 1),
            child: CircleAvatar(
              backgroundColor:
                  isSelected ? Colors.black : Colors.grey.withOpacity(.5),
            ),
          );
        },
      ),
    );
  }
}

class TuldokatorController extends ValueNotifier<int> {
  TuldokatorController({this.initialValue = 0}) : super(initialValue);
  int initialValue;
  void toIndex(int index) {
    value = index;
    notifyListeners();
  }
}
