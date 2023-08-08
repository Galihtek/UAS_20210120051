import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          // top: true,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/fifani-cahyadi-R78_-Kxsa7o-unsplash.jpg',
                  width: 1000,
                  height: 1000,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.05, -0.95),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 28),
                      child: Text(
                        'Markicabs Travel',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors
                              .red, // Ganti ini dengan warna yang diinginkan
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: DefaultTabController(
                      length: 2,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: TabBar(
                              labelColor:
                                  Colors.blue, // Warna label yang dipilih
                              unselectedLabelColor: Colors
                                  .green, // Warna label yang tidak dipilih
                              labelPadding: EdgeInsets.only(top: 200),
                              labelStyle: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 30,
                              ),
                              indicatorColor: Colors
                                  .red, // Warna garis indikator di bawah tab yang dipilih
                              tabs: [
                                Tab(
                                  text: 'Login',
                                ),
                                Tab(
                                  text: 'Daftar',
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 8, right: 8, bottom: 30),
                                      child: TextFormField(
                                        // controller: _model.textController1,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Username',
                                          labelStyle: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors
                                                .blue, // Ganti dengan warna yang Anda inginkan
                                            fontSize: 25,
                                          ),
                                          hintStyle: TextStyle(
                                            fontFamily:
                                                'Readex Pro', // Ganti dengan font yang sesuai
                                            color: Colors
                                                .grey, // Ganti dengan warna yang Anda inginkan
                                            fontSize:
                                                16, // Ganti dengan ukuran font yang sesuai
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF010408),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .blue, // Ganti dengan warna yang Anda inginkan
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .red, // Ganti dengan warna yang Anda inginkan
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .red, // Ganti dengan warna yang Anda inginkan
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400),
                                        // validator: _model.textController1Validator.asValidator(context),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 8, right: 8),
                                      child: TextFormField(
                                        // controller: _model.textController2,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          labelStyle: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors
                                                .red, // Ganti dengan warna yang Anda inginkan
                                            fontSize: 25,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF010305),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .blue, // Ganti dengan warna yang Anda inginkan
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .red, // Ganti dengan warna yang Anda inginkan
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .red, // Ganti dengan warna yang Anda inginkan
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400),
                                        // validator: _model.textController2Validator.asValidator(context),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0, 0),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 0, top: 20, right: 0),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamed('/dashboard');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.all(
                                                20), // Atur padding untuk memperbesar tombol
                                            textStyle: TextStyle(
                                                fontSize:
                                                    20), // Atur ukuran teks di dalam tombol
                                          ),
                                          child: Text('Sign in'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Tab View 2',
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 32,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
