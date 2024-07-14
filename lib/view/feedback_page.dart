import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController _feedbackController = TextEditingController();
  int _rating = 0;

  void _submitFeedback() {
    String feedback = _feedbackController.text.trim();
    // Here you could submit the feedback and rating to your backend or process it further
    print('Feedback: $feedback');
    print('Rating: $_rating');

    // Show a feedback submission confirmation message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Feedback submitted!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your Feedback',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _feedbackController,
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'Enter your feedback here...',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Rate Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.star, color: _rating >= 1 ? Colors.orange : Colors.grey),
                    onPressed: () {
                      setState(() {
                        _rating = 1;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star, color: _rating >= 2 ? Colors.orange : Colors.grey),
                    onPressed: () {
                      setState(() {
                        _rating = 2;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star, color: _rating >= 3 ? Colors.orange : Colors.grey),
                    onPressed: () {
                      setState(() {
                        _rating = 3;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star, color: _rating >= 4 ? Colors.orange : Colors.grey),
                    onPressed: () {
                      setState(() {
                        _rating = 4;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star, color: _rating >= 5 ? Colors.orange : Colors.grey),
                    onPressed: () {
                      setState(() {
                        _rating = 5;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _submitFeedback,
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
