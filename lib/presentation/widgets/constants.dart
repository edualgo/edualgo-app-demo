import 'package:flutter/material.dart';
import 'modals.dart';

const Color primaryDark = Colors.teal;
const Color accent = Color(0xffffffff);
const Color activeData = Colors.redAccent;

//AlgorithmTitles
const String bubbleSortTitle = 'Bubble Sort';
const String selectionSortTitle = 'Selection Sort';

//Algorithms
final List<SortingAlgorithm> sortingAlgorithmsList = [
  SortingAlgorithm(
    title: selectionSortTitle,
  ),
  SortingAlgorithm(
    title: bubbleSortTitle,
  ),
];
