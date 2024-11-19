part of '../style.dart';

class DecorationContainer {
  final white20radius = BoxDecoration(boxShadow: const [
    BoxShadow(
        color: Colors.grey,
        spreadRadius: -5,
        blurRadius: 8,
        offset: Offset(1, 4))
  ], color: theme.color.white, borderRadius: BorderRadius.circular(20));
}
