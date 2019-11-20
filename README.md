# 막내야 식당 찾아라



## 소개
> 음식점을 찾아주는 앱은 다양합니다. 네이버 지도, 구글 맵 등등.. 하지만 다양한 필터를 적용하여 사용자의 니즈에 더 적합한 음식점 리스트를 뽑아주는 앱은 없다고 생각했습니다. "막내야 식당 찾아라" 앱이 당신이 원하는 음식점을 좀 더 정확하게 필터하여 지도 위에서 직관적으로 음식점을 찾을 수 있도록 도와드리겠습니다.


## 시스템
> Client : https://github.com/bsshmk/maknaeya_sikdang_chajara_client

> Server : https://github.com/bsshmk/maknaeya_sikdang_chajara_api

> crawling : https://github.com/bsshmk/maknaeya_sikdang_chajara_crawling




### 참여자
> 김보성(bsgreentea), 조명기(ChoMk), 조성훈(JoChoSunghoon)


# 막내야 식당 찾아라 API

## 개발 환경
> Visual Studio Code

> Database 연동 - Sequelize 사용

## 개발 언어
> Javascript

## 길찾기 알고리즘

<img src="https://github.com/bsshmk/maknaeya_sikdang_chajara_api/blob/master/find_road.jpg" alt="alt text" width="250px" height="500px">

> A* 알고리즘 사용

> 현재 위치로부터 식당까지의 경로를 hexagon grid로 계산하고 {경도, 위도}로 반환

## 모든 식당 정보 가져오기  

```
GET /restaurant
```

* Response
```
[
  {
   "restaurant_id" : "1007462",
   "restaurant_name" : "식당이름",
    "web_link" : "https://www.~~~~",
   "category" : "세계음식 > 일본음식/초밥",
   "phone_number" : "032-330-xxxx",
   "rating" : "4.3",
    "location" : "인천광역시 부평구 ~~~",
    "gps_N" : "37.493663",
    "gps_E" : "126.724078",
    "image_src" : "https://img.~~~~",
    "main_menu" : "토리소유라멘, 토리파이탄",
    "main_menu_price" : "토리소유라멘-- 8,500 원, 토리파이탄-- 8,000 원",
    "review_count_number" : "3",
    "mean_price" : "7500",
    "distance" : 0.00009493529796600342
  },
  {
    same template....
  }
]
```

## 기준 위치로부터 일정 범위 안에 있는 식당 정보 가져오기  

```
GET /restaurant/distByLoc
```

* Request

```
{
  "gps_N" : "위도",
  "gps_E" : "경도",
  "range" : "범위(km)"
}
```

* Response

```
[
  {
    "restaurant_id" : "1007462",
    "restaurant_name" : "식당이름",
    "web_link" : "https://www.~~~~",
    "category" : "세계음식 > 일본음식/초밥",
    "phone_number" : "032-330-xxxx",
    "rating" : "4.3",
    "location" : "인천광역시 부평구 ~~~",
    "gps_N" : "37.493663",
    "gps_E" : "126.724078",
    "image_src" : "https://img.~~~~",
    "main_menu" : "토리소유라멘, 토리파이탄",
    "main_menu_price" : "토리소유라멘-- 8,500 원, 토리파이탄-- 8,000 원",
    "review_count_number" : "3",
    "mean_price" : "7500",
    "distance" : 0.00009493529796600342
  },
  {
    same template....
  }
]
```

## 음식점 ID로 리뷰 가져오기  

```
GET /restaurant/reviewById
```

* Request

```
{
  "id" : "레스토랑 ID"
}
```

* Response

```
[
  {
    "review_id" : "1021480_0",
    "restaurant_id" : "1021480",
    "writer_id" : "ldhz***",
    "review_contents" : "동탄 돼지갈비 맛집 인천생갈비 갈비가 진짜 맛있어요\n맛있어서 추가로 주문해서 먹었어요!!!!!",
    "review_score" : "5.0"
  },
  {
    "review_id" : "1021480_1",
    "restaurant_id" : "1021480",
    "writer_id" : "****",
    "review_contents" : "쩐다",
    "review_score" : "5.0"
  }
]
```

## 경도 위도 좌표로 경로 찾기

```
GET /restaurant/findRoad
```

* Request
```
{
  "lat1" : 출발 위치 경도,
  "lng1" : 출발 위치 위도,
  "lat2" : 도착 위치 경도,
  "lng2" : 도착 위치 위도,
}
```

* Response

```
[
  {
    "latitude":37.452122,
    "longitude":126.657442
  },
  {
    "latitude":37.452146,
    "longitude":126.65746398968597
  }, ...
]
```
