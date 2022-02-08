-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Fev-2022 às 01:41
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_controle_renda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cartoes`
--

CREATE TABLE `tb_cartoes` (
  `cod_cartao` int(11) NOT NULL,
  `nome_cartao` varchar(15) DEFAULT NULL,
  `venc_fatura` int(11) DEFAULT NULL,
  `limite_cartao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_cartoes`
--

INSERT INTO `tb_cartoes` (`cod_cartao`, `nome_cartao`, `venc_fatura`, `limite_cartao`) VALUES
(1, 'Santander', 20, 1160),
(2, 'bb', 20, 2573),
(3, 'nubank', 22, 400),
(4, 'meu', 2, 2),
(5, 'meu', 2, 2),
(6, 'meu', 0, 2),
(7, 'dd', 5, 5),
(8, 'meu', 11, 20),
(9, 'meu', 11, 20),
(10, 'nome_cartaoefew', 0, 0),
(11, 'nome_cartaoefew', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_div_cartoes`
--

CREATE TABLE `tb_div_cartoes` (
  `cod_div` int(11) NOT NULL,
  `nome_div_cartao` varchar(15) DEFAULT NULL,
  `total_div_cartao` float DEFAULT NULL,
  `div_parcelada` char(1) DEFAULT NULL,
  `valor_parcela` float DEFAULT NULL,
  `primeira_parcela` date DEFAULT NULL,
  `ultima_parcela` date DEFAULT NULL,
  `cod_cartao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_div_cartoes`
--

INSERT INTO `tb_div_cartoes` (`cod_div`, `nome_div_cartao`, `total_div_cartao`, `div_parcelada`, `valor_parcela`, `primeira_parcela`, `ultima_parcela`, `cod_cartao`) VALUES
(1, 'Assistencia', 250, 'n', 250, '0000-00-00', '0000-00-00', 2),
(2, 'xiaomi mae', 1000, 's', 250, '2021-09-29', '2022-01-27', 1),
(3, 'dia a dia', 77, 'n', 77, '2021-10-19', '2021-10-19', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_div_fixas`
--

CREATE TABLE `tb_div_fixas` (
  `cod_fixa` int(11) NOT NULL,
  `nome_fixa` varchar(20) DEFAULT NULL,
  `valor_fixa` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_div_fixas`
--

INSERT INTO `tb_div_fixas` (`cod_fixa`, `nome_fixa`, `valor_fixa`) VALUES
(1, 'advogado', '500'),
(2, 'dentista', '120'),
(3, 'cabelo', '80'),
(4, 'Chip', '60');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_div_verbais`
--

CREATE TABLE `tb_div_verbais` (
  `cod_div_verbal` int(11) NOT NULL,
  `nome_div_verbal` varchar(10) DEFAULT NULL,
  `valor_div_verbal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_div_verbais`
--

INSERT INTO `tb_div_verbais` (`cod_div_verbal`, `nome_div_verbal`, `valor_div_verbal`) VALUES
(1, 'Cones Clau', 19),
(2, 'hinelo cla', 55);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_hora_extra`
--

CREATE TABLE `tb_hora_extra` (
  `cod_hora_extra` int(11) NOT NULL,
  `data_hora_extra` date DEFAULT NULL,
  `domingo_hora_extra` float DEFAULT NULL,
  `normal_hora_extra` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_salario_liquido`
--

CREATE TABLE `tb_salario_liquido` (
  `cod_sal_liquido` int(11) NOT NULL,
  `sal_bruto` float DEFAULT NULL,
  `desc_trans` float NOT NULL,
  `desc_ref` float NOT NULL,
  `desc_cesta` float NOT NULL,
  `desc_inss` float NOT NULL,
  `vale` float DEFAULT NULL,
  `dia_5` float DEFAULT NULL,
  `sal_liquido` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_salario_liquido`
--

INSERT INTO `tb_salario_liquido` (`cod_sal_liquido`, `sal_bruto`, `desc_trans`, `desc_ref`, `desc_cesta`, `desc_inss`, `vale`, `dia_5`, `sal_liquido`) VALUES
(1, 1591, 95.46, 6.82, 2.97, 138.16, 795.5, NULL, 1347.59),
(2, 1591, 95.46, 6.82, 2.97, 138.16, 795.5, 552.09, 1347.59),
(3, 1591, 95.46, 6.82, 2.97, 138.16, 795.5, 552.09, 1347.59);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_salario_total`
--

CREATE TABLE `tb_salario_total` (
  `cod_salario_total` int(11) NOT NULL,
  `data_calculo` date DEFAULT NULL,
  `total_recebido` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_salario_total`
--

INSERT INTO `tb_salario_total` (`cod_salario_total`, `data_calculo`, `total_recebido`) VALUES
(1, '0000-00-00', 10000),
(2, '2020-10-10', 10000),
(3, '2020-10-10', 1591),
(4, '2020-10-10', 7.23182),
(5, '2020-10-10', 361.591),
(6, '2020-10-10', 913.681),
(7, '2020-10-10', 1087.24);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_total_dividas`
--

CREATE TABLE `tb_total_dividas` (
  `cod_total_dividas` int(11) NOT NULL,
  `div_car_total` float DEFAULT NULL,
  `div_fixa_total` float DEFAULT NULL,
  `div_verbais_total` float DEFAULT NULL,
  `soma_div_total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_total_dividas`
--

INSERT INTO `tb_total_dividas` (`cod_total_dividas`, `div_car_total`, `div_fixa_total`, `div_verbais_total`, `soma_div_total`) VALUES
(1, NULL, 760, 19, NULL),
(2, 250, 760, 19, 1029),
(3, 500, 760, 19, 1279),
(4, 577, 760, 74, 1411);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `cod_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(30) DEFAULT NULL,
  `login_usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`cod_usuario`, `nome_usuario`, `login_usuario`, `senha`) VALUES
(1, 'marcelo', 'ui@gmail.com', '123'),
(2, 'uou', 'jjj@gmail.com', '333'),
(3, 'meu nome', 'guilhermao', '$2y$10$8DanOcwf'),
(4, 'meu nome', 'guilhermao', '$2y$10$/kLsvHNE'),
(5, 'teste', 'teste', 'teste'),
(6, 'teste', 'teste', '$2y$10$QLfJqDUu'),
(7, 'marcelaodamassa', 'mar', '$2y$10$Dtyz64b5'),
(8, 'bbbb', 'bbb', '$2y$10$/9SxYYi5'),
(9, 'bbbb', 'bbbb', '$2y$10$JbQu4BfM'),
(10, 'bbbb', 'bbbb', '$2y$10$HzFFs8.F'),
(11, 'vida nova', 'vidazinha', '$2y$10$5zclKWRt'),
(12, 'AMANHA', 'hoje', '$2y$10$q19poRgo'),
(13, 'adidional', 'noturno', '$2y$10$QCzpEKJsLtJo/RO2hck0mOKtG6/x59j5vvKi7vHKpYuwtzXN7IT7.'),
(14, 'nome1', 'login1', '$2y$10$lVSTZIgHwUylF/Ch4xITuuHYrXyy5gk7SsUpbH4DJcODcib7euuEe'),
(15, 'nome2', 'login2', '$2y$10$h2FVsLnSE.u0kTGllS0jL.9RRyTZ8fscTIaeibpsQlKhPjHuc9bgC'),
(16, '', '', '$2y$10$l9SK1IP2sL4yXmSZICaO9.Y.qMbToa0kKakbljuVvIV6XDvEgL9Ui'),
(17, '', '', '$2y$10$eiadu6z8BLNYfvEW.6tgKOVFCdTKXaFqk7wbp17BXErP1RCZzgPs2'),
(18, 'login5', 'login5', '$2y$10$gHle/QlY.ASrPV76z8h9/eHRvuu4fp3twlSA4SzJGMOj5UIeokLB.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_cartoes`
--
ALTER TABLE `tb_cartoes`
  ADD PRIMARY KEY (`cod_cartao`);

--
-- Índices para tabela `tb_div_cartoes`
--
ALTER TABLE `tb_div_cartoes`
  ADD PRIMARY KEY (`cod_div`),
  ADD KEY `cod_cartao` (`cod_cartao`);

--
-- Índices para tabela `tb_div_fixas`
--
ALTER TABLE `tb_div_fixas`
  ADD PRIMARY KEY (`cod_fixa`);

--
-- Índices para tabela `tb_div_verbais`
--
ALTER TABLE `tb_div_verbais`
  ADD PRIMARY KEY (`cod_div_verbal`);

--
-- Índices para tabela `tb_hora_extra`
--
ALTER TABLE `tb_hora_extra`
  ADD PRIMARY KEY (`cod_hora_extra`);

--
-- Índices para tabela `tb_salario_liquido`
--
ALTER TABLE `tb_salario_liquido`
  ADD PRIMARY KEY (`cod_sal_liquido`);

--
-- Índices para tabela `tb_salario_total`
--
ALTER TABLE `tb_salario_total`
  ADD PRIMARY KEY (`cod_salario_total`);

--
-- Índices para tabela `tb_total_dividas`
--
ALTER TABLE `tb_total_dividas`
  ADD PRIMARY KEY (`cod_total_dividas`);

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`cod_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cartoes`
--
ALTER TABLE `tb_cartoes`
  MODIFY `cod_cartao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_div_cartoes`
--
ALTER TABLE `tb_div_cartoes`
  MODIFY `cod_div` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_div_fixas`
--
ALTER TABLE `tb_div_fixas`
  MODIFY `cod_fixa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_div_verbais`
--
ALTER TABLE `tb_div_verbais`
  MODIFY `cod_div_verbal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_hora_extra`
--
ALTER TABLE `tb_hora_extra`
  MODIFY `cod_hora_extra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_salario_liquido`
--
ALTER TABLE `tb_salario_liquido`
  MODIFY `cod_sal_liquido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_salario_total`
--
ALTER TABLE `tb_salario_total`
  MODIFY `cod_salario_total` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_total_dividas`
--
ALTER TABLE `tb_total_dividas`
  MODIFY `cod_total_dividas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `cod_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_div_cartoes`
--
ALTER TABLE `tb_div_cartoes`
  ADD CONSTRAINT `tb_div_cartoes_ibfk_1` FOREIGN KEY (`cod_cartao`) REFERENCES `tb_cartoes` (`cod_cartao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
