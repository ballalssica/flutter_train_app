🚀 Flutter Train Booking App

Flutter로 구현된 기차 예약 앱입니다. 출발역 및 도착역 선택, 좌석 선택기능이 포함되어 있습니다. 

📋 주요 기능
회원가입
- 출발역 및 도착역 선택 시 선택된 역이 제외된 목록 제공.
  - 사용자 친화적인 UI 구성.
  - 좌석 선택

- 클릭하여 좌석 선택 가능.
  - 선택된 좌석 정보 확인.
  - 다크 모드 지원

- 시스템 설정에 따라 라이트 모드와 다크 모드 자동 전환.

🛠️ 기술 스택
Flutter: 크로스 플랫폼 모바일 앱 개발.
Dart: Flutter에서 사용하는 프로그래밍 언어.
Figma: UI/UX 프로토타입 설계.

📂 디렉토리 구조
lib/
├── main.dart                # 앱의 시작점
├── home/
│   ├── home_page.dart       # 메인 페이지 (출발역, 도착역 선택)
│   ├── widgets/
│       ├── station_selection.dart  # 출발역/도착역 선택 위젯
│       ├── seat_selection_button.dart # 좌석 선택 버튼
├── seat/
│   ├── seat_page.dart       # 좌석 선택 페이지
│   ├── widgets/
│       ├── seat_choose_button.dart # 좌석 선택 후 예약버튼
│       ├── seat_choose.dart # 좌석 선택 위젯
│       ├── selected_station.dart # 선택된 역 표시
├── station_list/
│   ├── station_list_page.dart # 역 목록 페이지
