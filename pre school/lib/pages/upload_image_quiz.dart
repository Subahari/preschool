import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageQuiz extends StatefulWidget {
  const UploadImageQuiz({Key key}) : super(key: key);

  @override
  State<UploadImageQuiz> createState() => _UploadImageQuizState();
}

class _UploadImageQuizState extends State<UploadImageQuiz> {
  final _formKey = GlobalKey<FormState>();

  int optionsCount = 1;

  TextEditingController quizTypeController = TextEditingController();
  TextEditingController questionNoController = TextEditingController();
  TextEditingController questionController = TextEditingController();
  TextEditingController answerController = TextEditingController();
  TextEditingController correctAnswerController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  XFile image;

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Quiz Type'),
                ),
                controller: quizTypeController,
                validator: validator,
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Question No'),
                ),
                validator: validator,
                controller: questionNoController,
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Question'),
                ),
                validator: validator,
                controller: questionController,
                textInputAction: TextInputAction.next,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Question Image',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        ElevatedButton(
                            child: Text(image == null ? 'UPLOAD' : 'CHANGE'),
                            onPressed: () async {
                              try {
                                final img = await _picker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() => image = img);
                              } catch (e) {
                                print(e);
                              }
                            })
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    // height: width * 0.5,
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: image == null
                          ? Center(
                              child: Icon(FontAwesome.file_image_o, size: 40))
                          : Image.file(File(image.path)),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              // title: Text('Answer'),
              title: TextFormField(
                decoration: InputDecoration(
                    label: Text('Answer'),
                    helperText: 'Separate answers by comma (,)'),
                validator: validator,
                controller: answerController,
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Correct Answer'),
                ),
                validator: validator,
                controller: correctAnswerController,
              ),
            ),

            // Align(
            //   alignment: Alignment.centerRight,
            //   child: ElevatedButton.icon(
            //     icon: Icon(Icons.add),
            //     label: Text("Add Answer"),
            //     onPressed: () => setState(() => optionsCount++),
            //   ),
            // ),
            // ListView.builder(
            //   itemCount: optionsCount,
            //   shrinkWrap: true,
            //   itemBuilder: (BuildContext context, int index) {
            //     return ListTile(
            //       contentPadding: const EdgeInsets.symmetric(vertical: 8),
            //       title: Text('Option ${index+1}'),
            //       subtitle: TextFormField(
            //         decoration: InputDecoration(
            //           label: Text('Question'),
            //         ),
            //       ),
            //     );
            //   },
            // ),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: SizedBox(
          height: 46,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: StadiumBorder()),
            child: Text('SUBMIT'),
            onPressed: () {
              final quizType = quizTypeController.text;
              final questionNo = questionNoController.text;
              final question = questionController.text;
              final _answer = answerController.text;
              final correctAnswer = correctAnswerController.text;
              final imagePath = image?.path;
              final answers = _answer.split(",");

              if (image == null) {
                showMessage('Warning', 'Please upload an image');
              } else {
                if (_formKey.currentState.validate()) {
                  print(quizType);
                  print(questionNo);
                  print(question);
                  print(correctAnswer);
                  print(imagePath);
                  print(answers);
                  showMessage('Success', 'Record has been made');
                  setState(() {
                    quizTypeController.text = "";
                    questionNoController.text = "";
                    questionController.text = "";
                    answerController.text = "";
                    correctAnswerController.text = "";
                    image = null;
                  });
                } else {
                  print('this is not a validate form');
                }
              }
              //  TODO:
              //save in your database here
            },
          ),
        ),
      ),
    );
  }

  Future showMessage(String title, String message) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('$title'),
        content: Text('$message'),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }

  String validator(String value) {
    if (value.isNotEmpty) {
      return null;
    } else {
      return 'This field can\'t be empty';
    }
  }
}
