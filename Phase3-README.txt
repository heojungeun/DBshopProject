����Ÿ���̽� ��������Ʈ ���θ� ���� - Phase 3
��: 2��
����: ��ȿ��, ������

* Visio ���� �̿��� ���̾�׷��� �ۼ��߽��ϴ�.
=======================================================1�ܰ� ��ƼƼ ����
-��ƼƼ

 1. ��ǰ (ITEM)
 2. �귣�� (Brand)
 3. ī�װ� (CATEGORY)
 4. ���޾�ü (SUPPLIER)
 5. ��۾�ü (SHIPPINGCOMPANY)
 6. �� (CUSTOMER)
 7. ��ٱ��� (SHOPPINGBAG)

-------------------------------------------

-attribute (���� �տ� �ִ� �Ӽ��� key attribute�Դϴ�.)

 1. ITEM - Item_code, Item_name, Std_price, Shipments/Units

 2. Brand - Brand_id, Brand_name

 3. CATEGORY - Category_id, Large_ct, Middle_ct, Small_ct

 4. SUPPLIER - Supplier_id, Supplier_brand

 5. SHIPPINGCOMPANY - Ship_id, Ship_name, Ship_area

 6. CUSTOMER - Custom_id, Custom_pw, Address, Telephone, Sex, Age, Custom_name, Job, Type(Small_ty, Large_ty, Etc_ty)

 7. SHOPPINGBAG - bag_id, Item_code, Total_price


================================================================================
������Ʈ 2�ܰ�

**ERD �����Ͽ����ϴ�.
1. ��ƼƼ shoppingmall�� ���ݽ��ϴ�.
2. ��ƼƼ shoppingbag �� weak entity�� �����Ͽ����ϴ�.
3. �� ��ƼƼ���� PK�� �����Ͽ����ϴ�. pk�� �̸��� ���� �� �ִ� ��츦 ����� id�� �����Ͽ����ϴ�.

os����, mysql ������ 
Server version: 5.7.24-0, ubuntu0.18.04.1 (Ubuntu)

================================================================================
index �߰�