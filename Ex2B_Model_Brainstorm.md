# Requirements and Conceptual Model

Paola Martinez, Maritza Ruiz, Onur Karaer, Longley Pham, Jessica Navarro

1b) Customer identifiers, customer information, Dog identifiers, dog description, Walker information and identifiers, walk duration and job description

1c) Customer - customer\_id, name, phone, address, payment\_method, membership\_type, customer\_rating
Dogs - dog\_id, customer\_id, dog name, breed, dog\_rating
Walkers - walker\_id, name, phone, walker\_rating
Walks - walk\_id, dog\_id, walker\_id, walk\_date, walk\_time, duration\_time, amount

\#Logical Model
2a)Customer, Dogs, Walkers and Walk
2b)
Customer -> customer\_id, name, phone, address, customer\_rating
Dogs -> dog\_id, customer\_id, dog name, breed, dog\_rating
Walkers -> walker\_id, name, phone, walker\_rating,
walks -> walk\_id, dog\_id, walker\_id, walk\_date, walk\_time, duration
Transactions -> transaction\_id, walk\_id, amount, payment\_method

2c)Customer\_id is connected to Dogs. Dog\_id is related to Walks and Walkers are related to Walks via Walker\_id. Walk\_id is shared between walks and transactions.

2d)Our resolving table should be Walks table including Walker\_id and dog\_id. Because one walker can walk multiple dogs, and one dog can be walked by multiple walkers. This symbolizes many to many relationship between walkers and dogs, hence we have a walks table.



4a) Similarities:  

All ERD tables had the same lay outs (schema) and it highlighted the relationship between tables (1:M, M:1, 1:1, M:M) 

It also identified the same PK and FK for all ERD's created 

&#x20;

4b) Differences: 

Some ERD's were cycles and some were dead ends for example Onur's ERD had a resolving table in the middle (Walks) because all tables are either connected or indirectly connected to Walks table. 

Paola's ERD labeled the keys in the bottom of the ERD instead of the top 

Jessica and Longley's ERD included payment\_methods 

Longley's Transactions table included tip amount

Some of us added notes under Walks and Dogs 

Tip: Add walker in front of phone, email, etc to Walker table 



