import 'package:flutter/material.dart';
import 'package:inherited_widget_tutorial/button_widget.dart';
import 'package:inherited_widget_tutorial/state_widget.dart';
import 'package:inherited_widget_tutorial/truc.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final counter = StateInheritedWidget.of(context);
    print( StateInheritedWidget.of(context).coreState.truc!.swag);
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 48),
              child: buildTextField(onSubmitted: setCounter),
            ),
            const SizedBox(height: 24),
            ButtonWidget(
              text: 'Update Counter',
              onClicked: () => (){},
            ),
            const SizedBox(height: 64),
            ButtonWidget(
              text: 'Increment Counter',
              onClicked: incrementCounter,
            ),
            const SizedBox(height: 64),
            ButtonWidget(
              text: 'Set Swag',
              onClicked: setSwag,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField({
    required ValueChanged<String> onSubmitted,
  }) =>
      TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        keyboardType: TextInputType.number,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: 'Counter',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white),
          ),
          hintStyle: TextStyle(color: Colors.white70),
        ),
      );

  void incrementCounter() {
    final provider = StateInheritedWidget.of(context);
    provider.incrementCounter();

    Navigator.pop(context);
  }

  void setSwag() {
    final provider = StateInheritedWidget.of(context);
    var truc = Truc.withName('Coucou');
    provider.setSwag(truc);

    Navigator.pop(context);
  }

  void setCounter(String value) {
    try {
      final counter = int.tryParse(value);
      final provider = StateInheritedWidget.of(context);
      // provider.setCounter(counter);

      Navigator.pop(context);
    } catch (e) {}
  }
}