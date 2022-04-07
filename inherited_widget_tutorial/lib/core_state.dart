import 'package:flutter/material.dart';
import 'package:inherited_widget_tutorial/truc.dart';

class CoreState {
  final num counter;
  final Color backgroundColor;
  final Truc truc;

  CoreState() : t

  CoreState.copy(Truc? t, num? c, Color? bg) : 
  truc = t ?? Truc(), counter = c ?? 0, backgroundColor = bg ?? Colors.red;

  // CoreState copy({num? counter, Color? backgroundColor, Truc? truc}) => CoreState(
  //     counter: counter ?? this.counter,
  //     backgroundColor: backgroundColor ?? this.backgroundColor,
  //     truc: truc ?? this.truc);

  @override
  bool operator ==(Object other) {
    return (identical(this, other)) ||
        (other is CoreState &&
            runtimeType == other.runtimeType &&
            truc == other.truc.runtimeType &&
            counter == other.counter.runtimeType &&
            backgroundColor == other.backgroundColor.runtimeType);
  }

  @override
  int get hashCode => truc.hashCode;
}
