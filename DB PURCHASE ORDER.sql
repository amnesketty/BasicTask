CREATE DATABASE PURCHASEORDER


-- CREATE TABLE logins  
--    (id int IDENTITY(1,1) NOT NULL,  
--    customer_id int NOT NULL,
--    username varchar(255) NOT NULL,    
--    password varchar(255) NOT NULL,
--    PRIMARY KEY (Id)
--    )

-- CREATE TABLE customers  
--    (id int IDENTITY(1,1) NOT NULL,  
--    forename varchar(255) NOT NULL,
--    surename varchar(255) NOT NULL,    
--    add1 varchar(255) NOT NULL,
--    add2 varchar(255),
--    add3 varchar(255),
--    postcode int,
--    phone varchar(20) NOT NULL,
--    email varchar(255),
--    registered bit NOT NULL, 
--    PRIMARY KEY (Id)
--    )

-- CREATE TABLE orders  
--    (id int IDENTITY(1,1) NOT NULL,
--    customer_id int NOT NULL,
--    registered bit NOT NULL,
--    deliver_add_id int NOT NULL,
--    payment_type varchar(255) NOT NULL,
--    date date NOT NULL,
--    status varchar(255) NOT NULL,
--    session varchar(255),
--    total int NOT NULL,
--    PRIMARY KEY (Id)
--    )

-- CREATE TABLE order_item  
--    (id int IDENTITY(1,1) NOT NULL,
--    order_id int NOT NULL,
--    product_id int NOT NULL,
--    quantity int NOT NULL,
--    PRIMARY KEY (Id)
--    )

-- CREATE TABLE products  
--    (id int IDENTITY(1,1) NOT NULL,
--    cat_id int NOT NULL,
--    name varchar(255) NOT NULL,
--    description varchar(255),
--    image varchar(255),
--    price int NOT NULL,
--    PRIMARY KEY (Id)
--    )
    
-- CREATE TABLE categories  
--    (id int IDENTITY(1,1) NOT NULL,
--    name varchar(255) NOT NULL,
--    description varchar(255),
--    image varchar(255),
--    PRIMARY KEY (Id)
--    )

CREATE TABLE delivery_addresses  
   (id int IDENTITY(1,1) NOT NULL,
   forename varchar(255) NOT NULL,
   surename varchar(255) NOT NULL,
   add1 varchar(255) NOT NULL,
   add2 varchar(255),
   add3 varchar(255),
   postcode varchar(255),
   phone varchar(20) NOT NULL,
   email varchar(255),
   PRIMARY KEY (Id)
   )

-- CREATE TABLE admins  
--    (id int IDENTITY(1,1) NOT NULL,
--    username varchar(255) NOT NULL,    
--    password varchar(255) NOT NULL,
--    PRIMARY KEY (Id)
--    )

INSERT DATA

-- INSERT logins (customer_id, username, password)  
--     VALUES (1, 'peggie_pallent', 'Pass123')

-- INSERT customers (forename, surename, add1, postcode, phone, email, registered)
--     VALUES ('Mathias','Foilster','73 Village Green Place',56528,'545-991-1112','mathias66@mail.com',0),
-- ('Jenetta','Helin','839 Hauk Trail',null,'686-355-4931','jenetta32@edu.com',1),
-- ('Reinhold','Martijn','758 Village Palm Green',null,'795-679-7136','reinhold@mail.com',0),
-- ('Lauritz','Provest','930 Clove Palace',null,'296-351-8061','lauritz@mail.com',0),
-- ('Con','Kupisz','46 Hauk Trail',null,'184-411-1830','con3847@edu.com',1),
-- ('Beatrisa','Tomowicz','33 Lakewood Gardens Place',null,'979-772-1232','beatrisa@mail.com',1),
-- ('Nathanial','Rupert','27 Northwestern Point',3025419,'636-290-1463','nethanial345@mail.com',0),
-- ('Etta','Edginton','36 Village Green Palace',48100,'862-845-2560','etta44@edu.com',1)


INSERT orders (customer_id, registered, deliver_add_id, payment_type, date, status, total)
    VALUES (6,0,17,'diners-club-us-ca','2019-5-31','Paid',182389),
(6,1,1,'jcb','2019-12-24','Cancelled',385376),
(2,0,4,'mastercard','2019-7-4','Cancelled',404804),
(10,1,13,'jcb','2019-7-16','Cancelled',428182),
(5,1,10,'visa-electron','2020-1-13','Cancelled',370261),
(6,1,3,'americanexpress','2019-10-22','Cancelled',440665),
(3,0,14,'jcb','2020-1-30','Cancelled',427954),
(6,0,11,'mastercard','2019-8-30','Cancelled',250107),
(2,0,4,'jcb','2019-6-3','Paid',144049),
(5,0,6,'jcb','2019-8-31','Pending',114408)

INSERT order_item (order_id, product_id, quantity)
    VALUES (4,8,4),
(8,10,11),
(8,4,11),
(1,2,3),
(7,9,15),
(1,4,13),
(10,7,6),
(9,10,12),
(7,6,11),
(6,2,16)

INSERT products (cat_id, name, description, image, price)
    VALUES (1, 'Truffle Paste', 'Future-proofed interactive forecast', 'http://dummyimage.com/107x194.png/ff4444/fffttt', 8791),
(6, 'Carrots - Mini Red Organic', 'Object-based methodical functionalities',  'http://dummyimage.com/121x200.png/ff4444/ffffft', 9675),
(4, 'Sprouts Dikon', 'Adaptive zero administration challenge', 'http://dummyimage.com/113x203.bmp/dddddd/000000', 9147),
(4, 'Mushrooms - Black', 'Dried, Synergistic background secured line', 'http://dummyimage.com/179x246.|pg/ccO00o/ffffff', 2019),
(6, 'Coffee - Flavoured', 'Future-proofed even-keeled firmware', 'http://dummyimage.com/192x243.bmp/Sfa2dd/ffffff', 5270),
(10, 'Juice - Orange', 'Progressive uniform solution', 'http://dummyimage.com/229x219.bmp/Sfa2dd/ffffff', 9780),
(1, 'Energy Drink - Franks Original', 'Secured actuating service-desk',  'http://dummyimage.com/241x144.|pg/ff4444/fffTft', 9676),
(9, 'Energy - Boo - Koo', 'Enterprise-wide mobile artificial intelligence', 'http://dummyimage.com/241x176.png/ff4444/fffttt', 2916),
(4, 'Tart - Lemon', 'Quality-focused object-oriente d process improvement', 'http://dummyimage.com/151x181.bmp/Sfa2dd/ffffff', 2099),
(5, 'Beef Tenderloin Aaa', 'Stand-alone systematic secured line', 'http://dummyimage.com/140x226.png/ccOOoo/fffttt', 6888)

INSERT INTO categories (name, description, image)
VALUES ('vegetables', 'Fus-Ro-Dah', 'http://theelderscroll.skyrim/UnrelentingForce.jpg'),
('vegetables', 'Yol-Tor-Suul', 'http://theelderscroll.skyrim/FireBreath.jpg'),
('fruits', 'Od-Ah-Viing', 'http://theelderscroll.skyrim/CallDragonOdahviing.jpg'),
('fruits', 'Mul-Qah-Diiv', 'http://theelderscroll.skyrim/DragonAspect.jpg'),
('vegetables', 'Joor-Zah-Frul', 'http://theelderscroll.skyrim/Dragonrend.jpg'),
('vegetables', 'Fo-Krah-Diin', 'http://theelderscroll.skyrim/FrostBreath.jpg'),
('vegetables', 'Wuld-Nah-Kest', 'http://theelderscroll.skyrim/WhirlwindSprint.jpg'),
('fruits', 'Su-Grah-Dun', 'http://theelderscroll.skyrim/ElementalFuryjpg')

INSERT delivery_addresses (forename, surename, add1, postcode, phone, email)
    VALUES ('Harry', 'Blamires', '5 Northwestern Point', 'K67', '709-178-2038', 'hblamires0@lulu.comy'),
('Adi', 'Carlon', '37136 Macpherson Street',NULL, '522-462-4973', 'acarlon1@discuz.net'),
('Barty', 'Monkley', '55 Hauk Trail',NULL, '879-792-1014', 'bmonkley2@ihg.com'),
('Salem', 'Ewert', '81078 Oakridge Circle',NULL, '223-256-8714', 'sewert3@hostgator.com'),
('Vilhelmina', 'Bairnsfather', '72949 Eastwood Street', '2402', '632-170-9234', 'vbairnsfather4@psu.edu'),
('Hayyim', 'Lisamore', '388 Birchwood Place', '71122', '901-562-9922', 'hlisamoreS@prweb.com'),
('Mareah', 'Gutans', '6 Tony Terrace',NULL, '142-802-2019', 'mgutans6@ucoz.com'),
('Garret', 'Grayston', '64394 Clove Place',NULL, '580-799-7576', 'ggrayston7@prweb.com'),
('Roxine', 'Booler', '69 Lakewood Gardens Place', '241551', '857-659-8653', 'rbooler8@springer.com'),
('Filbert', 'Brougham', '8756 Village Green Place', '5049', '476-610-5525', 'fobrougham9@si.edu')



SOAL NOMOR 1 -> Create query to show orders by customer
select orders.id as id, orders.customer_id as customer_id, (customers.forename +' '+ customers.surename) as customer,
orders.registered as registered, orders.deliver_add_id as address, orders.payment_type as payment_type, 
orders.status as status, orders.total as totalpurchase from orders
inner join customers on orders.customer_id = customers.id

SOAL NOMOR 2 -> Create query to show sum of orders by order status (“paid”, “cancelled”,"pending")
SELECT status, COUNT(id) from orders group by status

SOAL NOMOR 3 -> Create query to show products by categories
select string_agg(products.name, ', ') as productname, categories.name as catname from products
inner join categories on products.cat_id = categories.id group by categories.name

SOAL NOMOR 4 -> Create query to show address of customers orders
select orders.id as id, orders.customer_id as custid, orders.deliver_add_id as deliveryid, delivery_addresses.add1 as address  from orders
inner join delivery_addresses on orders.deliver_add_id = delivery_addresses.id 

SOAL NOMOR 5 -> Create query to show all product on orders
SELECT name from products where id in 
(select product_id from order_item where order_id = 1) atau
SELECT string_agg(products.name, ', ') as product, orders.id as orderid from products
inner join order_item on products.id = order_item.product_id 
inner join orders on order_item.order_id = orders.id group by orders.id