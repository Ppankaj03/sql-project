use pankaj;
select*from mobile;

#check moblienfeatures and price list#
select phone_name,price from mobile;
# find out the price of 5 most expensive phone#
select * from mobile order by price desc limit 5;
# find out the price of 5 most cheapest phone#
select * from mobile order by price asc limit 5;
#list of top samsung phione with [price and all features#
select * from mobile where brands="samsung" order by price  desc limit 5;

#must have andriod phone list then top 5 high price andriod phone#
select * from mobile  where operating_system_type="android" order by price  desc limit 5;

##must have andriod phone list then top 5 lowest  price andriod phone#
select * from mobile  where operating_system_type="android" order by price  asc limit 5;

#must have ios phone list then top 10 high  price andriod phone#
select * from mobile  where operating_system_type="IOS" order by price  desc limit 10;

##must have ios phone list then top 10 lower  price andriod phone#
select * from mobile  where operating_system_type="IOS" order by price  asc limit 10;

# wrrite  aquery which phone support 5g and also top 5 phon with 5g support
select * from mobile where 5g_availability="yes"  order by price desc limit 5;

# total price of all moblie is to be found with brand name#
select brands,sum(price) from mobile group by brands;

