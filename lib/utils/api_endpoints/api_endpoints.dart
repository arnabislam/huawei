const String kDomain = "https://malaylotary.com";
const String basUrl = "$kDomain/api";
//Authentication EndPoints
const String kLoginUlr = "$basUrl/login";
String kUserDataUlr({required int userId}) => "$basUrl/user-data/$userId";

const String kLogoutUlr = "$basUrl/logout";

const String kMakeOrder = "$basUrl/order-place";
String kCancelOrder({required int orderId}) => "$basUrl/order-cancel/$orderId";
const String kGetAllOrders = "$basUrl/orders";
const String kGetAllAcceptedOder = "$basUrl/totalaccept";
const String kMakeOrder2 = "$basUrl/convert-data";
//winloss
const String kWinLoss = "$basUrl/get-history";
const String kGetWinNotice = "$basUrl/get_win_note";
