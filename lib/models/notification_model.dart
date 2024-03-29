class UserNotification {
  final String imageUrl;
  final String content;
  final String time;

  UserNotification(
      {required this.imageUrl, required this.content, required this.time});
}

List<UserNotification> notifications = [
  new UserNotification(
      imageUrl:
          'https://asset.brandfetch.io/idri066Db8/iduG7w-FF5.png',
      content: 'Goalcast posted a new video',
      time: '3 hours ago'),
  new UserNotification(
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/9/91/PlayStation_App_Icon.jpg',
      content: 'Playstation posted a new video',
      time: '8 hours ago'),
  new UserNotification(
      imageUrl:
          'https://cdn.icon-icons.com/icons2/2699/PNG/512/xbox_logo_icon_169692.png',
      content: 'Xbox posted a new video',
      time: '9 hours ago'),
  new UserNotification(
      imageUrl:
          'https://cdn.pixabay.com/photo/2021/09/11/12/17/reddit-6615447_1280.png',
      content: 'Reddit posted a new video',
      time: '22 hours ago'),
  new UserNotification(
      imageUrl:
          'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjk4Mi1kMS0xMC5wbmc.png',
      content: 'Linkedin posted a new photo',
      time: '1 day ago'),
  new UserNotification(
      imageUrl:
          'https://asset.brandfetch.io/ideJLBd9sY/idChtKT4YO.jpeg',
      content: 'IGN posted a new video',
      time: '4 days ago'),
  new UserNotification(
      imageUrl:
          'https://yt3.googleusercontent.com/ytc/AIdro_lXPtpQENlzGAhOOdwoBgbWgdZZspr_D5wmS1dR6w=s160-c-k-c0x00ffffff-no-rj',
      content: 'Skooldio posted a new video',
      time: '6 days ago'),
  new UserNotification(
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Steam_icon_logo.svg/512px-Steam_icon_logo.svg.png',
      content: 'Steam posted a new photo',
      time: '1 week ago'),
  new UserNotification(
      imageUrl:
          'https://yt3.googleusercontent.com/FOJKtaBfRKUtvURL34U1LUJ3MBqucN26F1Zbin88A0jRQQp-cpfqc9r8UH8ixfQhTh8BQQYXrQ=s900-c-k-c0x00ffffff-no-rj',
      content: 'ขอบสนาม posted a new photo',
      time: '3 weeks ago'),
  new UserNotification(
      imageUrl:
          'https://pbs.twimg.com/profile_images/1676880418614960129/rbmuCMEZ_400x400.jpg',
      content: 'FPS Thailand posted a new photo',
      time: '1 month ago')
];
