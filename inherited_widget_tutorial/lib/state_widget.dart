import 'package:flutter/material.dart';
import 'package:inherited_widget_tutorial/core_state.dart';
import 'package:inherited_widget_tutorial/truc.dart';

class StateWidget extends StatefulWidget {
  final Widget child;

  const StateWidget({required this.child, Key? key}) : super(key: key);

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  CoreState coreState = CoreState();

  void incrementCounter() {
    final counter = coreState.counter + 1;
    final newState = coreState.copy(counter: counter);
    setState(() => {coreState = newState});
  }


  void setColor(Color backgoundColor) {
    final newState = coreState.copy(backgroundColor: backgoundColor);
    setState(() => {
      coreState = newState
    });
  }

  void setSwag(Truc truc) {
    final newState = coreState.copy(truc: truc);
    setState(() => {
       coreState = newState,
      print(coreState.truc!.swag)
    });
  }



  @override
  Widget build(BuildContext context) => StateInheritedWidget(
        child: widget.child,
        coreState: coreState, 
        stateWidget: this
    );
}

class StateInheritedWidget extends InheritedWidget {
  final CoreState coreState;
  final _StateWidgetState stateWidget;

  const StateInheritedWidget({
    Key? key,
    required Widget child,
    required this.coreState,
    required this.stateWidget
  }) : super(key: key, child: child);

  static _StateWidgetState of(BuildContext context) => context
        .dependOnInheritedWidgetOfExactType<StateInheritedWidget>()
        ?.stateWidget ?? _StateWidgetState();
  

  // retourne True si la valeur a été mise à jour et False sinon
  @override
  bool updateShouldNotify(covariant StateInheritedWidget oldWidget) {
    return oldWidget.coreState != coreState;
  }
}
