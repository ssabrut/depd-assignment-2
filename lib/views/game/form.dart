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
  final cityController = TextEditingController();
  final _playKey = GlobalKey<FormState>();
  bool isVisible = true;

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    emailController.dispose();
    phoneNumController.dispose();
    cityController.dispose();
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
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: "Email", prefixIcon: Icon(Icons.email)),
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? "Email tidak valid"
                        : null;
                  },
                )
              ],
            ),
          ),
        ));
  }
}
