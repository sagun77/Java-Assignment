CREATE TABLE users(
   "id" SERIAL PRIMARY KEY,
   "firstname" VARCHAR(50) NOT NULL,
   "lastname" VARCHAR(50) NOT NULL,
   "email" VARCHAR(50) UNIQUE NOT NULL,
   "phone" bigint NOT NULL,
   "password" VARCHAR(600) DEFAULT 0,
   "deleted" BOOLEAN DEFAULT FALSE,
   "create_date" DATE DEFAULT NULL,
   "edit_date" DATE DEFAULT NULL,
   constraint valid_number
         check (phone <= 9999999999)
);

CREATE TABLE role(
   "id" SERIAL PRIMARY KEY,
   "role" VARCHAR(15) NOT NULL,
   "description" VARCHAR(15) NOT NULL,
   "deleted" BOOLEAN DEFAULT FALSE
);

CREATE TABLE user_role (
  id SERIAL,
  user_id int NOT NULL,
  role_id int NOT NULL,
  status BOOLEAN DEFAULT TRUE,
   deleted BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (user_id,role_id,id)
);

INSERT INTO role (id, role, description) VALUES
	(1, 'ADMIN', ''),
	(2, 'USER', ''),
	(3, 'AUTHOR','');