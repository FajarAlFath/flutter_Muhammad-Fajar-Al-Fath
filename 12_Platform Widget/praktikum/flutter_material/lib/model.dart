class Model{
  final String name;
  final String message;
  final String time;
  final String url;

  Model({required this.name,required this.message,required this.time,required this.url});
}

final List<Model> items =[
  Model(name: 'Valerin',message: 'Hello can we meet?', time: '10:39',url: 'https://s3.amazonaws.com/uifaces/faces/twitter/jarjan/128.jpg'),
  Model(name: 'Annisa', message: 'Call next time please', time: '01;00', url: 'https://s3.amazonaws.com/uifaces/faces/twitter/marcobarbosa/128.jpg'),
  Model(name: 'Icaa',message: 'Hello my friend', time: '11:39',url: 'https://s3.amazonaws.com/uifaces/faces/twitter/jarjan/128.jpg'),
  Model(name: 'Vanisa',message: 'come on boy', time: '12:39',url: 'https://s3.amazonaws.com/uifaces/faces/twitter/jarjan/128.jpg'),
  Model(name: 'Angel',message: 'Good Morning', time: '13:39',url: 'https://s3.amazonaws.com/uifaces/faces/twitter/jarjan/128.jpg'),
  Model(name: 'Amanda',message: 'Hello my friend', time: '14:39',url: 'https://s3.amazonaws.com/uifaces/faces/twitter/jarjan/128.jpg'),

];