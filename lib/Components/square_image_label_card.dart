import 'package:flutter/material.dart';
import 'package:conscience/constants.dart';

class SquareImageLabelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(10),
        )),
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage(
                    'https://static.toiimg.com/thumb/msid-29505591,width=1200,height=900/29505591.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Maharashtra',
                style: kColoredBodyTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
