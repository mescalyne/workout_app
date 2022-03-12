class TaskDto {
  int? id;
  int? order;
  String? orderPrefix;

  TaskDto({this.id, this.order, this.orderPrefix});

  TaskDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    order = json['order'];
    orderPrefix = json['order_prefix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['order'] = order;
    data['order_prefix'] = orderPrefix;
    return data;
  }

  @override
  String toString() {
    return id.toString()+' '+order.toString()+'  '+orderPrefix.toString();
  }
}

class GroupTaskDto{
  int order;
  List<TaskDto> tasks;

  GroupTaskDto({required this.order,required this.tasks});

}