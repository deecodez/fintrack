import 'package:fintrack/lib.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _fullNameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Register Screen',

      centerTitle: true,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                'Create Account',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Text(
                'Full Name',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 5),
              AppTextFormField(
                controller: _fullNameController,
                hintText: 'John Doe',
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                validator: (value) => AppValidators.name(value),
              ),
              SizedBox(height: 20),
              Text(
                'Full Name',
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
              SizedBox(height: 20),
              Text(
                'Confirm Password',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 5),
              AppTextFormField(
                controller: _confirmPasswordController,
                hintText: 'Enter your password',
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                validator: (value) => AppValidators.confirmPassword(
                  value,
                  _passwordController.text,
                ),

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
                text: 'Register',
                isOffline: true,
                // isOffline:
                //     _emailController.text.isNotEmpty &&
                //     _passwordController.text.isNotEmpty,
                onPressed: () {
                  // print('onpress');
                },
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  context.go(RouteNames.login);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Already a user?, Login",

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
