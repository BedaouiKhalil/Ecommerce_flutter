class AppLink {
  static const String server = "http://10.0.2.2/course/flutter/wael/ecommerce";

  static const String test = "$server/test.php";

  static const String imageststatic =
      "http://10.0.2.2/course/flutter/wael/ecommerce/upload";
  //========================== Image ============================
  static const String imagestCategories = "$imageststatic/categories";
  static const String imagestItems = "$imageststatic/items";
  // =============================================================

  // ================================= Auth ========================== //
  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifyCodeSignup = "$server/auth/verfiyCode.php";
  static const String resend = "$server/auth/resend.php";

  // ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetPassword/checkEmail.php";
  static const String resetPassword =
      "$server/forgetPassword/resetPassword.php";
  static const String verifyCodeForgetPassword =
      "$server/forgetPassword/verifyCode.php";

  // Home
  static const String homepage = "$server/home.php";
  // items
  static const String items = "$server/items/items.php";
  static const String searchitems = "$server/items/search.php";

  // Favorite
  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String deletefromfavroite = "$server/favorite/deleteFromFavroite.php";

  // Cart 
  static const String cartview   = "$server/cart/view.php";
  static const String cartadd    = "$server/cart/add.php";
  static const String cartdelete = "$server/cart/delete.php";
  static const String cartgetcountitems = "$server/cart/getCountItems.php";
}
