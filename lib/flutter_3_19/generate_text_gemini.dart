import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:youtube_channel_content/endpoints.dart';

class GeminiResponse extends StatefulWidget {
  const GeminiResponse({super.key});

  @override
  State<GeminiResponse> createState() => _GeminiResponseState();
}

class _GeminiResponseState extends State<GeminiResponse> {
  static const apiKey = EndPoints.apiKey;

  Future<String> getResponseFromGemini() async {
    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);

    const prompt = 'What is flutter?';
    final content = [Content.text(prompt)];
    final response = await model.generateContent(content);

    return response.text!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gemini Response"),
      ),
      body: FutureBuilder(
          future: getResponseFromGemini(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Center(
                    child: Text(
                      snapshot.data!,
                    ),
                  ),
                ),
              );
            } else {
              return const Center(
                child: Text("There is an error"),
              );
            }
          }),
    );
  }
}
