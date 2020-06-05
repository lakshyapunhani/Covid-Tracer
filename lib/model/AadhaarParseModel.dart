class AadhaarParseModel{
  final String uid;
  final String name;
  final String gender;
  final String yob;
  final String co;
  final String house;
  final String street;
  final String lm;
  final String loc;
  final String vtc;
  final String po;
  final String dist;
  final String subdist;
  final String state;
  final String pc;
  final String dob;

  AadhaarParseModel(this.uid, this.name,this.gender,this.yob,this.co,
      this.house,this.street,this.lm,this.loc,this.vtc,this.po,
      this.dist,this.subdist,this.state,this.pc,this.dob);

  AadhaarParseModel.fromJson(Map<String, dynamic> json):
        uid = json['uid'],
        name = json['name'],
        gender = json['gender'],
        yob = json['yob'],
        co = json['co'],
        house = json['house'],
        street = json['street'],
        lm = json['lm'],
        loc = json['loc'],
        vtc = json['vtc'],
        po = json['po'],
        dist = json['dist'],
        subdist = json['subdist'],
        state = json['state'],
        pc = json['pc'],
        dob = json['dob']
  ;

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'name': name,
    'gender':gender,
    'yob':yob,
    'co':co,
    'house':house,
    'street':street,
    'lm':lm,
    'loc':loc,
    'vtc':vtc,
    'po':po,
    'dist':dist,
    'subdist':subdist,
    'state':state,
    'pc':pc,
    'dob':dob
  };
}