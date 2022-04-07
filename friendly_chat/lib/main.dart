import 'package:flutter/material.dart';

void main() {
  runApp(const FriendlyChatApp());
}

String _name = 'Yann';

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FriendlyChat',
      home: ChatScreen(),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final AnimationController animationController;

  const ChatMessage(
      {required this.text, required this.animationController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(parent: animationController, curve: Curves.easeOut),
      axisAlignment: 0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: CircleAvatar(child: Text(_name[0])),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _name,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Container(
                  child: Text(text),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final _textController = TextEditingController();
  final List<ChatMessage> _messages = [];
  final FocusNode _focusNode = FocusNode();

  void _handleSubmitted(String text) {
    _textController.clear();
    var message = ChatMessage(
        text: text,
        animationController: AnimationController(
            duration: const Duration(milliseconds: 700), vsync: this));

    setState(() {
      _messages.insert(0, message);
    });
    _focusNode.requestFocus();
    message.animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FriendlyChat')),
      body: Column(
        children: [
          Flexible(
              child: ListView.builder(
            reverse: true,
            padding: EdgeInsets.all(8),
            itemBuilder: ((context, index) => _messages[index]),
            itemCount: _messages.length,
          )),
          const Divider(),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Flexible(
                  child: TextField(
                focusNode: _focusNode,
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    const InputDecoration.collapsed(hintText: 'Send a message'),
              )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () => _handleSubmitted(_textController.text)),
              )
            ],
          )),
    );
  }

  void dispose() {
    for (var message in _messages) {
      message.animationController.dispose();
    }
    super.dispose();
  }
}
