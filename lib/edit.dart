import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:cv/values.dart';


class EditScreen extends StatefulWidget {
  final Function(Map<String, dynamic>) updateValue;
  final Map<String, dynamic> currentValue;

  EditScreen({required this.updateValue, required this.currentValue});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {

  late Map<String, dynamic> _editedValue;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController _name;

  late TextEditingController _github;

  late TextEditingController _slack;

  late TextEditingController _bio;


  



  @override
  void initState() { 
    super.initState();
    _editedValue = Map.from(widget.currentValue);
    _bio = TextEditingController(text: _editedValue['bio']);
    _name = TextEditingController(text: _editedValue['name']);
    _github = TextEditingController(text: _editedValue['github']);
    _slack =TextEditingController(text: _editedValue['slack']);
  }

   @override
  void dispose() {
    _name.dispose();
    _bio.dispose();
    _slack.dispose();
    _github.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Edit"),
        centerTitle: false,
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name", 
                style: TextStyle(
                  color: Colors.grey[50], 
                  fontSize: 18, 
                  fontWeight: FontWeight.w600
                ),
                ), 
                SizedBox(
                  height: 6,
                ),
              TextFormField(
                controller: _name,
                autofocus: true,
                decoration: InputDecoration(
                  filled: true, 
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade50, 
                      width: 3
                    ), 
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade50, 
                      width: 3
                    ), 
                  ), 
                ),
                style: TextStyle(
                  color: Colors.grey[50]
                ),
              ), 
              SizedBox(
                height: 10,
              ),
              Text(
                "Github username", 
                style: TextStyle(
                  color: Colors.grey[50], 
                  fontSize: 18, 
                  fontWeight: FontWeight.w600
                ),
                ), 
                SizedBox(
                  height: 6,
                ),
              TextFormField(
                controller: _github,
                autofocus: true,
                decoration: InputDecoration(
                  filled: true, 
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade50, 
                      width: 3
                    ), 
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade50, 
                      width: 3
                    ), 
                  ), 
                ),
                style: TextStyle(
                  color: Colors.grey[50]
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Slack username", 
                style: TextStyle(
                  color: Colors.grey[50], 
                  fontSize: 18, 
                  fontWeight: FontWeight.w600
                ),
                ), 
                SizedBox(
                  height: 6,
                ),
              TextFormField(
                controller: _slack,
                autofocus: true,
                decoration: InputDecoration(
                  filled: true, 
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade50, 
                      width: 3
                    ), 
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade50, 
                      width: 3
                    ), 
                  ), 
                ),
                style: TextStyle(
                  color: Colors.grey[50]
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Bio", 
                style: TextStyle(
                  color: Colors.grey[50], 
                  fontSize: 18, 
                  fontWeight: FontWeight.w600
                ),
                ), 
                SizedBox(
                  height: 6,
                ),
              TextFormField(
                controller: _bio,
                autofocus: true,
                decoration: InputDecoration(
                  filled: true, 
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade50, 
                      width: 3
                    ), 
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade50, 
                      width: 3
                    ), 
                  ), 
                ),
                maxLines: 5,
                style: TextStyle(
                  color: Colors.grey[50]
                ),
              ), 
              SizedBox(
                height: 14,
              ),
              TextButton(
                onPressed: (){
                  _editedValue['bio'] = _bio.text;
                  _editedValue['name'] = _name.text;
                  _editedValue['github'] = _github.text;
                  _editedValue['slack'] = _slack.text;
                  widget.updateValue(_editedValue);
                Navigator.pop(context);
                }, 
                child: Text(
                  "Update", 
                  style: TextStyle(
                    color: Colors.grey.shade900,
                  ),
                  ), 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey.shade50), 
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 36, vertical: 15))
                ),
                )
            ] 
          ),
        )
      )
    );
  }
}