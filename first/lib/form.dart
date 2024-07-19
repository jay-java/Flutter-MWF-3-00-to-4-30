import 'package:flutter/material.dart';
class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var contactController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyForm'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: contactController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Enter Contact",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2
                        )
                    ),
                    // prefixText: "Enter email",
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.orange,
                      ),
                      onPressed: (){

                      },
                    )
                ),
              ),
              Container(height: 12,),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2
                        )
                    ),
                    // prefixText: "Enter email",
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      onPressed: (){

                      },
                    )
                ),
              ),
              Container(height: 12,),
              TextField(
                controller: passController,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2
                        )
                    ),
                    // prefixText: "Enter password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ),
                      onPressed: (){

                      },
                    )
                ),
              ),
              Container(height: 12,),
              ElevatedButton(onPressed: (){

                String contact=  contactController.text.toString();
                String email = emailController.text.toString();
                String pass = passController.text.toString();
                print('contact : $contact email : $email pass : $pass');
              }, child: Text('Register',style: TextStyle(fontSize: 20),),
              ),
              Container(height: 12,),
              RichText(text: TextSpan(
                  style: TextStyle(fontSize: 15,color: Colors.orange.shade600),
                  children: [
                    TextSpan(text: 'If already have an Account ? '),
                    TextSpan(text: 'Click Here',style: TextStyle(fontSize: 20,color: Colors.blue)),
                    TextSpan(text: ' to Login')
                  ]
              ))
            ],
          ),
        ),
      ),
    );
  }
}
