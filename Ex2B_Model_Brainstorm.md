 # Requirements and Conceptual Model
 Paola Martinez, Maritza Ruiz, Onur Karaer, Longley Pham, Jessica Navarro

1b) Customer identifiers, customer information, Dog identifiers, dog description, Walker information and identifiers, walk duration and job description

1c) Customer - customer_id, name, phone, address, payment_method, membership_type, customer_rating
Dogs - dog_id, customer_id, dog name, breed, dog_rating
Walkers - walker_id, name, phone, walker_rating
Walks - walk_id, dog_id, walker_id, walk_date, walk_time, duration_time, amount

 #Logical Model
 2a)Customer, Dogs, Walkers and Walk
 2b)
 Customer -> customer_id, name, phone, address, customer_rating
Dogs -> dog_id, customer_id, dog name, breed, dog_rating
Walkers -> walker_id, name, phone, walker_rating, 
walks -> walk_id, dog_id, walker_id, walk_date, walk_time, duration
Transactions -> transaction_id, walk_id, amount, payment_method

2c)Customer_id is connected to Dogs. Dog_id is related to Walks and Walkers are related to Walks via Walker_id. Walk_id is shared between walks and transactions.

2d)Our resolving table should be Walks table including Walker_id and dog_id. Because one walker can walk multiple dogs, and one dog can be walked by multiple walkers. This symbolizes many to many relationship between walkers and dogs, hence we have a walks table. 