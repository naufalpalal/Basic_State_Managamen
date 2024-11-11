import 'package:flutter/material.dart';
import '../models/data_layer.dart'; // Gantilah dengan path yang sesuai
import '../provider/plan_provider.dart'; // Gantilah dengan path yang sesuai
import 'plan_screen.dart'; // Pastikan path ke PlanScreen sesuai

void main() {
  runApp(
    PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: const MasterPlanApp(),
    ),
  );
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const PlanCreatorScreen(),
    );
  }
}

class PlanCreatorScreen extends StatelessWidget {
  const PlanCreatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>([]),
      child: const PlanScreen(plan: Plan(name: 'My Plan', tasks: [])),
    );
  }
}
