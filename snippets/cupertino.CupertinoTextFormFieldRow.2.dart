import 'package:flutter/cupertino.dart';

void main() => runApp(const FormSectionApp());

class FormSectionApp extends StatelessWidget {
  const FormSectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: FromSectionExample(),
    );
  }
}

class FromSectionExample extends StatelessWidget {
  const FromSectionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoFormSection Sample'),
      ),
      // Add safe area widget to place the CupertinoFormSection below the navigation bar.
      child: SafeArea(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          onChanged: () {
            Form.of(primaryFocus!.context!)?.save();
          },
          child: CupertinoFormSection.insetGrouped(
            header: const Text('SECTION 1'),
            children: List<Widget>.generate(5, (int index) {
              return CupertinoTextFormFieldRow(
                prefix: const Text('Enter text'),
                placeholder: 'Enter text',
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value';
                  }
                  return null;
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}
