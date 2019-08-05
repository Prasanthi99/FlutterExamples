class User{
  int id;
  String  name;
  String userName;
  User({this.id,this.name,this.userName}); 

  User.initial():id = 0,name='',userName='';
  User.fromJson(Map<String,dynamic> json){
    this.id = json['id'];
    this.name = json['name'];
    this.userName = json['userName'];
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['userName']=this.userName;
    return data;
  }
  
}
