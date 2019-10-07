# 막내야 식당 찾아라 API 명세서

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
