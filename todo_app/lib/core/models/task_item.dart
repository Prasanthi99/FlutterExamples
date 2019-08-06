class TaskItem {
  String title;
  String description;

  TaskItem({this.title,this.description});

  TaskItem.fromJson(Map<dynamic,String> json){
    this.title = json['title'];
    this.description = json['description'];
  }

  Map<dynamic,String> toJson(){
    final json = new Map<dynamic,String>();
    json['title'] = this.title;
    json['description']=this.description;
    return json;
  }

}


