

CREATE TABLE advert (
    id_annonce INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    postal_code INT(8) NOT NULL,
    city VARCHAR (255) NOT NULL,
    type VARCHAR (255) NOT NULL,
    price INT(11) NOT NULL, 
    reservation_message VARCHAR (255) NOT NULL,
    PRIMARY KEY (id_annonce)
) ENGINE=InnoDB;

