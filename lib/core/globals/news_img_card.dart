class NewsBigImgCard {
  final String imgRoute;
  final String newsTitle;

  NewsBigImgCard({
    required this.imgRoute,
    required this.newsTitle
  });
}

class NewsSmallImgCard {
  final String imgRoute;
  final String newsTitle;
  final String time;

  NewsSmallImgCard({
    required this.imgRoute,
    required this.newsTitle,
    required this.time,
  });
}
