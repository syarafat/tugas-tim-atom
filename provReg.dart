import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class ProviderPendaftaranSatu extends ChangeNotifier {
  //Edit Profil

  // Deklarasikan Variabel
  TextEditingController _namaLengkap = TextEditingController();
  TextEditingController _nisn = TextEditingController();
  TextEditingController _tglLahir = TextEditingController();
  TextEditingController _alamat = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _notelp = TextEditingController();
  TextEditingController _agama = TextEditingController();
  TextEditingController _namaAyah = TextEditingController();
  TextEditingController _pekerjaanAyah = TextEditingController();
  TextEditingController _namaIbu = TextEditingController();
  TextEditingController _pekerjaanIbu = TextEditingController();
  TextEditingController _noHpOrtu = TextEditingController();

  //
  String? pilihJurusan;

  void setSelectedJurusan(String? value) {
    pilihJurusan = value;
    notifyListeners();
  }

  //Akun Siswa

  String _lastFourCharacters = '';
  String get lastFourCharacters => _lastFourCharacters;
  String _lastFourCharacters2 = '';
  String _lastFourCharacters3 = '';
  String get lastFourCharacters2 => _lastFourCharacters2;
  String get lastFourCharacters3 => _lastFourCharacters3;
  String _updateUsername = '';
  String get updateUsernameData => _updateUsername;
  String _password = '';
  String get password => _password;

  void updateUsername(String nisn) {
    if (nisn.length >= 4) {
      _updateUsername = nisn.substring(nisn.length - 4);
      _lastFourCharacters = _updateUsername + "@panyabungan.ac.id";
    } else {
      _updateUsername = "";
      _lastFourCharacters = "";
    }
  }

  void generatePassword(String nisn, String usrname) {
    if (nisn.length >= 4 && usrname.length >= 4) {
      _lastFourCharacters2 = nisn.substring(nisn.length - 4);
      _lastFourCharacters3 = usrname.substring(usrname.length - 4);
      _password = _lastFourCharacters2 + lastFourCharacters3;
    } else {
      _password = "";
      _lastFourCharacters2 = "";
      _lastFourCharacters3 = "";
    }
  }

  // Buat Getter untuk mendapatkan nilai variabel
  TextEditingController get namalengkapcontr => _namaLengkap;
  TextEditingController get nisncontr => _nisn;
  TextEditingController get tglLahircontr => _tglLahir;
  TextEditingController get alamatcontr => _alamat;
  TextEditingController get emailcontr => _email;
  TextEditingController get notelpcontr => _notelp;
  TextEditingController get agamacontr => _agama;
  TextEditingController get namaAyahcontr => _namaAyah;
  TextEditingController get pekerjaanAyahcontr => _pekerjaanAyah;
  TextEditingController get namaIbucontr => _namaIbu;
  TextEditingController get pekerjaanIbucontr => _pekerjaanIbu;
  TextEditingController get noHpOrtucontr => _noHpOrtu;

  //Cek apakah nilai nya kosong atau tidak
  bool _isNamaLengkap = false;
  bool _isNisn = false;
  bool _isTglLahir = false;
  bool _isAlamat = false;
  bool _isEmail = false;
  bool _isNoTelp = false;
  bool _isAgama = false;
  bool _isNamaAyah = false;
  bool _isPekAyah = false;
  bool _isNamaIbu = false;
  bool _isPekIbu = false;
  bool _isNoHpOrtu = false;

  bool get isNamaLengkap => _isNamaLengkap;
  bool get isNisn => _isNisn;
  bool get isTglLahir => _isTglLahir;
  bool get isAlamat => _isAlamat;
  bool get isEmail => _isEmail;
  bool get isNoTelp => _isNoTelp;
  bool get isAgama => _isAgama;
  bool get isNamaAyah => _isNamaAyah;
  bool get isPekAyah => _isPekAyah;
  bool get isNamaIbu => _isNamaIbu;
  bool get isPekIbu => _isPekIbu;
  bool get isNoHpOrtu => _isNoHpOrtu;

  //Login
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  TextEditingController get usernamecontroller => _usernamecontroller;
  TextEditingController get passcontroller => _passwordcontroller;

  bool _isUsernameVisible = false;
  bool _isPasswordVisible = false;

  bool get isUsername => _isUsernameVisible;
  bool get isPass => _isPasswordVisible;

  set Setname(val) {
    _isUsernameVisible = val;
    notifyListeners();
  }

  set Setpass(val) {
    _isPasswordVisible = val;
    notifyListeners();
  }

  //Buat Setter untuk mengubah nilai
  set SetnamaLengkap(val) {
    _isNamaLengkap = val;
    notifyListeners();
  }

  set Setnisn(val) {
    _isNisn = val;
    notifyListeners();
  }

  set setTglLahir(val) {
    _isTglLahir = val;
    notifyListeners();
  }

  set SetAlamat(val) {
    _isAlamat = val;
    notifyListeners();
  }

  set SetEmail(val) {
    _isEmail = val;
    notifyListeners();
  }

  set SetNoTelp(val) {
    _isNoTelp = val;
    notifyListeners();
  }

  set SetAgama(val) {
    _isAgama = val;
    notifyListeners();
  }

  set SetNamaAyah(val) {
    _isNamaAyah = val;
    notifyListeners();
  }

  set SetPekAyah(val) {
    _isPekAyah = val;
    notifyListeners();
  }

  set SetNamaIbu(val) {
    _isNamaIbu = val;
    notifyListeners();
  }

  set SetPekIbu(val) {
    _isPekIbu = val;
    notifyListeners();
  }

  set SetNoHpOrtu(val) {
    _isNoHpOrtu = val;
    notifyListeners();
  }

  // Gambar
  Uint8List? _imageData;

  Uint8List? get imageData => _imageData;

  void setImageData(Uint8List? data) {
    _imageData = data;
    notifyListeners();
  }

  Future<void> getImage(ProviderPendaftaranSatu provider) async {
    final html.FileUploadInputElement input = html.FileUploadInputElement();
    input.accept = 'image/*';
    input.click();

    await input.onChange.first;

    if (input.files != null && input.files!.isNotEmpty) {
      final reader = html.FileReader();
      reader.readAsDataUrl(input.files![0]);
      await reader.onLoad.first;

      final imageString = reader.result as String;
      final List<String> base64Data = imageString.split(',');
      final byteData = base64Data.length > 1
          ? base64Decode(base64Data[1])
          : Uint8List.fromList([]);

      provider.setImageData(byteData);
    }
  }

  void resetForm() {
    _namaLengkap.clear();
    _nisn.clear();
    _tglLahir.clear();
    _alamat.clear();
    _email.clear();
    _notelp.clear();
    _agama.clear();
    _namaAyah.clear();
    _pekerjaanAyah.clear();
    _namaIbu.clear();
    _pekerjaanIbu.clear();
    _noHpOrtu.clear();
    pilihJurusan = null;
    _imageData = null;

    _isNamaLengkap = false;
    _isNisn = false;
    _isTglLahir = false;
    _isAlamat = false;
    _isEmail = false;
    _isNoTelp = false;
    _isAgama = false;
    _isNamaAyah = false;
    _isPekAyah = false;
    _isNamaIbu = false;
    _isPekIbu = false;
    _isNoHpOrtu = false;

    _isUsernameVisible = false;
    _isPasswordVisible = false;

    notifyListeners();
  }
}
