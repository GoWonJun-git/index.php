-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 21-05-11 08:04
-- 서버 버전: 10.4.18-MariaDB
-- PHP 버전: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `blockchain`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE `user` (
  `id` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`, `pass`, `name`, `phone`, `email`, `gender`) VALUES
('dos72013', '$2y$10$BjiBZfAMlieNnjcGuWF8quUui3ttr5BZUI2SK8etRTwSasZYgc/Uu', '고원준', '01035209795', 'zmfpdydgo@naver.com', '남자'),
('zmfpdydgo', '$2y$10$tjlHJAhgcgZt9r14q2Nm6uHQEixwvCKXDyWZwhIgezODVJFZ3VMOK', '고원준', '01035209795', 'zmfpdydgo@naver.com', '남자');

-- --------------------------------------------------------

--
-- 테이블 구조 `vehiclepart`
--

CREATE TABLE `vehiclepart` (
  `partType` varchar(100) NOT NULL,
  `partName` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `vehiclepart`
--

INSERT INTO `vehiclepart` (`partType`, `partName`, `description`) VALUES
('전기', 'RPM 센서', '엔진 크랭크 축이 1분 동안 몇번의 회전을 하는지 나타내는 수치 단위를 측정하는 역할.'),
('엔진', '교류 발전기', '구동 벨트를 통하여 기관에 의해서 구동되며, 발전기에서 발생된 교류는 다이오드에 의해 직류로 바뀌어 밧데리에 충전시킴은 물론 차랑의 각 전기 장치로 전기를 공급하는 역할.'),
('엔진', '구동 벨트', '크랭크 축의 동력을 이용하여 발전기및 품펌프를 구동하여 전기를 발생하고 품펌프를 구동 시켜 엔진을 내강시키는 장치.'),
('엔진', '기동 전화기', '엔진은 스스로 시동할 수 없기에 외부에서 크랭크 축을 돌려 시동을 걸어야 하는데 이 때 사용하는 것이 스타팅 모터.'),
('엔진', '기회기', '많은 작은 부품들의 결합체로 공기와 연료를 혼합과 동시에 미립화 하여 실린더에 공급하는 장치로 공기와 연료의 혼합기를 만드는 역할.'),
('엔진', '라디에이터', '냉각수를 저장하고 연소실 벽 및 실린더 벽에서 흡수한 열을 대기 중으로 방출 시키는 역할.'),
('내/외부', '로어 컨트롤 암', '현가장치의 일부분으로서 차축과프레임을 연결시켜 주고,쇼바,코일스프링,스태이빌라이져,등이 연결되는 부품.'),
('엔진', '릴리스 베어링', '클러치 어셈블리 부분의 한 부분으로 릴리스 베어링은 클러치 페달을 밟아 동력을 차단할 때 릴리스 포크에 의해서 클러치 축 방향으로 이동하여 릴리스 레버를 누르는 역할을 하는 부품.'),
('브레이크', '마스터 실린더', '브레이크 장치의 한 부품으로 일반적으로 사람의 발의 힘을 받아 유압을 발생시키고 바퀴용과 뒷 바퀴용으로 분리하여 각각의 힐 실린더에 전달하여 각각 독립하는 유압을 발생하기 때문에 '),
('엔진', '마운틴 고무', '엔진 및 변속기 등 기타 자동차 부품들이 프레임이나 차체에 고정 될 때 엔진이나 변속기 등에서 발생하는 진동을 흡수하여 진동을 방지하는 역할.'),
('브레이크', '배력장치', '브레이크 페달을 적은 힘으로 밝아도 큰 제동력을 얻을 수 있게 하는 장치.'),
('전기', '배전기', '점화코일에서 발생한 높은 전압을 기관의 점화순서에 따라 각 점화 플러그에 분배하는 역할을 하는 장치.'),
('전기', '배전기 콘덴서', '은박지와 절연체를 서로 만들어져 전압을 가하면 전기가 저장되는 장치. 배전기의 접점과 병렬로 접속되어 접점이 열릴 때 접점에서 발생하는 불꽃을 흡수하여 접점의 손상을 막고 점화코일'),
('엔진', '벨브', '실린더 해드의 밸브 가이드에 조립되며, 실린더 및 피스톤과 함께 연소실을 이루어 혼합기를 실린더에 유입시키고 연소가스를 대기 중에 배출 함과 동시에 압축 및 폭발 행정에서 밸브 시'),
('엔진', '벨브 가이드', '밸브가 작동할때 밸브 페이스와 밸브 시트의 접톡이 바르게 되도록 밸브 스템을 안내 하는 역할.'),
('엔진', '벨트텐셔너 베어링', '자동차 엔진의 타이밍 벨트의 장력을 유지하는 부품.'),
('엔진', '변속기', '클러치와 추진축 사이에 설치되어 엔진에서 발생한 동력을 주행 속도에 알맞도록 회전력과 속도를 바꾸어 구동 바퀴에 전달하는 장치.'),
('브레이크', '브레이크 디스크', '차축에 금속제의 원판형 로터를 부착하고 로터의 양쪽에서 마찰이 큰 소재로 만들어진 패드를 유압 혹은 기계기구의 힘으로 압착하여 발생하는 마찰력으로 인하여 차량의 운동 에너지가 열에'),
('브레이크', '브레이크 슈', ' T자형 단면의 강판에 한쪽은 라이닝을 부착하는 면과 브레이크 슈가 드럼에 압착 될때 슈의 곡율이 변형되지 않도록 강성을 증대 시키는 웨이브로 구성.'),
('내/외장', '소음기', '배기 가스가 대기로 방출될 때 급격한 팽창에 의한 압력차로 폭음이 발생되는 것을 방지하는 기능.'),
('내/외장', '속업 소버', '현가장치의 한 부분으로 자동적으로 도로의 상황에 맞게 자동차의 높이를 변환시키는 역할.'),
('하체', '솔레노이드 스위치', '피이언기어(전도의 앞 부분 기어)를 링기어(플라이휠의 바깥 테두리에 있는기어)에 물리게 하는 역할.'),
('엔진', '수온 조절기', '라디에이터 캡과 일체로 냉각수 주입구에 설치되며 냉각수 온도가 적정온도가 될때 까지 냉각수의 순환을 차단했다가 냉각수 온도가 일정 온도 이상 되면 냉각수를 순환시켜 항상 냉각수의 '),
('하체', '스러스트 베어링', '축 방향의 하중을 지지 하는 베어링.'),
('하체', '스태빌라이저', '양끝이 좌우 로어암에 설치되고 중간부분은 프레임에 설치되어 바퀴가 동시에 상하 운동을 하는 경우 스태빌라이져는 작용하지 않고 바퀴가 서로 다른 상하운동을 하는 경우에는 스태빌라이져'),
('엔진', '실린더 라이너', '실린더 블록과 별개로 만든 재질의 실린더로 피스톤의 기밀을 유지하면서 열에너지를 기계적 에너지로 바꾸어 동력을 발생하며, 실린더해드, 피스톤, 밸브와 함께 엔진의 연소실을 구성하는'),
('엔진', '실린더 블록', '엔진의 기초로 여기에는 각종 부품들이 조합이 되어 하나의 엔진이 완성.'),
('엔진', '실린더 헤더 가스킷', '린더와 실린더 블록 사이에서 두 부품의 면을 밀착 시켜 엔진의 폭발 및 압축 행정시 연소실 내의 기밀을 위지하며,냉각수의 누출 방지 및 오일 누출 방지 역할.'),
('엔진', '에어클린너', '실린더에 흡입되는 공기 중에 포함되어 있는 불순물을 여과하여 깨끗한 공기를 공급.'),
('엔진', '연료 여과기', '연료 펌프와 연료 탱크 사이에 설치 되어 연료 속에 포함 되어 있는 먼지나 수분등의 불순물을 제거 하는 기능을 담당.'),
('엔진', '연료 펌프', '연료 탱크에 저장되어 있는 연료를 기화기까지 공급 하는 장치로 연료 여과기와 기화기 사이에 설치.'),
('전기', '예열 플러그', '자동차의 엔진 점화기능을 향상시켜주는 역할.'),
('엔진', '오일 씰', '오일 장치를 밀봉하는 기계요소.'),
('엔진', '오일 여과기', ' 오일 속에 금속 분말이나 연소시 생성된 카본이나 수분 그리고 흡입공기와 흡입된 먼지 등의 불순물을 제거하는 역할.'),
('엔진', '오일 팬', '실린더 블록의 하단부에 설치 되며 엔진의 오일이 저장되어 냉각 되는 곳.'),
('브레이크', '오페라 실린더', '브레이크 페달을 밟는 힘을 유압으로 전환하는 장치.'),
('엔진', '워터 펌프', '벨트에 의해서 크랭크 축의 동력을 받아 회전하며, 라디에이터에 저장되어 있는 냉각수를 실린더 블록 및 실린더 헤드의 냉각수 통로에 순환시키는 역할.'),
('전기', '자동차 배터리', '자동차가 정지되면 배터리 내에서 발생하는 화학적 작용에 의해 전기적 에너지로 변환시켜 시동모터를 구동하고 발전기 고장 시 예비전원을 공급하는 역할.'),
('하체', '자재이음', '회전축의 각도가 서로 다른 회전축에 동력을 전달할때 피동축에 동력을 전달하기 위해 사용.'),
('전기', '점화 코일', '자기 유도 작용과 상호 유도 작용을 이용하여 점화 플러그에서 전기 불꽃을 발생할 수 있도록 고전압을 발생시키는 장치.'),
('전기', '점화 플러그', '각 실린더 헤드의 연소실에 설치되어 압축된 혼합가스에 점화 코일에서 발생된 고전압의 전류를 배전기에서 공급 받아 압축가스에 불꽃을 발생하여 점화시키는 역할'),
('하체', '추진축', '변속기로부터의 동력을 전달 받아 차축(Axle)에 전달하는 역할을 하는 장치'),
('엔진', '캠 축', '크랭크 축에서 전달되는 동력을 이용하여 밸브의 개폐 및 배전기, 연료펌프, 오일 펌프등을 구동하는 역할'),
('엔진', '커넥팅 로드', '한쪽은 피스톤 핀에 의해 피스톤에 연결되고, 다른 한쪽은 크랭크 축에 연결되어 엔진의 폭발 행정에서 피스톤이 받은 압력을 크랭크 축에 전달하는 역할'),
('하체', '코일 스프링', '현가 장치의 한 부품으로 쇽업소바와 같이 일반적으로 승용차에 많이 사용되는 부품.'),
('엔진', '콘덴서', '고온 고압의 냉매를 차게해서 액체상태로 전환해 주는 역할을 하는 부품으로 라디에이터 앞에 설치되어 압축기에서 송출된 고온 고압의 냉매 가스를 공기에 의해서 냉각시켜 액체의 냉매로 '),
('엔진', '크랭크축', '크랭크 케이스 안에 설치 된 메인 베어링. 각 실린더의 폭발행정에서 발생한 피스톤의 직선운동을 커넥팅로드를 통해 회전동력으로 변환. 반대로 다른행정(흡입,압축,배기)에서는 피스톤에'),
('하체', '클러치 마스터 실린더', '클러치의 분리를 달성하기 위해 부스터의 역할을 통해 페달 스트로크 정보를 수집하는 역할.'),
('하체', '클러치 커버', '클러치 스프링과 압력판등을 지지하는 역할'),
('하체', '클러치 판', '플라이 휠과 압력판 사이에 설치되어 가장자리에 설치되어 있는 라이닝의 마찰력으로 클러치 축을 통하여 변속기에 동력을 전달하는 역할.'),
('하체', '토션바 고무', '토션바 스프링의 결합 부분에 사용되는 부품으로 결합부분의 마찰을 줄이는 것으로 다른 현가장치의 보조적인 역할'),
('하체', '토션바 스프링', '강봉을 비틀었을때 제 자리로 돌아가려는 탄성을 이용한 막대형 스프링.'),
('하체', '판 스프링', '대형차의 뒤 차축에 많이 사용되는 현가장치의 한 부품. 노면에 의한 진동을 스프링 강판 사이의 마찰에 의해 진동을 흡수하는 역할'),
('엔진', '펜 클러치', '엔진의 고속 회전시 냉각 팬의 회전을 제한하기 위하여 물 펌프 축과 냉각 팬 사이에 클러치를 설치하여 엔진의 소비 마력을 감소시키고 팬 벨트의 내구성을 향상시키며, 고속회전에 의한'),
('엔진', '플라이 휠', '크랭크 축 뒷 부분에 볼트로 체결하여 폭발 행정에서 발생되는 중량에 의한 관성에너지를 저장하여 흡입, 압축, 배기 행정을 할수 있도록 하고 회전력의 차이에 의한 속도 변화를 감소시'),
('엔진', '피스톤', '실린더 내에 설치 되어 고속으로 왕복운동을 하는 원통형 부품.'),
('엔진', '피스톤 링', '금속제 링의 일부를 잘라 탄성을 유지하도록 한 부품으로 기밀 작용, 오일 제어 작용 ,냉각작용 등을 담당.'),
('하체', '허브 베어링', '자동차 휠에 장착되어 휠의 고정 및 차량 하중을 지지하고 구동축의 힘을 전달 받아 회전저항을 최소화해 휠의 원활하게 회전시키는 역할.'),
('하체', '휠', '자동차 전체 중량을 지지하며,구동 또는 제동시의 제동력,노면에 의한 충격 선회시의 원심력 등을 지지하는 역할.'),
('하체', '휠 실린더', '마스터 실린더로 부터 유압을 전달 받아 브레이크 슈를 브레이크 드럼이나 디스크에 압착 시키는 역할.');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `vehiclepart`
--
ALTER TABLE `vehiclepart`
  ADD PRIMARY KEY (`partName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
