part of '../pages.dart';

class PlayForm extends StatefulWidget {
  const PlayForm({super.key});

  @override
  State<PlayForm> createState() => _PlayFormState();
}

class _PlayFormState extends State<PlayForm> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumController = TextEditingController();
  final _playKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    emailController.dispose();
    phoneNumController.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Download form"),
        ),
        body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Form(
            key: _playKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      labelText: "Username", prefixIcon: Icon(Icons.person)),
                  controller: usernameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().isEmpty
                        ? "Username cannot be empty"
                        : null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: "Email", prefixIcon: Icon(Icons.email)),
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? "Email not valid"
                        : null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      labelText: "Phone number", prefixIcon: Icon(Icons.phone)),
                  controller: phoneNumController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 12
                        ? "Phone number not valid"
                        : null;
                  },
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                    onPressed: () {
                      if (_playKey.currentState!.validate()) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Download confirmation"),
                                content: Text(
                                    "Username: ${usernameController.text.toString()}\nEmail: ${emailController.text.toString()}\nPhone number: ${phoneNumController.text.toString()}"),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text("OK"))
                                ],
                              );
                            });
                      } else {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Download failed!"),
                                content:
                                    const Text("Please fill all form fields!"),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text("OK"))
                                ],
                              );
                            });
                      }
                    },
                    child: const Text("Download now")),
              ],
            ),
          ),
        ));
  }
}

// if (_playKey.currentState!.validate()) {
    //   AlertDialog(
    //     title: const Text("Download confirmation"),
    //     content: const Text("Success"),
    //     actions: <Widget>[
    //       TextButton(
    //           onPressed: () => Navigator.pop(context, "OK"),
    //           child: const Text("OK"))
    //     ],
    //   );
    // } else {
    //   AlertDialog(
    //     title: const Text("Download failed!"),
    //     content: const Text("Please fill all form fields!"),
    //     actions: <Widget>[
    //       TextButton(
    //           onPressed: () => Navigator.pop(context, "OK"),
    //           child: const Text("OK"))
    //     ],
    //   );
    // }