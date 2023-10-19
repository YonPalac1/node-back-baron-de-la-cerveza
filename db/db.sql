CREATE DATABASE baronDeLaCerveza;

USE baronDeLaCerveza;
create table categories (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name varchar(255) DEFAULT null,
	primary key (id)
);
create table brands (
	id INT(11) NOT NULL AUTO_INCREMENT,
	name varchar(255) DEFAULT null,
	primary key (id)
);
CREATE TABLE products (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) DEFAULT NULL,
    price DECIMAL(10,2) NOT NULL,
    discount DECIMAL(10,2) NOT NULL,
    description TEXT NOT NULL,
    alcohol_content DECIMAL(10,2) NOT NULL,
    images VARCHAR(45) NOT NULL,
    category_id INT NOT NULL,
    brand_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES categories (id),
    FOREIGN KEY (brand_id) REFERENCES brands (id)
);


INSERT INTO categories (name) VALUES
('categori 1'), ('categori 2'),('categori 3'),('categori 4'),('categori 5'),('categori 6'),('categori 7'),('categori 8');
INSERT INTO brands (name) VALUES
('marca 1'), ('marca 2'),('marca 3'),('marca 4'),('marca 5'),('marca 6'),('marca 7'),('marca 8');

INSERT INTO products (name, price, discount, description, alcohol_content, images, category_id, brand_id) VALUES
('Happy Lager', 220.00, 0.00, 'Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad.', 70, 'image.png', 1, 1), ('Happy Lager', 220.00, 0.00, 'Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad.', 70, 'image.png', 2, 2), ('Happy Lager', 220.00, 0.00, 'Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad.', 70, 'image.png', 3, 3), ('Happy Lager', 220.00, 0.00, 'Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad.', 70, 'image.png', 4, 4), ('Happy Lager', 220.00, 0.00, 'Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad.', 70, 'image.png', 5, 5), ('Happy Lager', 220.00, 0.00, 'Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad.', 70, 'image.png', 6, 6), ('Happy Lager', 220.00, 0.00, 'Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad.', 70, 'image.png', 7, 7), ('Happy Lager', 220.00, 0.00, 'Cerveza estilo New England IPA. Se caracteriza por su intenso aroma de lúpulos del nuevo Mundo y de su bajo amargor. Lleva trigo malteado para dar su característica opalescencia. Altamente refrescante, frutal y de muy fácil tomabilidad.', 70, 'image.png', 8, 8);