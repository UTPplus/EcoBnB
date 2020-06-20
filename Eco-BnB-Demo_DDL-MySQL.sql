create database eco_bnb;
use eco_bnb;
CREATE TABLE users (
 id int(10) unsigned NOT NULL AUTO_INCREMENT,
 name varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
 email varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
 password varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
 PRIMARY KEY (`id`),
 UNIQUE KEY email (email)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
    create table tour
	(tour_id		int(10), 
	 title			varchar(250), 
	 duration		varchar(20),
     location		varchar(20),
	 cost		int(10),
     discription			varchar(250),
	 primary key (tour_id)
	);
    create table booking
	(b_id		int(10), 
     tour_id		int(10),
	 fullname			varchar(50), 
	 email		varchar(20),
     phone_number		varchar(20),
	 primary key (b_id),
     foreign key (tour_id) references tour(tour_id)
		on delete set null
	);

INSERT INTO users VALUES('' , 'Ulugbek', 'ulug@gamil.com', '123456');
INSERT INTO users VALUES('' , 'Alisher', 'alish@gamil.com', '123456');
INSERT INTO users VALUES('' , 'Azam', 'azam@gamil.com', '123456');

INSERT INTO tour VALUES(1, 'Uzbekistan Cultural and Historical Tour' , '5 days','Khiva', '1420', 'Discover Uzbekistan in your 8 days trip in the country. 
You will start from the capital city Tashkent, visiting its old and new town with Madrasah, Mosque and old Bazaar of Tashkent as well as its modern part with museums, galleries, workshops and beautiful squares and parks.

Most highlights of your trip will be Registan square in Samarkand, original Koran  of 7 Century in Tashkent Hasti Imam complex, Kalyan Minaret and Trade Domes of Bukhara, the birth place Temur in Shahrisabz, 
Open city museum of Khiva with its many minarets and madrasah.');

INSERT INTO tour VALUES(2, '8 Days Uzbekistan Tour - 4 Gems Of Uzbekistan' , '8 days','Tashkent to Khiva', '1540', '4 Gems Of Uzbekistan (8 Days Uzbekistan Tour) covers the four must-visit cities of Uzbekistan. 
The tour begins in Tashkent - the biggest city of Central Asia and the modern capital of Uzbekistan. To its visitors and guests, Tashkent offers a unique mixture of the up-to-date infrastructure and city architecture 
with prominent historical and archaeological monuments. Next destination is Khiva - the ancient capital of Kharezm emirate and an important World Heritage site. A walking tour will reveal the mysteries of this legendary 
town leaving the unforgettable impressions. ');

INSERT INTO booking VALUES(1, 2, 'Ulugbek Tulaev', 'ulug@gamil.com', '888888888');


