-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Dez-2023 às 11:39
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_livros`
--

CREATE TABLE `categoria_livros` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `categoria_livros`
--

INSERT INTO `categoria_livros` (`id`, `nome`) VALUES
(1, 'Romance'),
(2, 'Terror'),
(3, 'Ficção'),
(4, 'Fantasia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `emprestimo_id` int(11) NOT NULL,
  `livro_emprestimo` varchar(255) NOT NULL,
  `nome_livro` varchar(255) NOT NULL,
  `aluno_emprestimo` varchar(255) NOT NULL,
  `data_emprestimo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `emprestimos`
--

INSERT INTO `emprestimos` (`emprestimo_id`, `livro_emprestimo`, `nome_livro`, `aluno_emprestimo`, `data_emprestimo`) VALUES
(38, '34', 'Bird box', 'r', '2023-11-27'),
(39, '21', 'A culpa é das estrelas', 'r', '2023-11-27'),
(40, '21', 'A culpa é das estrelas', 'r', '2023-11-27'),
(41, '21', 'A culpa é das estrelas', 'r', '2023-11-27'),
(42, '21', 'A culpa é das estrelas', 'r', '2023-11-27'),
(43, '21', 'A culpa é das estrelas', 'r', '2023-11-27'),
(44, '21', 'A culpa é das estrelas', 'r', '2023-11-27'),
(45, '21', 'A culpa é das estrelas', 'r', '2023-11-27'),
(46, '21', 'A culpa é das estrelas', 'r', '2023-11-27'),
(47, '21', 'A culpa é das estrelas', 'r', '2023-11-27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `id_hstorico` int(11) NOT NULL,
  `emprestimo_id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL,
  `nome_livro` varchar(255) NOT NULL,
  `nome_aluno` varchar(255) NOT NULL,
  `hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`id_hstorico`, `emprestimo_id`, `livro_id`, `nome_livro`, `nome_aluno`, `hora`) VALUES
(30, 35, 21, 'A culpa é das estrelas', 'Wesley', '2023-11-26 19:21:15'),
(31, 33, 19, 'Moby Dick', 'Fabio', '2023-11-26 19:23:13'),
(32, 36, 22, 'A 5 Passos de você', 'Fabio', '2023-11-26 19:23:15'),
(33, 37, 36, 'Amigo Imaginário ', 'Fabio', '2023-11-26 19:23:17'),
(34, 48, 35, 'O livro maldito', 'ryan', '2023-12-01 10:35:43'),
(35, 49, 29, 'Jogador Nº1', 'ryan', '2023-12-01 10:37:51'),
(36, 51, 35, 'O livro maldito', 'ryan', '2023-12-01 13:07:04'),
(37, 50, 35, 'O livro maldito', 'ryan', '2023-12-01 13:07:07'),
(38, 52, 26, 'Conjurador: O aprendiz', 'joao', '2023-12-04 11:34:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `livro_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`livro_id`, `nome`, `categoria`, `quantidade`, `imagem`, `categoria_id`) VALUES
(19, 'Moby Dick', 'Ficção', 4, '../uploads/moby dick.jpg', 3),
(20, '7 Desafios Para Ser Rei', 'Fantasia', 2, '../uploads/7 desafios.png', 4),
(21, 'A culpa é das estrelas', 'Romance', 0, '../uploads/a culpa é das estrelas.jpg', 1),
(22, 'A 5 Passos de você', 'Romance', 4, '../uploads/a5passos.jpg', 1),
(23, 'Como eu era antes de você', 'Romance', 1, '../uploads/como eu era.webp', 1),
(24, 'Confissões de uma garota excluída, mal-amada e (um pouco) dramática ', 'Romance', 2, '../uploads/14-confissoes.jpg', 1),
(25, 'O feiticeiro de terramar', 'Fantasia', 5, '../uploads/feiticeiro.webp', 4),
(26, 'Conjurador: O aprendiz', 'Fantasia', 3, '../uploads/conjurador.jpg', 4),
(27, 'Prince of thorns', 'Fantasia', 4, '../uploads/prince.png', 4),
(28, 'O hobbit', 'Fantasia', 1, '../uploads/hobbit_amazon.jpg', 4),
(29, 'Jogador Nº1', 'Ficção', 5, '../uploads/jogador-numero-1--foto-1.jpg', 3),
(30, 'Neuromancer', 'Ficção', 1, '../uploads/neuromancer.jpg', 3),
(31, 'Dimensão Sci-fi', 'Ficção', 3, '../uploads/dimensão.jpg', 3),
(32, 'Contos intergalácticos ', 'Ficção', 4, '../uploads/contos intergalaticos.jpg', 3),
(33, 'O vilarejo', 'Terror', 2, '../uploads/vilarejo.jpg', 2),
(34, 'Bird box', 'Terror', 2, '../uploads/bIRD.webp', 2),
(35, 'O livro maldito', 'Terror', 2, '../uploads/livro.webp', 2),
(36, 'Amigo Imaginário ', 'Terror', 2, '../uploads/Amigo.jpg', 2),
(37, 'Cemitério Maldito', 'Terror', 2, '../uploads/cemiterio.jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `email`, `senha`, `tipo_usuario`) VALUES
(13, 'ryan', 'r@gmail.com', '123', 1),
(18, 'joao', 'Fabiao@gmail.com', '12345', 2),
(19, 'Ryan', 'r1294@gmail.com', '123', 2),
(20, 'a', 'a@gmail.com', 'a', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria_livros`
--
ALTER TABLE `categoria_livros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`emprestimo_id`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id_hstorico`),
  ADD KEY `historico_id_FK` (`emprestimo_id`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`livro_id`),
  ADD KEY `livro_categoria_id_FK` (`categoria_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria_livros`
--
ALTER TABLE `categoria_livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `emprestimo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id_hstorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `livro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livro_categoria_id_FK` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_livros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
