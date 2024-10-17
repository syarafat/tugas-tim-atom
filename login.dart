import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas/siswa/bottom/bottom.dart';
import 'package:uas/siswa/register/provReg.dart';
import 'package:uas/siswa/register/register1.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showError = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ProviderPendaftaranSatu>(context);

    String nisn = prov.nisncontr.text;
    String usrname = prov.namalengkapcontr.text;
    prov.updateUsername(nisn);
    prov.generatePassword(nisn, usrname);

    void startLoading() {
      setState(() {
        isLoading = true;
      });

      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          isLoading = false;
        });

        navigateToBottom() {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => Bottom()));
        }

        navigateToBottom(); // Panggil fungsi navigateToBottom di sini
      });
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              TextField(
                controller: prov.usernamecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  errorText: prov.isUsername ? "Nama Tidak Boleh Kosong" : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextField(
                  controller: prov.passcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    errorText:
                        prov.isPass ? "Password Tidak Boleh Kosong" : null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            prov.Setname = prov.usernamecontroller.text.isEmpty;
                            prov.Setpass = prov.passcontroller.text.isEmpty;

                            if (!prov.isUsername && !prov.isPass) {
                              if (prov.usernamecontroller.text ==
                                      prov.lastFourCharacters &&
                                  prov.passcontroller.text == prov.password) {
                                startLoading(); // Panggil fungsi startLoading di sini
                              } else {
                                setState(() {
                                  showError = true;
                                });
                              }
                            }
                          },
                    child: isLoading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2,
                            ),
                          )
                        : Text(
                            "Masuk",
                            style: TextStyle(fontSize: 20),
                          ),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(200, 60)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 0, 160, 83),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Ingin Mendaftar?",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => RegisterSatu()));
                          },
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (showError)
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Username atau password tidak valid",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
