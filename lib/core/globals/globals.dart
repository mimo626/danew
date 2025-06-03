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
        Icons.wb_sunny_outlined,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      activeIcon: Icon(
        Icons.wb_sunny,
        color: AppColors.primaryColor,
        size: Globals.navItemSize,
      ),
      label: "명언",
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
  static List<String> homeTab = [
    "추천", "인기", "정치", "경제", "범죄", "기술", "교육", "과학",
    "엔터", "환경", "스포츠", "세계", "건강", "일상", "국내", "관광", "음식", "기타"
  ];

  static List<String> newsCategoryEn = [
    "top",
    "politics",
    "business",
    "crime",
    "technology",
    "education",
    "science",
    "entertainment",
    "environment",
    "sports",
    "world",
    "health",
    "lifestyle",
    "domestic",
    "tourism",
    "food",
    "other"
  ];

  // 북마크의 카테고리 탭 위젯
  static List<String> bookmarkTab = [
    "뉴스", "명언",
  ];

  // 타이틀만 있는 뉴스 더미데이터
  static List<NewsData> newsTitleData = [
    NewsData(
        imgUrl: "lib/core/images/img_14.png",
        newsTitle: "정부, 2025년까지 탄소배출 40% 감축 목표 발표",
        newsContent: "정부는 2025년까지 국가 온실가스 배출량을 40% 줄이겠다는 중장기 계획을 발표했다. "
            "이를 위해 산업, 수송, 에너지 부문에 대한 정책적 조정이 본격 추진될 예정이다. "
            "전문가들은 이번 목표가 실현된다면 국제 사회에서 한국의 위상이 강화될 것으로 보고 있다.",
        pubDate: "2025-05-19",
        creator: "김민수 기자",
        category: "정책",
        link: "https://news.example.com/climate-reduction"
    ),
    NewsData(
        imgUrl: "lib/core/images/img_15.png",
        newsTitle: "국내 첫 자율주행 택시 상용화 시작…서울 시범 운행",
        newsContent: "국내 최초로 자율주행 택시가 서울에서 시범 운행을 시작하며 본격적인 상용화 단계에 진입했다. "
            "서울 시민들은 모바일 앱을 통해 자율주행 택시를 예약할 수 있으며, 초기에는 일부 구간에서만 운영된다. "
            "정부와 기업은 기술 안정성을 높여 향후 전국 확대를 목표로 하고 있다.",
        pubDate: "2025-05-19",
        creator: "이수정 기자",
        category: "자동차",
        link: "https://news.example.com/autonomous-taxi"
    ),
    NewsData(
        imgUrl: "lib/core/images/img_16.png",
        newsTitle: "원달러 환율 급등…1,400원 돌파하며 금융시장 흔들",
        newsContent: "원달러 환율이 1,400원을 돌파하며 국내 금융시장에 불안감이 확산되고 있다. "
            "전문가들은 미국의 금리 인상과 글로벌 경기 불안이 주요 원인이라고 분석한다. "
            "정부는 외환시장 안정화를 위한 대책을 긴급히 논의 중이다.",
        pubDate: "2025-05-19",
        creator: "박지훈 기자",
        category: "경제",
        link: "https://news.example.com/usd-krw-exchange-rate"
    ),
  ];


  static int NewsTItleDataLength = 3;

  static List<NewsData> newsBigImgCardData = [
    NewsData(
      imgUrl: "lib/core/images/img.png",
      newsTitle: "대형마트 의무휴업 폐지 논의 본격화",
      newsContent: "대형마트의 의무휴업 규제 폐지를 둘러싼 논의가 본격화되고 있다. "
          "소비자 편의성과 전통시장 상생이라는 가치가 충돌하는 가운데, "
          "정부는 다양한 이해관계자의 의견을 수렴 중이다.",
      pubDate: "2025-05-19",
      creator: "김민수",
      category: "경제",
      link: "https://example.com/news1",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_1.png",
      newsTitle: "청년층 주거 대책 발표…월세 지원 확대 예정",
      newsContent: "정부가 청년층 주거 안정을 위한 새로운 대책을 발표했다. "
          "특히 월세 지원금 확대가 중심 내용으로, "
          "청년 1인 가구의 주거 부담 완화에 크게 기여할 전망이다.",
      pubDate: "2025-05-19",
      creator: "박지현",
      category: "정책",
      link: "https://example.com/news2",
    ),
  ];

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

  static List<NewsData> newsSmallImgCardData = [
    NewsData(
      imgUrl: "lib/core/images/img_2.png",
      newsTitle: "국제유가 급등…휘발유 가격 1,800원 돌파",
      newsContent: "국제유가의 급등으로 국내 휘발유 가격이 리터당 1,800원을 돌파했다. "
          "물가 상승에 대한 우려가 커지는 가운데, "
          "정부는 유류세 인하 검토에 나섰다.",
      pubDate: "3시간 전",
      creator: "장민호",
      category: "경제",
      link: "https://example.com/news8",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_3.png",
      newsTitle: "드라마 ‘시간의 끝에서’ 넷플릭스 글로벌 1위 등극",
      newsContent: "국내 드라마 ‘시간의 끝에서’가 넷플릭스 글로벌 순위 1위를 차지했다. "
          "뛰어난 연출과 배우들의 열연이 호평을 받고 있다. "
          "K-콘텐츠의 위상이 다시 한 번 확인되었다.",
      pubDate: "3시간 전",
      creator: "서윤아",
      category: "문화",
      link: "https://example.com/news9",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_4.png",
      newsTitle: "전기차 보조금 개편…국산차 중심으로 재편",
      newsContent: "정부가 전기차 보조금 제도를 국산차 중심으로 개편한다고 밝혔다. "
          "해외 브랜드보다 국내 브랜드에 유리한 구조로 변경된다. "
          "친환경차 보급 촉진을 위한 전략이 포함되었다.",
      pubDate: "3시간 전",
      creator: "민경호",
      category: "자동차",
      link: "https://example.com/news10",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_5.png",
      newsTitle: "초등학교 스마트 교육 확대…태블릿 수업 본격 도입",
      newsContent: "전국 초등학교에서 태블릿 기반의 스마트 교육이 본격화되고 있다. "
          "디지털 기기를 활용한 수업 방식에 학생과 교사의 만족도가 높다. "
          "교육부는 관련 인프라 구축을 지속적으로 확대할 방침이다.",
      pubDate: "3시간 전",
      creator: "김하늘",
      category: "교육",
      link: "https://example.com/news11",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_6.png",
      newsTitle: "2030 세대, ‘짠테크’ 대신 ‘가치소비’ 트렌드 주도",
      newsContent: "2030 세대는 과거의 절약 중심 소비에서 벗어나, "
          "자신의 가치에 부합하는 소비를 선호하는 경향을 보이고 있다. "
          "가성비보다 ‘가심비’를 중시하는 흐름이 뚜렷하다.",
      pubDate: "3시간 전",
      creator: "배진수",
      category: "트렌드",
      link: "https://example.com/news12",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_7.png",
      newsTitle: "국립중앙박물관, 고대 유물 특별 전시회 개막",
      newsContent: "국립중앙박물관이 고대 유물을 조명하는 특별 전시회를 시작했다. "
          "다양한 국가의 유물과 함께 시대별 역사 해설도 제공된다. "
          "전시는 다음 달까지 계속될 예정이다.",
      pubDate: "3시간 전",
      creator: "이주연",
      category: "문화",
      link: "https://example.com/news13",
    ),
    NewsData(
      imgUrl: "lib/core/images/img_8.png",
      newsTitle: "중소기업 지원 확대…금융·세제 혜택 강화",
      newsContent: "정부가 중소기업을 위한 지원 정책을 강화한다. "
          "금융 대출 완화와 세제 혜택 확대가 핵심 내용이다. "
          "경영 안정성과 일자리 창출에 긍정적인 영향을 미칠 것으로 기대된다.",
      pubDate: "3시간 전",
      creator: "최가람",
      category: "정책",
      link: "https://example.com/news14",
    ),
  ];

  static int newsSmallImgCardDataLength = 7;

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

  // "세계적인 디자이너 A씨, 서울 패션위크 참여 확정",
  // "문화재청, 100년 전 기록 사진 공개…역사 재조명"
}
