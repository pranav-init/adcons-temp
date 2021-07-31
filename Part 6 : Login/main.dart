import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatefulWidget {
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  var isLogin = true;

  var userTypeSelected = false;
  var advertiserSelected = false;
  String userType = "null";

  var advButtonColor = Colors.black;
  var cusButtonColor = Colors.black;

  String type = "Customer";
  String error = "";
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String username = "";
  var loadr = false;
  String category = "TV";
  String rate1 = "";
  String rate2 = "";
  String rate3 = "";

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: isLogin
          ? Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                // Color(0xffBCD1E6),
                // Color(0xFFF3CEBB),
                Color(0xFFA6C3E0),
                Color(0xFFEBB9A0)
              ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1,
                            Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                            1.3,
                            Text(
                              "Sign in to continue using the services of Adcons.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              FadeAnimation(
                                  1.4,
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  225, 95, 27, .3),
                                              blurRadius: 20,
                                              offset: Offset(0, 10))
                                        ]),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color:
                                                          Colors.grey[200]))),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText:
                                                    "Email or Phone number",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color:
                                                          Colors.grey[200]))),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "Password",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              FadeAnimation(
                                1.5,
                                GestureDetector(
                                  onTap: () {
                                    print("Tapped the Forgot Password text.");
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FadeAnimation(
                                1.6,
                                GestureDetector(
                                  onTap: () {
                                    print("Tapped the Login Button.");
                                  },
                                  child: Container(
                                    height: 50,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 50),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xFF5aa4ed)),
                                    child: Center(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FadeAnimation(
                                1.7,
                                GestureDetector(
                                  onTap: () {
                                    print("Tapped the sign up button.");
                                    setState(() {
                                      isLogin = false;
                                    });
                                  },
                                  child: Text(
                                    "New User? Tap to Sign Up.",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          : FadeAnimation(
              1,

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        colors: [Color(0xFFA6C3E0), Color(0xFFEBB9A0)])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                              1,
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                              1.3,
                              Text(
                                "Welcome to Adcons!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60))),
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 50.0),
                            child: Form(
                                key: _formKey,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 10),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: RTFBoxDecoration(),
                                      child: TextFormField(
                                        validator: (val) => val.isEmpty
                                            ? 'Please enter a valid username.'
                                            : null,
                                        onChanged: (val) {
                                          setState(() => username = val);
                                        },
                                        decoration: RTFInputDecoration(
                                            'Pick a username.'),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: RTFBoxDecoration(),
                                      child: TextFormField(
                                          validator: (val) => val.isEmpty
                                              ? 'Enter a valid e-mail, such as sk@microsoft.com.'
                                              : null,
                                          onChanged: (val) {
                                            setState(() => email = val);
                                          },
                                          decoration: RTFInputDecoration(
                                              'Enter your e-mail address.')),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: RTFBoxDecoration(),
                                      child: TextFormField(
                                        obscureText: true,
                                        validator: (val) => val.length < 6
                                            ? 'Enter a password 6+ chars long'
                                            : null,
                                        onChanged: (val) {
                                          setState(() => password = val);
                                        },
                                        decoration: RTFInputDecoration(
                                            'Choose a password.'),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                            child: Text(
                                          "Choose a User Category.",
                                          style: TextStyle(color: Colors.grey),
                                        )),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: DropdownButton<String>(
                                            value: type,
                                            icon: const Icon(
                                                Icons.arrow_downward),
                                            iconSize: 24,
                                            elevation: 16,
                                            style: const TextStyle(
                                                color: Colors.grey),
                                            underline: Container(
                                              height: 2,
                                              width: 1,
                                              color: Colors.deepPurpleAccent,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                type = newValue;
                                              });
                                            },
                                            items: <String>[
                                              'Customer',
                                              'Advertiser'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    type == 'Advertiser'
                                        ? (catad())
                                        : SizedBox(),
                                    type == "Advertiser" && category == "TV"
                                        ? tvad()
                                        : ((type == "Advertiser")
                                            ? remad()
                                            : SizedBox()),
                                    SizedBox(height: 20.0),
                                    RaisedButton(
                                        color: Colors.pink[400],
                                        child: Text(
                                          'Sign In',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          if (_formKey.currentState
                                              .validate()) {
                                            setState(() {
                                              loadr = true;
                                            });
                                          }
                                        }),
                                    SizedBox(height: 12.0),
                                    Text(
                                      error,
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 14.0),
                                    ),
                                  ],
                                )),
                          ),
                        ), //container bracket HERE
                      ),
                    ), //container' bracket is now here
                  ],
                ),
              ), //this is the container's bracket
            ),
    );
  }

  Widget catad() {
    return FadeAnimation(
      0.8,
      Row(
        children: <Widget>[
          Expanded(
              child: Text(
            "Choose your medium of advertising.",
            style: TextStyle(color: Colors.grey),
          )),
          Expanded(
            child: DropdownButton<String>(
              value: category,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  category = newValue;
                });
              },
              items: <String>['TV', 'Instagram', 'YouTube', 'Newspaper']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget tvad() {
    return FadeAnimation(
      1.5,
      Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: RTFBoxDecoration(),
            child: TextFormField(
                // obscureText: true,
                validator: (val) => val.isEmpty
                    ? 'Please enter a valid value for price.'
                    : null,
                onChanged: (val) {
                  setState(() => rate1 = val);
                },
                decoration: RTFInputDecoration('High TRP Pricing')),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: RTFBoxDecoration(),
            child: TextFormField(
                // obscureText: true,
                validator: (val) => val.isEmpty
                    ? 'Please enter a valid value for price.'
                    : null,
                onChanged: (val) {
                  setState(() => rate2 = val);
                },
                decoration: RTFInputDecoration('Medium TRP Pricing')),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: RTFBoxDecoration(),
            child: TextFormField(
                // obscureText: true,
                validator: (val) => val.isEmpty
                    ? 'Please enter a valid value for price.'
                    : null,
                onChanged: (val) {
                  setState(() => rate3 = val);
                },
                decoration: RTFInputDecoration('Low TRP Pricing')),
          ),
        ],
      ),
    );
  }

  Widget remad() {
    return FadeAnimation(
      0.8,
      Container(
        padding: EdgeInsets.all(10),
        decoration: RTFBoxDecoration(),
        child: TextFormField(
            obscureText: true,
            validator: (val) =>
                val.isEmpty ? 'Please enter a valid value for price.' : null,
            onChanged: (val) {
              setState(() => rate1 = val);
            },
            decoration: RTFInputDecoration('Enter your base price.')),
      ),
    );
  }

  InputDecoration RTFInputDecoration(String inhint) {
    return InputDecoration(
        hintText: inhint,
        hintStyle: TextStyle(color: Colors.grey),
        border: InputBorder.none);
  }

  BoxDecoration RTFBoxDecoration() {
    return BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200])));
  }
}

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
          Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(0, animation["translateY"]), child: child),
      ),
    );
  }
}
