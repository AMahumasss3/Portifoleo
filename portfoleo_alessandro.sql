-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 01:30 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfoleo_alessandro`
--

-- --------------------------------------------------------

--
-- Table structure for table `artigos`
--

CREATE TABLE `artigos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto` text NOT NULL,
  `data_publicacao` datetime NOT NULL,
  `autor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artigos`
--

INSERT INTO `artigos` (`id`, `titulo`, `texto`, `data_publicacao`, `autor`) VALUES
(1, 'A história da web', 'Este artigo traze um breve historial sobre a web , como tudo começou , como evoluiu e os próximos passos , também traz consigo algumas recomendações e critícas.', '2021-09-04 00:00:00', 'Alessandro Mahumane');

-- --------------------------------------------------------

--
-- Table structure for table `contactos`
--

CREATE TABLE `contactos` (
  `telefone1` varchar(30) NOT NULL,
  `telefone2` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `whatsapp` varchar(30) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `linkedIn` varchar(50) NOT NULL,
  `gitHub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactos`
--

INSERT INTO `contactos` (`telefone1`, `telefone2`, `email`, `facebook`, `whatsapp`, `instagram`, `linkedIn`, `gitHub`) VALUES
('+258849551775', '+258879308110', 'alessandromahumane@gmail.com', 'Alessandro Mahumane', '+258849551775', '_mahumasss3', 'Alessandro Mahumane', 'AMahumasss3');

-- --------------------------------------------------------

--
-- Table structure for table `dados_pessoais`
--

CREATE TABLE `dados_pessoais` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_de_nascimento` date NOT NULL,
  `idade` int(50) NOT NULL,
  `BI` varchar(20) NOT NULL,
  `NUIT` int(11) NOT NULL,
  `genero` enum('M','F','','') NOT NULL,
  `nacionalidade` varchar(60) NOT NULL,
  `estado_civil` enum('solteiro','solteira','casado','casada') NOT NULL,
  `naturalidade` varchar(50) NOT NULL,
  `sobre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dados_pessoais`
--

INSERT INTO `dados_pessoais` (`id`, `nome`, `data_de_nascimento`, `idade`, `BI`, `NUIT`, `genero`, `nacionalidade`, `estado_civil`, `naturalidade`, `sobre`) VALUES
(1, 'Alessandro Graca Franco Mahumane', '2002-01-03', 20, '110102048342N', 132520240, 'M', 'Mocambicana', 'solteiro', '0', 'Jovem apaixonado pela informatica sempre querendo aprender novas tecnologias sobre o mundo da informatica, actualmente sou estagiario da Universidade Joaquim Chissano no departamento de informatica , estou no terceiro ano de faculdade na UJC fazendo o curso de ETSI e sou jogador de basquet atualmente jogo no Desportivo de Maputo como extremo-poste , e tambem faco producao de musicas do estilo hip hop.');

-- --------------------------------------------------------

--
-- Table structure for table `exp-prof`
--

CREATE TABLE `exp-prof` (
  `id` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `organizacao` varchar(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exp-prof`
--

INSERT INTO `exp-prof` (`id`, `periodo`, `organizacao`, `cargo`, `descricao`) VALUES
(1, 6, 'Universidade Joaquim Chissano', 'Estagiario ', 'Estagiario pela Universidade Joaquim Chissano, concretamente na Faculdade de Ciências e Tecnologias ');

-- --------------------------------------------------------

--
-- Table structure for table `formacao`
--

CREATE TABLE `formacao` (
  `id` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `instituicao_ensino` varchar(100) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formacao`
--

INSERT INTO `formacao` (`id`, `periodo`, `instituicao_ensino`, `tipo`, `nome`) VALUES
(1, 5, 'Escola Primaria Maxaquene Khovo', 'Primario', 'Ensino Primario da primeira a quinta classe'),
(2, 2, 'Escola Comunitária Santo António da Polana', 'Primaria Completa', 'Ensino da sexta a sétima classe '),
(3, 3, 'Escola Comunitária Nossa Senhora das Vitórias', 'Secundario', 'Ensino secundario da oitava a 10a'),
(4, 2, 'Escola Secundária Francisco Manyanga', 'Secundario completo', 'Ensino secundario da 11a a 12a'),
(5, 3, 'UNIVERSIDADE JOAQUIM CHISSANO', 'Faculdade', 'Ensino superior atualmente no 3o ano');

-- --------------------------------------------------------

--
-- Table structure for table `habilidades`
--

CREATE TABLE `habilidades` (
  `id` int(11) NOT NULL,
  `habilidades` varchar(100) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `habilidades`
--

INSERT INTO `habilidades` (`id`, `habilidades`, `descricao`) VALUES
(1, 'Ingles fluente', 'Capacidade de escrita fluente e de conversas fluentes na lingua inglesa'),
(2, 'Trabalho sob pressao', 'Capacidade de trabalhar sob pressão sem ficar ancioso, nervoso , sempre calculista pelo tempo necessário e bem abragente .'),
(3, 'Lideranca', 'Capacidade de liderar um grupo a fazer um determinado trabalho a tempo e hora'),
(4, 'Eficiencia ', 'Eficaz nos seus trabalhos '),
(5, 'Inovador e vontade de aprender', 'Inovando sempre os seus trabalhos e querendo aprender mais sobre várias matérias ');

-- --------------------------------------------------------

--
-- Table structure for table `projecto`
--

CREATE TABLE `projecto` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `periodo` int(11) NOT NULL,
  `funcao` text NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projecto`
--

INSERT INTO `projecto` (`id`, `nome`, `periodo`, `funcao`, `website`) VALUES
(1, 'Sistema de Gestão de Mercearia', 3, 'Sistema para gerir uma mercearia', 'www.sgm-alessandromahumane.com'),
(2, 'Electric Solutions', 3, 'Sistema para manutencao da base de dados da Empresa electric solutions', 'www.electricsolutions.com');

-- --------------------------------------------------------

--
-- Table structure for table `servico`
--

CREATE TABLE `servico` (
  `id` int(11) NOT NULL,
  `servico` varchar(200) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servico`
--

INSERT INTO `servico` (`id`, `servico`, `descricao`) VALUES
(1, 'Desenvolvimento de aplicacoes em Java', 'Programo aplicacoes em java , mais concretamente no swing'),
(2, 'Desenvolvimento de aplicacoes em C#', 'Programo aplicacoes em C#'),
(3, 'Frontend e backend developer (webmaster)', 'Desenvolvo aplicacoes web utilizando php e javascript '),
(4, 'Desenho realistas', 'Faco desenhos realistas ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artigos`
--
ALTER TABLE `artigos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dados_pessoais`
--
ALTER TABLE `dados_pessoais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exp-prof`
--
ALTER TABLE `exp-prof`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formacao`
--
ALTER TABLE `formacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projecto`
--
ALTER TABLE `projecto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artigos`
--
ALTER TABLE `artigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dados_pessoais`
--
ALTER TABLE `dados_pessoais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exp-prof`
--
ALTER TABLE `exp-prof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `formacao`
--
ALTER TABLE `formacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projecto`
--
ALTER TABLE `projecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
