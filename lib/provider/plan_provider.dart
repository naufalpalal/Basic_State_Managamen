import 'package:flutter/material.dart';
import '../models/data_layer.dart';

class PlanProvider extends InheritedWidget {
  final ValueNotifier<List<Plan>> notifier;

  const PlanProvider({
    Key? key,
    required this.notifier,
    required Widget child,
  }) : super(key: key, child: child);

  static ValueNotifier<List<Plan>> of(BuildContext context) {
    final PlanProvider? result = context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    assert(result != null, 'No PlanProvider found in context');
    return result!.notifier;
  }

  @override
  bool updateShouldNotify(PlanProvider oldWidget) {
    return notifier != oldWidget.notifier;
  }
}