import 'package:flutter/cupertino.dart';

Widget htrendView(String url, double width) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius for rounded corners
      child: Image.network(
        url,
        fit: BoxFit.cover,
        width: width / 3, // Assuming width is defined or passed as a parameter
      ),
    ),
  );
}
Widget audiobookView(String url, String name) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100), // Optional: Add border radius for rounded corners
          child: Image.network(
            url,
            fit: BoxFit.fill,
            height: 150,
            width: 150,// Assuming width is defined or passed as a parameter
          ),
        ),
      ),
      Flexible(child: Text(name, style: const TextStyle(fontSize: 20),softWrap: true,))
    ],
  );
}