-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: zoologico
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `id_animal` varchar(4) NOT NULL,
  `nombre_animal` varchar(40) NOT NULL,
  `apodo_animal` varchar(40) DEFAULT NULL,
  `descripcion_animal` text NOT NULL,
  `familia_animal` varchar(40) NOT NULL,
  `id_empleado` varchar(4) NOT NULL,
  `id_entrega` varchar(4) NOT NULL,
  PRIMARY KEY (`id_animal`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_entrega` (`id_entrega`),
  CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`id_entrega`) REFERENCES `comida` (`id_entrega`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES ('0500','Cotorra','Pepe','Animal volador de colores verdes que es hablador','Aves','0001','1006'),('0501','Guacamayo','Rio','Animal de colores muy llamativos','Aves','0002','1007'),('0502','Tucan','','Animal de gran pico y colores llamativos','Aves','0003','1008'),('0503','Pavo Real','','Animal de plumas muy lindas y coloridas','Aves','0004','1006'),('0504','Condor','Condorito','El rey de los cielos chilenos','Aves','0005','1007'),('0505','Loro','','Animal que puede imitar el hablar humano','Aves','0006','1008'),('0506','Buho','Chuncho','Posee la capacidad de rotar su cabeza en 360┬░','Aves','0007','1006'),('0507','Ciervo','Bambi','Animal de grande astas','Mamifero','0008','1012'),('0508','Leon','Simba','Posee gran melena rey de los animales','Mamifero','0009','1003'),('0509','Cebra','Marty','Posee frangas como un piano','Mamifero','0010','1000'),('0510','Elefante','','Tiene una gran trompa','Mamifero','0011','1001'),('0511','Jirafa','Melman','Animal hevivoro de gran cuello','Mamifero','0012','1013'),('0512','Hipopotamo','Gloria','Animal que posee una de las mordidas m├ís fuertes del mundo','Mamifero','0013','1014'),('0513','Tigre de Bengala','Diego','Uno de los grandes felinos de colores muy lindo','Mamifero','0014','1004'),('0514','Puma','','Es el 2do felino m├ís grande de america','Mamifero','0015','1005'),('0515','Llama','Fortnite','Escupen para demostrar dominio de su territorio','Mamifero','0016','1012'),('0516','Alpaca','','Originaria del norte de Chile','Mamifero','0017','1013'),('0517','Huemul','','Es un animal simbolo del escudo de chile','Mamifero','0018','1002'),('0518','Zorro','Nick Wilde','Animal carrone├▒o de bellos colores','Mamifero','0019','1003'),('0519','Pantera','','Felino de gran tama├▒o con enorme velocidad para cazar','Mamifero','0020','1004'),('0520','Koala','','Animal peresoso y lento','Mamifero','0021','1014'),('0521','Tortuga Marina','Chiky','Animal marino de hermosos colores','Mamifero','0022','1009'),('0522','Cocodrilo','','Uno de los reptiles m├ís grandes y con una poderoza mordida','Mamifero','0023','1005');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comida`
--

DROP TABLE IF EXISTS `comida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comida` (
  `id_entrega` varchar(4) NOT NULL,
  `nombre_comida` varchar(20) NOT NULL,
  `id_proveedor` varchar(4) NOT NULL,
  PRIMARY KEY (`id_entrega`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `comida_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comida`
--

LOCK TABLES `comida` WRITE;
/*!40000 ALTER TABLE `comida` DISABLE KEYS */;
INSERT INTO `comida` VALUES ('1000','Frutas','0031'),('1001','Frutas','0032'),('1002','Frutas','0033'),('1003','Carne','0034'),('1004','Carne','0035'),('1005','Carne','0036'),('1006','Semillas','0037'),('1007','Semillas','0038'),('1008','Semillas','0039'),('1009','Pescado','0040'),('1010','Pescado','0041'),('1011','Pescado','0042'),('1012','Verduras','0043'),('1013','Verduras','0044'),('1014','Verduras','0045');
/*!40000 ALTER TABLE `comida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` varchar(4) NOT NULL,
  `nombre_empleado` varchar(20) NOT NULL,
  `apellido_empleado` varchar(20) NOT NULL,
  `password_empleado` varchar(8) NOT NULL,
  `email_empleado` varchar(20) NOT NULL,
  `telefono_empleado` varchar(9) NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('0001','David','Navarro','david123','davidn@gmail.com','998989765'),('0002','Karla','Ruiz','karla123','karlar@gmail.com','989877763'),('0003','Jose','Diaz','jose1234','josed@gmail.com','912312890'),('0004','Alejandra','Serrano','ale12345','alejandras@gmail.com','988744452'),('0005','Ana','Hernandez','ana12345','anah@gmail.com','991239900'),('0006','Lucia','Munoz','lucia123','luciam@gmail.com','912345121'),('0007','Rafael','Saez','rafa1234','rafaels@gmail.com','912322100'),('0008','Laura','Romero','laura123','laurar@gmail.com','988123090'),('0009','Juan','Rubio','juan1234','juanr@gmail.com','976777612'),('0010','Luis','Alfaro','luis1234','luisal@gmail.com','912009455'),('0011','Teresa','Molina','tere1234','teresamo@gmail.com','900891246'),('0012','Joaquin','Castillo','joaco123','joaquinca@gmail.com','997689334'),('0013','Elena','Lozano','elena123','elenalo@gmail.com','915647835'),('0014','Sergio','Picazo','sergio12','sergiop@gmail.com','998981126'),('0015','Manuela','Ortega','manuela1','manuelaor@gmail.com','912340987'),('0016','Andres','Fuentes','andres12','andresfu@gmail.com','979633718'),('0017','Camila','Araya','camila12','camilaar@gmail.com','990390418'),('0018','Omar','Martinez','omar1234','omarma@gmail.com','982584429'),('0019','Cesar','Veliz','cesar123','cesarve@gmail.com','971361371'),('0020','Antonio','Garcia','antonio1','antonioga@gmail.com','973433109'),('0021','Maria','Martinez','maria123','mariama@gmail.com','990675294'),('0022','Francisco','Lopez','pancho12','franciscol@gmail.com','912091286'),('0023','Isabel','Sanchez','isabel12','isabelsa@gmail.com','997536729'),('0024','Manuel','Gonzalez','manuel12','manuelgo@gmail.com','934651209'),('0025','Carmen','Gomez','carmen12','carmengo@gmail.com','900764103'),('0026','Jesus','Fernandez','jesus123','jesusfe@gmail.com','907085612'),('0027','Pilar','Moreno','pilar123','pilarmo@gmail.com','912345678'),('0028','Miguel','Jimenez','miguel12','miguelji@gmail.com','965667429'),('0029','Javiera','Perez','javiera1','javierape@gmail.com','998765432'),('0030','Antonia','Rodriguez','antonia1','antoniaro@gmail.com','912378912');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` varchar(4) NOT NULL,
  `nombre_proveedor` varchar(20) NOT NULL,
  `telefono_proveedor` varchar(9) NOT NULL,
  `email_proveedor` varchar(20) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES ('0031','Rosa Morcillo','910026378','rosamo@gmail.com'),('0032','Andres Cano','909087482','andresca@gmail.com'),('0033','Ramon Garrido','911206792','ramonga@gmail.com'),('0034','Raul Torres','942738920','raulto@gmail.com'),('0035','Mercedes Marin','933332897','mercedesma@gmail.com'),('0036','Alberto Cuenca','999908653','albertocu@gmail.com'),('0037','Enrique Gil','912309001','enriquegil@gmail.com'),('0038','Irene Molina','900091254','irenemo@gmail.com'),('0039','Alvaro Ortiz','912312322','alvaroor@gmail.com'),('0040','Beatriz Calero','943563445','beatrizca@gmail.com'),('0041','Angela Cebrian','909807608','angelace@gmail.com'),('0042','Diego Rodenas','977289123','diegoro@gmail.com'),('0043','Julian Alarcon','912221009','julianal@gmail.com'),('0044','Rocio Blazquez','988789987','rociobl@gmail.com'),('0045','Emilio Valero','912573889','emiliova@gmail.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-13 23:20:43
