import 'package:flutter/material.dart';

class ChatBotScreen extends StatelessWidget {
  const ChatBotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MediPanda ChatBot',
          style: TextStyle(color: Color(0xFF203c8c)), // Updated text color
        ),
        backgroundColor: Color(0xFF203c8c), // Updated app bar color
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Chatbot will analyze the reports and provide suggestions.',
                style: TextStyle(color: Color(0xFF203c8c)), // Updated text color
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ask your question...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Handle sending the message
                  },
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
