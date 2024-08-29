import 'package:hos/Presentations/Rigestars/core/Api/endPoinnts.dart';

class Errormodel{
  final bool status;
  final String errormessage;
  Errormodel({required this.status,required this.errormessage});

  factory Errormodel.fromJson(Map<String, dynamic> jsonData) {
    return Errormodel(
      status : jsonData[ApiKey.status],
     errormessage : jsonData[ApiKey.message],
    );
  }
}