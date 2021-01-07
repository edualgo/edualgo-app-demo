import 'package:edualgo_app_demo/core/colors.dart';
import 'package:edualgo_app_demo/presentation/widgets/SortingWidgets.dart';
import 'package:edualgo_app_demo/presentation/widgets/constants.dart';
import 'package:flutter/material.dart';

class SortingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SortingScreenState();
}

class SortingScreenState extends State<SortingScreen> {
  List<int> numbers;
  List<int> pointers = [];
  int n;
  String updateText, selectedAlgorithm = sortingAlgorithmsList[0].title;
  bool disableButtons = false, isSelectingDelay = false, isCancelled = false;
  double _delay = 2;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    numbers = new List<int>.generate(7, (i) => i + 3);
    n = numbers.length;
    shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        color: kThemeColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AppBar(
              centerTitle: true,
              title: Text('Sorting Algorithms'),
              backgroundColor: kThemeColor,
            ),
            SizedBox(
              height: 10,
            ),
            SoringAlgorithmsList(
              isDisabled: disableButtons,
              onTap: (selected) {
                selectedAlgorithm = selected;
              },
            ),
            ChartWidget(
              numbers: numbers,
              activeElements: pointers,
            ),
            BottomPointer(
              length: numbers.length,
              pointers: pointers,
            ),
            bottomButtons(),
          ],
        ),
      ),
    );
  }

  Widget bottomButtons() {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        InkWell(
          onTap: () {
            selectWhichSorting();
          },
          child: new Container(
            width: 150.0,
            height: 50.0,
            decoration: new BoxDecoration(
              color: Colors.green,
              border: new Border.all(color: Colors.white, width: 1.0),
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: new Center(
              child: new Text(
                'Sort',
                style: new TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          InkWell(
            onTap: () {
              setState(() {
                isCancelled = true;
              });
            },
            child: new Container(
              width: 100.0,
              height: 50.0,
              decoration: new BoxDecoration(
                color: Colors.redAccent,
                border: new Border.all(color: Colors.white, width: 2.0),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Center(
                child: new Text(
                  'Cancel',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              shuffle();
            },
            child: new Container(
              //width: 100.0,
              height: 50.0,
              width: 100,
              decoration: new BoxDecoration(
                color: Colors.orangeAccent,
                border: new Border.all(color: Colors.white, width: 1.0),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Center(
                child: new Text(
                  'Suffle',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ])
      ],
    );
  }

  void selectWhichSorting() {
    switch (selectedAlgorithm) {
      case bubbleSortTitle:
        bubbleSort();
        break;
      case selectionSortTitle:
        selectionSort();
        break;
      default:
        break;
    }
  }

  void shuffle() {
    setState(() {
      numbers.shuffle();
    });
  }

  void updatePointers(List<int> currentPointers) {
    setState(() {
      pointers = currentPointers;
    });
  }

  void finishedSorting() {
    setState(() {
      disableButtons = false;
    });
  }

  void cancelledSorting() {
    setState(() {
      updateText = 'Sorting Cancelled';
      disableButtons = false;
    });
  }

  void startSorting() {
    setState(() {
      isCancelled = false;
      disableButtons = true;
      isSelectingDelay = false;
    });
  }

  void swap(numbers, i, j) {
    int temp = numbers[i];
    numbers[i] = numbers[j];
    numbers[j] = temp;
  }

  //Bubble Sort
  void bubbleSort() async {
    startSorting();
    int i, step;
    for (step = 0; step < n; step++) {
      if (isCancelled) break;
      for (i = 0; i < n - step - 1; i++) {
        if (isCancelled) break;
        updatePointers([i, i + 1]);
        await Future.delayed(Duration(seconds: (_delay ~/ 2).toInt()));
        if (numbers[i] > numbers[i + 1]) {
          swap(numbers, i, i + 1);
        }
        await Future.delayed(Duration(seconds: (_delay ~/ 2).toInt()));
      }
    }
    isCancelled ? cancelledSorting() : finishedSorting();
  }

  //SelectionSort
  void selectionSort() async {
    startSorting();
    for (int i = 0; i < n - 1; i++) {
      if (isCancelled) break;

      int minIdx = i;

      for (int j = i + 1; j < n; j++) {
        if (isCancelled) break;

        await Future.delayed(Duration(milliseconds: 100));
        if (numbers[j] < numbers[minIdx]) minIdx = j;
      }
      updatePointers([minIdx, i]);

      await Future.delayed(Duration(milliseconds: 1000));
      swap(numbers, minIdx, i);
    }
    isCancelled ? cancelledSorting() : finishedSorting();
  }
}
