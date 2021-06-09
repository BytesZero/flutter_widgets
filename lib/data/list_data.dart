class ImageEntity {
  ImageEntity(
      {required this.id,
      required this.title,
      required this.desc,
      required this.url});

  late int id;
  late String title;
  late String desc;
  late String url;
}

/// 列表总数
int get listTotal => listData.length;

/// 列表数据
List<ImageEntity> listData = [
  ImageEntity(
    id: 1,
    title: '白天在湖木码头',
    desc: '拍摄时间：	2012年11月11日 08:52',
    url:
        'https://images.pexels.com/photos/1619319/pexels-photo-1619319.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  ),
  ImageEntity(
    id: 2,
    title: '湖的风景摄影',
    desc: '拍摄时间：	2018年04月14日 15:01',
    url:
        'https://images.pexels.com/photos/1024615/pexels-photo-1024615.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  ),
  ImageEntity(
    id: 3,
    title: '耶稣基督在墙上装饰',
    desc: '上传日期：2020年06月03日',
    url:
        'https://images.pexels.com/photos/4553677/pexels-photo-4553677.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  ),
  ImageEntity(
    id: 4,
    title: '湖边的桥上的人',
    desc: '拍摄时间：	2017年09月08日 13:45',
    url:
        'https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  ),
  ImageEntity(
    id: 5,
    title: '红云和蓝天',
    desc: '拍摄时间：	2017年06月23日 21:22',
    url:
        'https://images.pexels.com/photos/844297/pexels-photo-844297.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  ),
  ImageEntity(
    id: 6,
    title: '粉红玫瑰',
    desc: '拍摄时间：	2017年02月05日 08:38',
    url:
        'https://images.pexels.com/photos/1166869/pexels-photo-1166869.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  ),
  ImageEntity(
    id: 7,
    title: '花朵',
    desc: '拍摄时间：	2020年06月10日 11:04',
    url:
        'https://images.pexels.com/photos/4623061/pexels-photo-4623061.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  ),
  ImageEntity(
    id: 8,
    title: '粉色非洲菊',
    desc: '拍摄时间：	2018年01月29日 12:47',
    url:
        'https://images.pexels.com/photos/850359/pexels-photo-850359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  ),
  ImageEntity(
    id: 9,
    title: '粉红玫瑰',
    desc: '拍摄时间：	2017年10月03日 07:36',
    url:
        'https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  ),
  ImageEntity(
    id: 10,
    title: '粉红色花朵',
    desc: '拍摄时间：	2018年02月14日 09:39',
    url:
        'https://images.pexels.com/photos/931176/pexels-photo-931176.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  ),
];
