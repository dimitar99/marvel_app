import 'package:flutter/material.dart';
import 'package:marvel_app/constants/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: _body(size),
      ),
    );
  }

  Column _body(Size size){
    return Column(
      children: [
        _comics(size),
      ],
    );
  }

  _comics(Size size){
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16),
            child: Text('Comics', style: sectionsTitle),
          ),
          Container(
            color: Colors.green,
            width: size.width,
            height: size.height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
                  height: size.height * 0.2,
                  width: size.width * 0.3,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

}
