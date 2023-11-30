import 'package:flutter/material.dart';

class statuswidget extends StatelessWidget {
  const statuswidget({
    required this.name,
    required this.image,
    required this.msg,
    super.key,
  });
  final String image;
  final String msg;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkRipple.splashFactory,
      onTap: () {},
      child: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: 75, // Adjust the total width including the border
                height: 75, // Adjust the total height including the border
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                      3.0), // Adjust the padding for the space
                  child: ClipOval(
                    child: Image.network(
                      image,
                      width: 65, // Adjust the width as needed
                      height: 65, // Adjust the height as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 5),
                            child: Text(
                              name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7, left: 5),
                            child: Text(
                              msg,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 0.3,
                      child: Container(
                        color: Color.fromARGB(
                            255, 100, 100, 100), // Set your desired color here
                        // Add any child widgets here if needed
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
