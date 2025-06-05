import 'package:danew/core/globals/news_data.dart';
import 'package:danew/core/globals/wise_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'nav_item.dart';

class Globals {
  // BottomNavigationBarItem의 아이콘 사이즈
  static double navItemSize = 24;

  // BottomNavigationBarItem들
  static List<NavItem> navItems = [
    NavItem(
      icon: Icon(
        Icons.home_outlined,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.home,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "홈",
    ),
    NavItem(
      icon: Icon(
        Icons.menu_outlined,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.menu,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "카테고리",
    ),
    NavItem(
      icon: Icon(
        Icons.library_books_outlined,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.library_books,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "기록",
    ),
    NavItem(
      icon: Icon(
        Icons.bookmark_outline,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.bookmark,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "북마크",
    ),
    NavItem(
      icon: Icon(
        Icons.person_outline,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.person,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "마이페이지",
    ),
  ];

  // 홈의 뉴스 카테고리 탭 위젯
  static List<String> newsCategoryKr = [
    "정치", "경제", "엔터", "스포츠", "기술",
    "과학", "세계", "건강", "일상",
  ];

  static List<String> newsCategoryEn = [
    "politics",
    "business",
    "entertainment",
    "sports",
    "technology",
    "science",
    "world",
    "health",
    "lifestyle",
  ];

  // 해당 안되는 카테고리인 경우
  static String otherCategoryEn = "other";
  static String otherCategoryKr = "기타";

  // 북마크의 카테고리 탭 위젯
  static List<String> bookmarkTab = [
    "뉴스", "명언",
  ];

  static int NewsTItleDataLength = 2;

  static List<NewsData> newsMediumImgCardData = [
    NewsData(
      imgUrl: "lib/core/images/img_9.png",
      newsTitle: "고령화 사회 진입…노년층 복지정책 강화 시급",
      newsContent: "한국 사회가 본격적인 고령화 사회에 접어들었다. "
          "이에 따라 노년층의 삶의 질 향상을 위한 복지정책 확대가 시급하다. "
          "전문가들은 의료·돌봄 인프라 개선의 필요성을 강조하고 있다.",
      pubDate: "2025-05-19",
      creator: "이은정",
      category: "사회",
      link: "https://example.com/news3",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_10.png",
      newsTitle: "SNS 이용자 수 5천만 돌파…10대 이용률 급상승",
      newsContent: "국내 SNS 이용자 수가 5천만 명을 돌파했다. "
          "특히 10대 청소년의 이용 비율이 빠르게 증가하고 있는 추세다. "
          "전문가들은 개인정보 보호 및 온라인 예절 교육의 중요성을 강조한다.",
      pubDate: "2025-05-19",
      creator: "정하늘",
      category: "IT",
      link: "https://example.com/news4",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_11.png",
      newsTitle: "스마트폰 시장, 폴더블폰 점유율 20% 육박",
      newsContent: "폴더블폰이 스마트폰 시장의 새로운 트렌드로 자리잡고 있다. "
          "최근 조사에 따르면 전체 스마트폰 중 폴더블폰의 점유율이 20%에 육박했다. "
          "소비자들은 혁신적 디자인과 멀티태스킹 기능을 주요 장점으로 꼽는다.",
      pubDate: "2025-05-19",
      creator: "최우성",
      category: "모바일",
      link: "https://example.com/news5",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_12.png",
      newsTitle: "주 4일제 시범 도입 기업 증가…직원 만족도 상승",
      newsContent: "주 4일제를 시범 도입하는 기업들이 늘어나고 있다. "
          "직원들의 워라밸 향상과 생산성 증가가 주요 도입 배경으로 꼽힌다. "
          "정부도 관련 제도 지원 방안을 모색 중이다.",
      pubDate: "2025-05-19",
      creator: "한예슬",
      category: "노동",
      link: "https://example.com/news6",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_13.png",
      newsTitle: "해양 쓰레기 수거 드론 도입…환경 보호 박차",
      newsContent: "해양 쓰레기 문제 해결을 위한 새로운 기술이 등장했다. "
          "드론을 활용한 쓰레기 수거 시스템이 본격 운영되면서 기대를 모은다. "
          "환경부는 관련 예산과 기술 지원 확대를 약속했다.",
      pubDate: "2025-05-19",
      creator: "오세훈",
      category: "환경",
      link: "https://example.com/news7",
    ),
  ];

  static List<String> recentSearchWordData = [
    "검색어1",
    "검색어2",
    "검색어3",
    "검색어4",
    "검색어5",
    "검색어6",
    "검색어7",
    "검색어8",
    "검색어9",
    "검색어10",
  ];

  static List<WiseCard> wiseCardData = [
    WiseCard(content: "행동이 모든 성공의 기본이다.", author: "파블로 피카소"),
    WiseCard(content: "오늘 할 수 있는 일을 내일로 미루지 마라.", author: "벤저민 프랭클린"),
    WiseCard(content: "성공은 준비와 기회의 만남이다.", author: "세네카"),
    WiseCard(content: "할 수 있다고 믿든, 없다고 믿든, 당신 말이 맞다.", author: "헨리 포드"),
    WiseCard(content: "자신을 이기는 것이 가장 위대한 승리다.", author: "플라톤"),
    WiseCard(content: "성공하려면 실패를 두려워하지 마라.", author: "빌 게이츠"),
    WiseCard(content: "지금 이 순간에 충실하라.", author: "틱낫한"),
  ];

  static List<String> keywordList = [
    "정치", "엔터", "경제", "취업", "문화", "IT", "세계", "AI", "사회",
    "스포츠", "금융", "주식"
  ];
}
