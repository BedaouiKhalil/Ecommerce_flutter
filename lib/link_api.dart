class AppLink {
  static const String server = "http://10.0.2.2/course/flutter/wael/ecommerce";

  static const String test = "$server/test.php";

static const String imageststatic = "http://10.0.2.2/course/flutter/wael/ecommerce/upload";
//========================== Image ============================ 
static const String imagestCategories = "$imageststatic/categories"; 
static const String imagestItems = "$imageststatic/items"; 
// =============================================================

  // ================================= Auth ========================== //
  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifyCodeSignup = "$server/auth/verfiyCode.php";

  // ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetPassword/checkEmail.php";
  static const String resetPassword =
      "$server/forgetPassword/resetPassword.php";
  static const String verifyCodeForgetPassword =
      "$server/forgetPassword/verifyCode.php";

  // Home

  static const String homepage = "$server/home.php";
}
