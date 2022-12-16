-- join (inner join)

-- 이름, 생일, 구매물품, 가격, 구매개수 출력
select name 이름, birthyear 생일, prodname 구매물품, price 가격, amount 구매개수
from usertbl u join buytbl b
where u.userID = b.userID;

-- 구매 물품별 총 구매액 
select prodname 구매물품, sum(price) 총구매액, count(*) 그룹핑수
from buytbl
group by prodname;


-- 물품을 제일 구매액이 큰 사용자
select name 사용자, price * amount 총구매액
from usertbl u join buytbl b
where u.userID = b.userID
order by price * amount desc
limit 1;

-- 물품을 구매하지 않는 사용자
select name 사용자
from usertbl u left join buytbl b
on u.userID = b.userID
where prodName is null;