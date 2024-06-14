/*import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Contact'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ContactFormWidget(),
              // Add any additional contact information or content here
            ],
          ),
        ),
      ),
    );
  }
}

class ContactFormWidget extends StatelessWidget {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  ContactFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: 'name',
            decoration: const InputDecoration(labelText: 'Name'),
            validator: FormBuilderValidators.required(context),
          ),
          FormBuilderTextField(
            name: 'email',
            decoration: const InputDecoration(labelText: 'Email'),
            validator: FormBuilderValidators.email(context),
          ),
          FormBuilderTextField(
            name: 'message',
            decoration: const InputDecoration(labelText: 'Message'),
            validator: FormBuilderValidators.required(context),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.saveAndValidate()) {
                // Handle form submission
                var formData = _formKey.currentState!.value;
                // ignore: avoid_print
                print(formData);
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class FormBuilderValidators {
  static required(BuildContext context) {}
  
  static email(BuildContext context) {}
}*/
