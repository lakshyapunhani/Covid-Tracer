
import 'package:aadhaartracer/model/AadhaarParseModel.dart';

class AadhaarOuter
{
  String version;
  String encoding;
  AadhaarParseModel printLetterBarcodeData;

  AadhaarOuter(
      {this.version,
        this.encoding,
        this.printLetterBarcodeData});

  AadhaarOuter.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    printLetterBarcodeData =
    json['PrintLetterBarcodeData'] != null ? new AadhaarParseModel.fromJson(json['PrintLetterBarcodeData']) : null;
    encoding = json['encoding'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    if (this.printLetterBarcodeData != null) {
      data['PrintLetterBarcodeData'] = this.printLetterBarcodeData.toJson();
    }
    data['encoding'] = this.encoding;
    return data;
  }

}