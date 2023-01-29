import 'package:flutter/material.dart';




Widget colorBtn(context, backColor, text, textColor, onPressed, isBold) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: 46,
      decoration: BoxDecoration(
          color: backColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      ),
    ),
  );
}

Widget backButton(arrowColor, onPressed) {
  return Padding(
    padding: const EdgeInsets.only(left: 30,top: 30),
    child: InkWell(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.black26,),
        child: Center(
          child: Icon(
            Icons.arrow_back,
            color: arrowColor,
          ),
        ),
      ),
    ),
  );
}
