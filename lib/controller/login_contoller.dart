abstract class LoginController extends GetxController {
  login();
  goToSignUp();
}
class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {}
  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }