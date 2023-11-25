import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Container(
        height: 46,
        decoration: BoxDecoration(
          border: Border.all(color: Constants.borderColor, width: 1.5),
          color: Constants.backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image.asset('assets/images/search.png'),
              const SizedBox(
                height: 8,
                width: 8,
              ),
              Expanded(
                child: TextField(
                  // textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontFamily: 'Shabnam',
                  ),
                  decoration: InputDecoration(
                      hintText: 'جستوجو ...',
                      hintStyle: TextStyle(
                          fontFamily: 'Shabnam',
                          color: Constants.numberverifytextfieldColor),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
