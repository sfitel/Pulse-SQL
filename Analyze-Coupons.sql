select * from pos.dbo.Orders
where order_date = '2014-10-28'
and Order_Number = '62'
--and coupon_total > '0'

select * from pos.dbo.OrderCoupons
where order_date = '2014-10-28'
and Order_Number = '62'