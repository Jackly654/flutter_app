class Post{
  Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
});

  final String title;
  final String author;
  final String imageUrl;
  final String description;

  bool selected = false;
}

final List<Post> posts = [
  Post(
    title: 'test1asdasdasd',
    author: 'jack',
    description: "sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1132502205,109667947&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test2asd',
    author: 'jack2',
    description: "1sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3942751454,1089199356&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test3asdasdasdsadasdsadsadsadasdasdasdasdadgadsgsdagsdagasdgsdgsdgsadgsdgsdgsdgsdagsdagsdagsdgsdafsadfsadfsad',
    author: 'jack3',
    description: "2sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605521171603&di=15785b14303ce04a541a7afa53a27560&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201507%2F23%2F20150723232238_3Ydci.jpeg',
  ),

  Post(
    title: 'test1',
    author: 'jack',
    description: "3sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1132502205,109667947&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test2',
    author: 'jack2',
    description: "4sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3942751454,1089199356&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test3',
    author: 'jack3',
    description: "5sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605521171603&di=15785b14303ce04a541a7afa53a27560&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201507%2F23%2F20150723232238_3Ydci.jpeg',
  ),

  Post(
    title: 'test1',
    author: 'jack',
    description: "6sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1132502205,109667947&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test2',
    author: 'jack2',
    description: "7sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3942751454,1089199356&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test3',
    author: 'jack3',
    description: "8sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605521171603&di=15785b14303ce04a541a7afa53a27560&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201507%2F23%2F20150723232238_3Ydci.jpeg',
  ),

  /*DOUBLE COPY*/
  Post(
    title: 'test1asdasdasd',
    author: 'jack',
    description: "sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1132502205,109667947&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test2asd',
    author: 'jack2',
    description: "1sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3942751454,1089199356&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test3asdasdasdsadasdsadsadsad',
    author: 'jack3',
    description: "2sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605521171603&di=15785b14303ce04a541a7afa53a27560&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201507%2F23%2F20150723232238_3Ydci.jpeg',
  ),

  Post(
    title: 'test1',
    author: 'jack',
    description: "3sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1132502205,109667947&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test2',
    author: 'jack2',
    description: "4sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3942751454,1089199356&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test3',
    author: 'jack3',
    description: "5sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605521171603&di=15785b14303ce04a541a7afa53a27560&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201507%2F23%2F20150723232238_3Ydci.jpeg',
  ),

  Post(
    title: 'test1',
    author: 'jack',
    description: "6sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1132502205,109667947&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test2',
    author: 'jack2',
    description: "7sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3942751454,1089199356&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test3',
    author: 'jack3',
    description: "8sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605521171603&di=15785b14303ce04a541a7afa53a27560&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201507%2F23%2F20150723232238_3Ydci.jpeg',
  ),
  Post(
    title: 'test1asdasdasd',
    author: 'jack',
    description: "sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1132502205,109667947&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test2asd',
    author: 'jack2',
    description: "1sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3942751454,1089199356&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test3asdasdasdsadasdsadsadsad',
    author: 'jack3',
    description: "2sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605521171603&di=15785b14303ce04a541a7afa53a27560&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201507%2F23%2F20150723232238_3Ydci.jpeg',
  ),

  Post(
    title: 'test1',
    author: 'jack',
    description: "3sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1132502205,109667947&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test2',
    author: 'jack2',
    description: "4sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3942751454,1089199356&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test3',
    author: 'jack3',
    description: "5sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605521171603&di=15785b14303ce04a541a7afa53a27560&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201507%2F23%2F20150723232238_3Ydci.jpeg',
  ),

  Post(
    title: 'test1',
    author: 'jack',
    description: "6sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1132502205,109667947&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test2',
    author: 'jack2',
    description: "7sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3942751454,1089199356&fm=26&gp=0.jpg',
  ),

  Post(
    title: 'test3',
    author: 'jack3',
    description: "8sjflasjdklfjlsk;ajdfklsjadfl;kjsla;kjdfkljsadfkl;jsakl;dfj",
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605521171603&di=15785b14303ce04a541a7afa53a27560&imgtype=0&src=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201507%2F23%2F20150723232238_3Ydci.jpeg',
  ),

];