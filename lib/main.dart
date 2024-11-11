import 'package:basic_satate/models/plan.dart';
import 'package:basic_satate/provider/plan_provider.dart';
import 'package:basic_satate/views/plan_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MasterPlanApp());

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