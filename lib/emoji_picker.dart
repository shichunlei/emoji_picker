library emoji_picker;

import 'package:flutter/material.dart';

import 'emoji_list_view.dart';

class EmojiPickerDialog extends StatefulWidget {
  const EmojiPickerDialog({super.key});

  @override
  createState() => _EmojiPickerDialogState();
}

class _EmojiPickerDialogState extends State<EmojiPickerDialog> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  child: Column(children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        child: Row(children: [
                          Expanded(
                              child: TabBar(
                                  controller: tabController,
                                  dividerColor: Colors.white,
                                  dividerHeight: kToolbarHeight,
                                  tabAlignment: TabAlignment.start,
                                  isScrollable: true,
                                  tabs: [
                                Tab(
                                    child: Image.asset("assets/images/normal.webp",
                                        width: 30, height: 30, package: "emoji_picker")),
                                Tab(
                                    child: Image.asset("assets/images/duck.webp",
                                        width: 30, height: 30, package: "emoji_picker")),
                                Tab(
                                    child: Image.asset("assets/images/fish.webp",
                                        width: 30, height: 30, package: "emoji_picker"))
                              ])),
                          const CloseButton()
                        ])),
                    const Divider(height: 0),
                    SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: TabBarView(controller: tabController, children: const [
                          EmojiListView(type: "normal"),
                          EmojiListView(type: "duck"),
                          EmojiListView(type: "fish")
                        ]))
                  ])))
        ]));
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
