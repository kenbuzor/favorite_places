import 'dart:io';

import 'package:favorite_places/widgets/image_input.dart';
import 'package:favorite_places/widgets/location_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/providers/places.dart';

class AddNewPlaceScreen extends ConsumerStatefulWidget {
  const AddNewPlaceScreen({super.key});

  @override
  ConsumerState<AddNewPlaceScreen> createState() => _AddNewPlaceScreenState();
}

class _AddNewPlaceScreenState extends ConsumerState<AddNewPlaceScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  File? _selectedImage;
  PlaceLocation? _selectedLocation;

  void _addImage(File image) {
    _selectedImage = image;
  }

  void _addPlace() {
    if (!_formKey.currentState!.validate()) return;

    if (_selectedImage == null || _selectedLocation == null) return;

    ref
        .read(placesProvider.notifier)
        .addPlace(
          Place(
            title: _title,
            image: _selectedImage!,
            location: _selectedLocation!,
          ),
        );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add new Place')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(label: Text('Title')),
                style: const TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null ||
                      value.trim().length <= 1 ||
                      value.trim().length > 50) {
                    return 'Must be between 2 and 50 characters';
                  }
                  setState(() {
                    _title = value;
                  });
                  return null;
                },
              ),
              const SizedBox(height: 10),
              ImageInput(setImage: _addImage),
              const SizedBox(height: 16.0),
              LocationInput(
                onSelectLocation: (location) {
                  _selectedLocation = location;
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: _addPlace,
                label: const Text('Add Place'),
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
