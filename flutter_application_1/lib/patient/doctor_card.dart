
import 'package:flutter/material.dart';
import 'detail.dart';


class DoctorCard extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;
  var _bgColor;

  DoctorCard(this._name, this._description, this._imageUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(),
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
           boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(137, 201, 203, 100),
                          blurRadius: 5,
                          spreadRadius: .8,
                          offset: Offset(0, 2),
                        ),
                      ],
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.all(3),
          child: ListTile(
            leading: Image.asset(_imageUrl),

            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                _name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                _description,
                style: TextStyle(
                  color:Colors.black.withOpacity(0.9),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}