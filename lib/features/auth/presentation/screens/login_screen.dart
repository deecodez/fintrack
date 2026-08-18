import 'package:fintrack/lib.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Login Screen',

      centerTitle: true,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                'Welcome Back Dayo!',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Text(
                'Email',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 5),
              AppTextFormField(
                controller: _emailController,
                hintText: 'Enter your email',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: (value) => AppValidators.email(value),
              ),
              SizedBox(height: 20),
              Text(
                'Password',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 5),
              AppTextFormField(
                controller: _passwordController,
                hintText: 'Enter your password',
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                validator: (value) => AppValidators.password(value),

                suffix: Icon(Icons.visibility, color: AppColors.secondary),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Forget Password?',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              AppButton(
                text: 'Login',
                isOffline: true,
                // isOffline:
                //     _emailController.text.isNotEmpty &&
                //     _passwordController.text.isNotEmpty,
                onPressed: () {},
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  context.pushNamed(RouteNames.register);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Don't have an account?, Register",

                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
