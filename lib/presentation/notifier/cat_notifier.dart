import 'package:dependency_injection_lab/data/repositories/cat_repository.dart';
import 'package:dependency_injection_lab/domain/models/cat_image.dart';
import 'package:flutter/material.dart';

class CatNotifier extends ChangeNotifier {
  CatImage? _image;
  CatImage? get image => _image;

  final CatRepository _repository;

  CatNotifier(this._repository);

  void getCatImage() async {
    _image = await _repository.getCatImage();
    notifyListeners();
  }
}
