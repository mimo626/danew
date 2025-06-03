
class NewsCategory {
  static String categoryKrToEnTranslate(String categoryKr){
    late String categoryEn;
    switch(categoryKr){
      case("인기"): categoryEn = "top"; break;
      case("정치"): categoryEn = "politics"; break;
      case("경제"): categoryEn = "business"; break;
      case("범죄"): categoryEn = "crime"; break;
      case("기술"): categoryEn = "technology"; break;
      case("교육"): categoryEn = "education"; break;
      case("과학"): categoryEn = "science"; break;
      case("엔터"): categoryEn = "entertainment"; break;
      case("환경"): categoryEn = "environment"; break;
      case("스포츠"): categoryEn = "sports"; break;
      case("세계"): categoryEn = "world"; break;
      case("건강"): categoryEn = "health"; break;
      case("일상"): categoryEn = "lifestyle"; break;
      case("국내"): categoryEn = "domestic"; break;
      case("관광"): categoryEn = "tourism"; break;
      case("음식"): categoryEn = "food"; break;
      case("기타"): categoryEn = "other"; break;
    }
    return categoryEn;
  }
}