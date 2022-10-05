import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:flutter_application_1/widgets/rounded_input.dart';

import '../widgets/submit_button.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _homeAppBar(),
      body: _buildBody(context),
    );
  }

  _homeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: const [
              Text(
                'Create Event',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Text(
            'Save',
            style: TextStyle(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }

  _buildBody(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _infoCard(context),
          _settingsCard(context),
          SubmitButton(
            text: 'Publish',
          ),
        ],
      ),
    );
  }

  _infoCard(context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Text(
              'Basic Information',
              style: MyStyles().cardTitle,
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Name of the event',
                  labelText: 'Title',
                  labelStyle: MyStyles().sectionTitle),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Brief Describtion',
                  labelText: 'Subtitle',
                  labelStyle: MyStyles().sectionTitle),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Category', labelStyle: MyStyles().sectionTitle),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Who is hosting this event',
                  labelText: 'Hosted By',
                  labelStyle: MyStyles().sectionTitle),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Description',
              style: MyStyles().sectionTitle,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                RoundedInput(
                    width: MediaQuery.of(context).size.width,
                    minLines: 3,
                    hint: ''),
              ],
            )
          ],
        ),
      ),
    );
  }

  _settingsCard(context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Text(
              'Settings',
              style: MyStyles().cardTitle,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Price',
              style: MyStyles().sectionTitle,
            ),
            Row(
              children: [
                Radio(
                  groupValue: 2,
                  value: 2,
                  onChanged: (value) => (print('zeppi')),
                ),
                const Text('Free'),
                const SizedBox(
                  width: 16,
                ),
                Radio(
                  groupValue: 2,
                  value: 2,
                  onChanged: (value) => (print('zeppi')),
                ),
                const Text('Paid'),
                const SizedBox(
                  width: 16,
                ),
                const RoundedInput(width: 100, hint: ' \$'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Date & Time',
              style: MyStyles().sectionTitle,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const RoundedInput(width: 180, hint: ''),
                const SizedBox(
                  width: 64,
                ),
                const RoundedInput(width: 100, hint: ''),
                Text(
                  '  —  ',
                  style: MyStyles().cardTitle,
                ),
                const RoundedInput(width: 100, hint: ''),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Platform',
              style: MyStyles().sectionTitle,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                RoundedInput(
                    width: MediaQuery.of(context).size.width, hint: ''),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Upload Image/Video',
              style: MyStyles().sectionTitle,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                RoundedInput(
                    width: MediaQuery.of(context).size.width,
                    hint: 'Enter link or select an image/video'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
