class EmojiEntity {
  int id;
  String path;
  String type;

  EmojiEntity({required this.id, required this.path, required this.type});

  factory EmojiEntity.fromJson(Map<String, dynamic> json) =>
      EmojiEntity(id: (json['id'] as num).toInt(), path: json['path'] as String, type: json['type'] as String);

  Map<String, dynamic> toJson() => <String, dynamic>{'id': id, 'path': path, 'type': type};

  static List<EmojiEntity> getEmoji(String type) {
    List<Map<String, dynamic>> normal = [
      {"id": 1, "path": "1.webp", "type": "normal"},
      {"id": 2, "path": "2.webp", "type": "normal"},
      {"id": 3, "path": "3.webp", "type": "normal"},
      {"id": 4, "path": "4.webp", "type": "normal"},
      {"id": 5, "path": "5.webp", "type": "normal"},
      {"id": 6, "path": "6.webp", "type": "normal"},
      {"id": 7, "path": "7.webp", "type": "normal"},
      {"id": 8, "path": "8.webp", "type": "normal"},
      {"id": 9, "path": "9.webp", "type": "normal"},
      {"id": 10, "path": "10.webp", "type": "normal"},
      {"id": 11, "path": "11.webp", "type": "normal"},
      {"id": 12, "path": "12.webp", "type": "normal"},
      {"id": 13, "path": "13.webp", "type": "normal"},
      {"id": 14, "path": "14.webp", "type": "normal"},
      {"id": 15, "path": "15.webp", "type": "normal"},
      {"id": 16, "path": "16.webp", "type": "normal"},
      {"id": 17, "path": "17.webp", "type": "normal"},
      {"id": 18, "path": "18.webp", "type": "normal"},
      {"id": 19, "path": "19.webp", "type": "normal"},
      {"id": 20, "path": "20.webp", "type": "normal"},
      {"id": 21, "path": "21.webp", "type": "normal"},
      {"id": 22, "path": "22.webp", "type": "normal"},
      {"id": 23, "path": "23.webp", "type": "normal"},
      {"id": 24, "path": "24.webp", "type": "normal"},
      {"id": 25, "path": "25.webp", "type": "normal"},
      {"id": 26, "path": "26.webp", "type": "normal"},
      {"id": 27, "path": "27.webp", "type": "normal"},
      {"id": 28, "path": "28.webp", "type": "normal"},
      {"id": 29, "path": "29.webp", "type": "normal"},
      {"id": 30, "path": "30.webp", "type": "normal"},
      {"id": 31, "path": "31.webp", "type": "normal"},
      {"id": 32, "path": "32.webp", "type": "normal"},
      {"id": 33, "path": "33.webp", "type": "normal"},
      {"id": 34, "path": "34.webp", "type": "normal"},
      {"id": 35, "path": "35.webp", "type": "normal"},
      {"id": 36, "path": "36.webp", "type": "normal"},
      {"id": 37, "path": "37.webp", "type": "normal"},
      {"id": 38, "path": "38.webp", "type": "normal"},
      {"id": 39, "path": "39.webp", "type": "normal"},
      {"id": 40, "path": "40.webp", "type": "normal"},
      {"id": 41, "path": "41.webp", "type": "normal"},
      {"id": 42, "path": "42.webp", "type": "normal"},
      {"id": 43, "path": "43.webp", "type": "normal"},
      {"id": 44, "path": "44.webp", "type": "normal"},
      {"id": 45, "path": "45.webp", "type": "normal"},
      {"id": 46, "path": "46.webp", "type": "normal"},
      {"id": 47, "path": "47.webp", "type": "normal"},
      {"id": 48, "path": "48.webp", "type": "normal"},
      {"id": 49, "path": "49.webp", "type": "normal"},
      {"id": 50, "path": "50.webp", "type": "normal"},
      {"id": 51, "path": "51.webp", "type": "normal"},
      {"id": 52, "path": "52.webp", "type": "normal"},
      {"id": 53, "path": "53.webp", "type": "normal"},
      {"id": 54, "path": "54.webp", "type": "normal"},
      {"id": 55, "path": "55.webp", "type": "normal"},
      {"id": 56, "path": "56.webp", "type": "normal"},
      {"id": 57, "path": "57.webp", "type": "normal"},
      {"id": 58, "path": "58.webp", "type": "normal"},
      {"id": 59, "path": "59.webp", "type": "normal"},
      {"id": 60, "path": "60.webp", "type": "normal"},
      {"id": 61, "path": "61.webp", "type": "normal"},
      {"id": 62, "path": "62.webp", "type": "normal"},
      {"id": 63, "path": "63.webp", "type": "normal"},
      {"id": 64, "path": "64.webp", "type": "normal"},
      {"id": 65, "path": "65.webp", "type": "normal"},
      {"id": 66, "path": "66.webp", "type": "normal"},
      {"id": 67, "path": "67.webp", "type": "normal"},
      {"id": 68, "path": "68.webp", "type": "normal"},
      {"id": 69, "path": "69.webp", "type": "normal"},
      {"id": 70, "path": "70.webp", "type": "normal"},
      {"id": 71, "path": "71.webp", "type": "normal"},
      {"id": 72, "path": "72.webp", "type": "normal"},
      {"id": 73, "path": "73.webp", "type": "normal"},
      {"id": 74, "path": "74.webp", "type": "normal"},
      {"id": 75, "path": "75.webp", "type": "normal"},
      {"id": 76, "path": "76.webp", "type": "normal"},
      {"id": 77, "path": "77.webp", "type": "normal"},
      {"id": 78, "path": "78.webp", "type": "normal"},
      {"id": 79, "path": "79.webp", "type": "normal"},
      {"id": 80, "path": "80.webp", "type": "normal"}
    ];

    List<Map<String, dynamic>> duck = [
      {"id": 101, "path": "duck1.gif", "type": "duck"},
      {"id": 102, "path": "duck2.gif", "type": "duck"},
      {"id": 103, "path": "duck3.gif", "type": "duck"},
      {"id": 104, "path": "duck4.gif", "type": "duck"},
      {"id": 105, "path": "duck5.gif", "type": "duck"},
      {"id": 106, "path": "duck6.gif", "type": "duck"},
      {"id": 107, "path": "duck7.gif", "type": "duck"},
      {"id": 108, "path": "duck8.gif", "type": "duck"},
      {"id": 109, "path": "duck9.gif", "type": "duck"},
      {"id": 110, "path": "duck10.gif", "type": "duck"},
      {"id": 111, "path": "duck11.gif", "type": "duck"},
      {"id": 112, "path": "duck12.gif", "type": "duck"},
      {"id": 113, "path": "duck13.gif", "type": "duck"},
      {"id": 114, "path": "duck14.gif", "type": "duck"},
      {"id": 115, "path": "duck15.gif", "type": "duck"},
      {"id": 116, "path": "duck16.gif", "type": "duck"},
      {"id": 117, "path": "duck17.gif", "type": "duck"},
      {"id": 118, "path": "duck18.gif", "type": "duck"},
      {"id": 119, "path": "duck19.gif", "type": "duck"},
      {"id": 120, "path": "duck20.gif", "type": "duck"},
      {"id": 121, "path": "duck21.gif", "type": "duck"}
    ];

    List<Map<String, dynamic>> fish = [
      {"id": 201, "path": "fish1.gif", "type": "fish"},
      {"id": 202, "path": "fish2.gif", "type": "fish"},
      {"id": 203, "path": "fish3.gif", "type": "fish"},
      {"id": 204, "path": "fish4.gif", "type": "fish"},
      {"id": 205, "path": "fish5.gif", "type": "fish"},
      {"id": 206, "path": "fish6.gif", "type": "fish"},
      {"id": 207, "path": "fish7.gif", "type": "fish"},
      {"id": 208, "path": "fish8.gif", "type": "fish"},
      {"id": 209, "path": "fish9.gif", "type": "fish"},
      {"id": 210, "path": "fish10.gif", "type": "fish"},
      {"id": 211, "path": "fish11.gif", "type": "fish"},
      {"id": 212, "path": "fish12.gif", "type": "fish"},
      {"id": 213, "path": "fish13.gif", "type": "fish"},
      {"id": 214, "path": "fish14.gif", "type": "fish"},
      {"id": 215, "path": "fish15.gif", "type": "fish"},
      {"id": 216, "path": "fish16.gif", "type": "fish"},
      {"id": 217, "path": "fish17.gif", "type": "fish"},
      {"id": 218, "path": "fish18.gif", "type": "fish"},
      {"id": 219, "path": "fish19.gif", "type": "fish"}
    ];

    if (type == "normal") return normal.map((item) => EmojiEntity.fromJson(item)).toList();
    if (type == "fish") return fish.map((item) => EmojiEntity.fromJson(item)).toList();
    if (type == "duck") return duck.map((item) => EmojiEntity.fromJson(item)).toList();
    return [...normal, ...fish, ...duck].map((item) => EmojiEntity.fromJson(item)).toList();
  }
}
