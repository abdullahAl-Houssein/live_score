class timeClass {
  int id;
  String hours;

  timeClass({this.id, this.hours});

  timeClass.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    hours = json['hours'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['hours'] = this.hours;
    return data;
  }
}