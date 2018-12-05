데이타베이스 팀프로젝트 쇼핑몰 구축 - Phase 3
팀: 2조
팀원: 서효주, 허정은

* Visio 툴을 이용해 다이어그램을 작성했습니다.
=======================================================1단계 엔티티 참고
-엔티티

 1. 상품 (ITEM)
 2. 브랜드 (Brand)
 3. 카테고리 (CATEGORY)
 4. 공급업체 (SUPPLIER)
 5. 배송업체 (SHIPPINGCOMPANY)
 6. 고객 (CUSTOMER)
 7. 장바구니 (SHOPPINGBAG)

-------------------------------------------

-attribute (제일 앞에 있는 속성이 key attribute입니다.)

 1. ITEM - Item_code, Item_name, Std_price, Shipments/Units

 2. Brand - Brand_id, Brand_name

 3. CATEGORY - Category_id, Large_ct, Middle_ct, Small_ct

 4. SUPPLIER - Supplier_id, Supplier_brand

 5. SHIPPINGCOMPANY - Ship_id, Ship_name, Ship_area

 6. CUSTOMER - Custom_id, Custom_pw, Address, Telephone, Sex, Age, Custom_name, Job, Type(Small_ty, Large_ty, Etc_ty)

 7. SHOPPINGBAG - bag_id, Item_code, Total_price


================================================================================
프로젝트 2단계

**ERD 수정하였습니다.
1. 엔티티 shoppingmall을 없앴습니다.
2. 엔티티 shoppingbag 을 weak entity로 수정하였습니다.
3. 각 엔티티마다 PK를 지정하였습니다. pk는 이름을 같을 수 있는 경우를 대비해 id로 지정하였습니다.

os버전, mysql 버전은 
Server version: 5.7.24-0, ubuntu0.18.04.1 (Ubuntu)

================================================================================
index 추가