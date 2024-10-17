import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PilihGambar extends ChangeNotifier {
  bool _isImageLoaded = false;
  bool get isImageLoaded => _isImageLoaded;
  set setIsImageLoad(val) {
    _isImageLoaded = val;
    notifyListeners();
  }

  //Image Picker
  final ImagePicker _imagePicker = ImagePicker();

  XFile? _img;
  XFile? get img => _img;
  set setImg(val) {
    _img = val;
    notifyListeners();
  }

  pickImage(bool isGalleri) async {
    try {
      var res = await _imagePicker.pickImage(
          source: isGalleri == true ? ImageSource.gallery : ImageSource.camera);
      if (res != null) {
        setImg = res;
        setIsImageLoad = true;
      }
    } catch (e) {
      setIsImageLoad = false;
      print(e.toString());
    }
  }
}
