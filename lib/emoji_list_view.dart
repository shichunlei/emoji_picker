import 'package:flutter/material.dart';

import 'emoji_entity.dart';

class EmojiListView extends StatefulWidget {
  final String type;

  const EmojiListView({super.key, required this.type});

  @override
  createState() => _EmojiListViewState();
}

class _EmojiListViewState extends State<EmojiListView> with AutomaticKeepAliveClientMixin {
  List<EmojiEntity> list = [];

  @override
  void initState() {
    list = EmojiEntity.getEmoji(widget.type);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Material(
        color: Colors.white,
        child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 11),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: widget.type == "normal" ? 8 : 5, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(list[index]);
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Image.asset("assets/emoji_${list[index].type}/${list[index].path}", package: "emoji_picker"));
            },
            itemCount: list.length));
  }

  @override
  bool get wantKeepAlive => true;
}
