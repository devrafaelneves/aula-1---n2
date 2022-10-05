-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para atividaden2
CREATE DATABASE IF NOT EXISTS `atividaden2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `atividaden2`;

-- Copiando estrutura para tabela atividaden2.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL DEFAULT '0',
  `cpf` varchar(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela atividaden2.clientes: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela atividaden2.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela atividaden2.produto: ~0 rows (aproximadamente)


-- Copiando estrutura do banco de dados para aula1
CREATE DATABASE IF NOT EXISTS `aula1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `aula1`;

-- Copiando estrutura para tabela aula1.alunos
CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cpf` (`cpf`),
  KEY `id_turma` (`id_turma`),
  CONSTRAINT `FK_alunos_turma` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aula1.alunos: ~5 rows (aproximadamente)
INSERT INTO `alunos` (`id`, `nome`, `semestre`, `cpf`, `id_turma`) VALUES
	(1, 'rafael', 1, '00000000000', 1),
	(2, 'joao', 2, '11111111111', 2),
	(3, 'hugo', 3, '22222222222', 3),
	(4, 'francisco', 4, '33333333333', 4),
	(5, 'jose', NULL, '66666666666', NULL);

-- Copiando estrutura para tabela aula1.turma
CREATE TABLE IF NOT EXISTS `turma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aula1.turma: ~4 rows (aproximadamente)
INSERT INTO `turma` (`id`, `descricao`) VALUES
	(1, '1° semestre'),
	(2, '2° semestre'),
	(3, '3° semestre'),
	(4, '4° semestre');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
