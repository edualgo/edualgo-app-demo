import 'package:edualgo_app_demo/presentation/widgets/code_snippet.dart';
import 'package:flutter/material.dart';

class CodeCard extends StatefulWidget {
  @override
  _CodeCardState createState() => _CodeCardState();
}

class _CodeCardState extends State<CodeCard> {
  String _exampleCode =
      "from edualgo import algorithms as al\n img_arr = [[1,0,3],[4,5,6],[7,8,9]] \n ping2 = al.matrices()\n ping2.setZeros(img_arr,3,3)";

  String _outCode = "Output: \n\n img_arr = [[0, 0, 0], [4, 0, 6], [7, 0, 9]]";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7532fc),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Python Code Example',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.black87,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                            fontFamily: 'monospace', fontSize: 17.0),
                        children: <TextSpan>[
                          CodeSnippet().format(_exampleCode),
                        ],
                      ),
                    )),
              ),
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 20.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.black87,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          fontFamily: 'monospace', fontSize: 18.0),
                      children: <TextSpan>[
                        CodeSnippet().format(_outCode),
                      ],
                    ),
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
