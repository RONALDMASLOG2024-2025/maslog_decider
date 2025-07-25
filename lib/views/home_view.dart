import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decider App"),
        backgroundColor: Colors.pinkAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.shopping_bag, color: Colors.green),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.history, color: Colors.blue),
          ),
        ],
      ),
      body: _codeForBody()
    );
  }

  Widget _codeForBody(){
    return SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text("Decision Left: ##"),
              ),
              Spacer(),
              _buildQuestionForm(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text("Account Type: Free"),
              ),
            ], //Children
          ),
        ),
      );
  }

  Widget _buildQuestionForm() {
    return Column(
      children: [
        Text("Should I ", style: Theme.of(context).textTheme.headlineLarge),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
          child: TextField(
            decoration: InputDecoration(
              helper: Text("Enter a Question")
            ),
          )
        ),

        ElevatedButton(
          onPressed: (){
            print("Clicked");
          },
         child: Text("Ask")
        )
      ],//Children
    );
  }
}
