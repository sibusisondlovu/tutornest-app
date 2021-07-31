import 'package:flutter/material.dart';

class LearnerPostQuestionScreen extends StatefulWidget {
  @override
  _LearnerPostQuestionScreenState createState() => _LearnerPostQuestionScreenState();
}

class _LearnerPostQuestionScreenState extends State<LearnerPostQuestionScreen> {

  var grades = ['Grade 8', 'Grade 9', 'Grade 10', 'Grade 11', 'Grade 12'];
  String gradeValue = 'Grade 8';
  var getBandSubjects = ['EMS', 'MLMMS', 'Technology', 'Life Sciences'];
  String getSubjectsValues = 'EMS';
  var fetBandSubjects = ['Mathematics', 'Physical Science', 'Business Studies', 'Tourism'];
  String fetSubjectsValue = 'Mathematics';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post a question'),
      ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Text('To get help from tutors, fill in the details below'),
              SizedBox(height: 30,),
              Text('Select your grade'),
              DropdownButton(
                value: gradeValue,
                items: grades.map((String items) {
                return DropdownMenuItem(
                    value: items,
                    child: Text(items)
                );
              }
              ).toList(),
                onChanged: (String newValue){
                  setState(() {
                    gradeValue = newValue;
                  });
                },),
              SizedBox(height: 30,),
              Text('Select your subject'),
              gradeValue == 'Grade 8' || gradeValue == 'Grade 9'?
              DropdownButton(
                value: getSubjectsValues,
                items: getBandSubjects.map((String items) {
                  return DropdownMenuItem(
                      value: items,
                      child: Text(items)
                  );
                }
                ).toList(),
                onChanged: (String newValue){
                  setState(() {
                    getSubjectsValues = newValue;
                  });
                },) :
              DropdownButton(
                value: fetSubjectsValue,
                items: fetBandSubjects.map((String items) {
                  return DropdownMenuItem(
                      value: items,
                      child: Text(items)
                  );
                }
                ).toList(),
                onChanged: (String newValue){
                  setState(() {
                    fetSubjectsValue = newValue;
                  });
                },),
              SizedBox(height: 30,),
              Text('Type your learning area'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(labelText: 'e.g Trigonometry'),
                ),
              ),
              SizedBox(height: 30,),
              Text('Type your question or send a screenshot'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Type your question here or take a screenshot',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt),
                    ),),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () async {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return Colors.cyan; // Use the component's default.
                      },
                    ),
                  ),
                  child: Text('Submit Question')),
            ],
          ),
        ));
  }
}

