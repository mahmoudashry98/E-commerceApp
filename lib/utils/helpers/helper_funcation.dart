import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AppHelperFunctions {
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static Color? getColor(String value) {
  // Define your product specific colors here and it will match the attribute colors and show specific
  if (value == 'Green') {
    return Colors.green;
  } else if (value == 'Red') {
    return Colors.red;
  } else if (value == 'Blue') {
    return Colors.blue;
  } else if (value == 'Pink') {
    return Colors.pink;
  } else if (value == 'Grey') {
    return Colors.grey;
  } else if (value == 'Purple') {
    return Colors.purple;
  } else if (value == 'Black') {
    return Colors.black;
  } else if (value == 'White') {
    return Colors.white;
  } else if (value == 'Yellow') {
    return Colors.yellow;
  } else if (value == 'Orange') {
    return Colors.deepOrange;
  } else if (value == 'Brown') {
    return Colors.brown;
  } else if (value == 'Teal') {
    return Colors.teal;
  } else if (value == 'Indigo') {
    return Colors.indigo;
  } else {
    return null;
  }
}


  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return text.substring(0, maxLength);
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  /// Wrap a list of widgets into multiple rows of a specified size.
  ///
  /// The list of widgets will be divided into rows of the specified size.
  /// The last row will only contain the remaining widgets if the number of
  /// widgets is not divisible by the row size.
  ///
  /// [widgets] The list of widgets to be wrapped.
  /// [rowSize] The number of widgets each row should contain.
  ///
  /// Returns a list of widgets where each element is a Row widget containing
  /// widgets from the original list.
  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize) {
    // Split the list of widgets into rows of the specified size.
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i++) {
      // Get the widgets for the current row.
      final rowChildren = widgets.sublist(
          i, rowSize > widgets.length ? widgets.length : i + rowSize);

      // Add the current row to the wrapped list.
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
