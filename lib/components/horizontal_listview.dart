import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Categories('assets/images/cats/tshirt.png', 'shirt'),
          Categories('assets/images/cats/shoe.png', 'shoe'),
          Categories('assets/images/cats/jeans.png', 'jeans'),
          Categories('assets/images/cats/informal.png', 'informal'),
          Categories('assets/images/cats/formal.png', 'formal'),
          Categories('assets/images/cats/dress.png', 'dress'),
          Categories('assets/images/cats/accessories.png', 'accessories'),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Categories(this.image_location, this.image_caption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: TextStyle(fontSize: 12.0),
                )),
          ),
        ),
      ),
    );
  }
}
