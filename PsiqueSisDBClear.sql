-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 29-Mar-2018 às 03:31
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psiquesis`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
CREATE TABLE IF NOT EXISTS `agendamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(100) DEFAULT NULL,
  `observacao` varchar(100) DEFAULT NULL,
  `dataAgendada` datetime DEFAULT NULL,
  `dataCriacao` datetime DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `idUsuarioCriador` int(11) DEFAULT NULL,
  `idFuncionarioDestino` int(11) DEFAULT NULL,
  `idPessoaAtendida` int(11) DEFAULT NULL,
  `tempoDuracao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuarioCriador` (`idUsuarioCriador`),
  KEY `idFuncionarioDestino` (`idFuncionarioDestino`),
  KEY `idPessoaAtendida` (`idPessoaAtendida`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `agendamento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

DROP TABLE IF EXISTS `atividade`;
CREATE TABLE IF NOT EXISTS `atividade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atividade`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `idPessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPessoa` (`idPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

DROP TABLE IF EXISTS `historico`;
CREATE TABLE IF NOT EXISTS `historico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `idPessoa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPessoa` (`idPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=1419 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `historico`
--



-- --------------------------------------------------------

--
-- Estrutura da tabela `localizacao`
--

DROP TABLE IF EXISTS `localizacao`;
CREATE TABLE IF NOT EXISTS `localizacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bairro` varchar(100) DEFAULT NULL,
  `telefone1` varchar(11) DEFAULT NULL,
  `telefone2` varchar(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `localizacao`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `maquina`
--

DROP TABLE IF EXISTS `maquina`;
CREATE TABLE IF NOT EXISTS `maquina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `mac` varchar(50) NOT NULL,
  `porta` varchar(50) NOT NULL,
  `dataAcesso` datetime DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `maquina`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamento`
--

DROP TABLE IF EXISTS `orcamento`;
CREATE TABLE IF NOT EXISTS `orcamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `tipo` varchar(1) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idFuncionario` (`idFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `orcamento`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeroPasta` varchar(10) DEFAULT NULL,
  `capaz` varchar(1) DEFAULT NULL,
  `dataInicio` datetime DEFAULT NULL,
  `idPlano` int(11) DEFAULT NULL,
  `idPessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPlano` (`idPlano`),
  KEY `idPessoa` (`idPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paciente`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `pacientepossuilocalizacao`
--

DROP TABLE IF EXISTS `pacientepossuilocalizacao`;
CREATE TABLE IF NOT EXISTS `pacientepossuilocalizacao` (
  `idLocalizacao` int(11) NOT NULL,
  `idPaciente` int(11) NOT NULL,
  PRIMARY KEY (`idLocalizacao`,`idPaciente`),
  KEY `idPaciente` (`idPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pacientepossuilocalizacao`
--

INSERT INTO `pacientepossuilocalizacao` (`idLocalizacao`, `idPaciente`) VALUES
(1, 0),
(2, 0),
(1, 14),
(5, 14),
(2, 15),
(6, 16),
(8, 16),
(4, 17),
(4, 18),
(6, 19),
(4, 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pacientepossuiresponsavel`
--

DROP TABLE IF EXISTS `pacientepossuiresponsavel`;
CREATE TABLE IF NOT EXISTS `pacientepossuiresponsavel` (
  `idPaciente` int(11) NOT NULL,
  `idResponsavel` int(11) NOT NULL,
  `parentesco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPaciente`,`idResponsavel`),
  KEY `idResponsavel` (`idResponsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pacientepossuiresponsavel`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `pacienterealizaatividade`
--

DROP TABLE IF EXISTS `pacienterealizaatividade`;
CREATE TABLE IF NOT EXISTS `pacienterealizaatividade` (
  `idPaciente` int(11) NOT NULL,
  `idAtividade` int(11) NOT NULL,
  `dataAtividade` date NOT NULL,
  PRIMARY KEY (`idPaciente`,`idAtividade`,`dataAtividade`),
  KEY `idAtividade` (`idAtividade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pacienterealizaatividade`
--



-- --------------------------------------------------------

--
-- Estrutura da tabela `parcela`
--

DROP TABLE IF EXISTS `parcela`;
CREATE TABLE IF NOT EXISTS `parcela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataVencimento` datetime DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `situacao` varchar(1) DEFAULT NULL,
  `valor` decimal(18,2) DEFAULT NULL,
  `idOrcamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idFinanceiro` (`idOrcamento`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `parcela`
--



-- --------------------------------------------------------

--
-- Estrutura da tabela `permissao`
--

DROP TABLE IF EXISTS `permissao`;
CREATE TABLE IF NOT EXISTS `permissao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `permissao`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rg` varchar(10) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `telefone1` varchar(11) DEFAULT NULL,
  `telefone2` varchar(11) DEFAULT NULL,
  `nomeLogin` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoapossuipermissao`
--

DROP TABLE IF EXISTS `pessoapossuipermissao`;
CREATE TABLE IF NOT EXISTS `pessoapossuipermissao` (
  `idPessoa` int(11) NOT NULL,
  `idPermissao` int(11) NOT NULL,
  PRIMARY KEY (`idPessoa`,`idPermissao`),
  KEY `idPermissao` (`idPermissao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoapossuipermissao`
--



-- --------------------------------------------------------

--
-- Estrutura da tabela `plano`
--

DROP TABLE IF EXISTS `plano`;
CREATE TABLE IF NOT EXISTS `plano` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomeInstituicao` varchar(100) DEFAULT NULL,
  `quantiConsulta` int(11) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `plano`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
CREATE TABLE IF NOT EXISTS `responsavel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPessoa` (`idPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `responsavel`
--



--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `orcamento`
--
ALTER TABLE `orcamento`
  ADD CONSTRAINT `idFuncionario` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
