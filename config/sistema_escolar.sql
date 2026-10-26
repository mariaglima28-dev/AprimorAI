-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31/08/2026 às 22:16
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_escolar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alternativas`
--

CREATE TABLE `alternativas` (
  `idAltenativa` int(11) NOT NULL,-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2026 às 21:42
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_escolar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alternativas`
--

CREATE TABLE `alternativas` (
  `idAltenativa` int(11) NOT NULL,
  `idQuestao` int(11) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `correta` enum('Correta','Errada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atividades`
--

CREATE TABLE `atividades` (
  `idAtividade` int(11) NOT NULL,
  `idAula` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `tipo` text NOT NULL,
  `dificuldade` varchar(255) NOT NULL,
  `prazo` date NOT NULL,
  `dataCriacao` date NOT NULL,
  `idInteracao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aulas`
--

CREATE TABLE `aulas` (
  `idAula` int(11) NOT NULL,
  `idDisciplina` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `bncc` varchar(255) NOT NULL,
  `dataAula` date NOT NULL,
  `dataCriacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conquistas`
--

CREATE TABLE `conquistas` (
  `idConquistaAluno` int(11) NOT NULL,
  `idConquista` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `dataConquista` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `correcoes`
--

CREATE TABLE `correcoes` (
  `idCorrecao` int(11) NOT NULL,
  `idResposta` int(11) NOT NULL,
  `nota` int(4) NOT NULL,
  `acertos` varchar(255) NOT NULL,
  `erros` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `idDisciplina` int(11) NOT NULL,
  `disciplina` varchar(255) NOT NULL,
  `idProfessor` int(11) NOT NULL,
  `idTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `instituicoes`
--

CREATE TABLE `instituicoes` (
  `idInstituicao` int(11) NOT NULL,
  `cnpj` varchar(14) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `instituicoes`
--

INSERT INTO `instituicoes` (`idInstituicao`, `cnpj`, `nome`, `email`) VALUES
(1, '27565768668', 'SESI', 'escolasesi@educacional.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais`
--

CREATE TABLE `materiais` (
  `idMaterial` int(11) NOT NULL,
  `idAula` int(11) NOT NULL,
  `idAtividade` int(11) NOT NULL,
  `materialUrl` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `metas`
--

CREATE TABLE `metas` (
  `idConquista` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criterios` varchar(255) NOT NULL,
  `icone` blob NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perfis_aprendizagem`
--

CREATE TABLE `perfis_aprendizagem` (
  `idPerfil` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `nivelAprendizagem` varchar(255) NOT NULL,
  `dificuldades` varchar(255) NOT NULL,
  `preferencias` varchar(255) NOT NULL,
  `observacao` varchar(255) NOT NULL,
  `dataAtualizacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `questoes`
--
-- Erro ao ler a estrutura para a tabela sistema_escolar.questoes: #1932 - Table &#039;sistema_escolar.questoes&#039; doesn&#039;t exist in engine
-- Erro ao ler dados para tabela sistema_escolar.questoes: #1064 - Você tem um erro de sintaxe no seu SQL próximo a &#039;FROM `sistema_escolar`.`questoes`&#039; na linha 1

-- --------------------------------------------------------

--
-- Estrutura para tabela `quizzes`
--

CREATE TABLE `quizzes` (
  `idQuiz` int(11) NOT NULL,
  `idAula` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `objetivo` varchar(255) NOT NULL,
  `nivelInical` varchar(255) NOT NULL,
  `inicio` datetime NOT NULL,
  `fim` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `respostas`
--

CREATE TABLE `respostas` (
  `idResposta` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `idAtividade` int(11) NOT NULL,
  `idQuestao` int(11) NOT NULL,
  `dataEnvio` date NOT NULL,
  `respostaUrl` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `idTurma` int(11) NOT NULL,
  `serie` varchar(255) NOT NULL,
  `idInstituicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`idTurma`, `serie`, `idInstituicao`) VALUES
(1, '3°B', 1),
(2, '3°EM A', 1),
(3, '3°EM B', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `IdGoogle` varchar(255) DEFAULT NULL,
  `cpf` varchar(14) NOT NULL,
  `dataNascimento` date NOT NULL,
  `tipoUser` enum('Aluno','Professor','Gestor') NOT NULL DEFAULT 'Aluno',
  `idTurma` int(11) DEFAULT NULL,
  `idInstituicao` int(11) DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  `materia` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nome`, `email`, `IdGoogle`, `cpf`, `dataNascimento`, `tipoUser`, `idTurma`, `idInstituicao`, `foto`, `materia`) VALUES
(3, 'Danielle Alves Lima', 'danielle.a.lima@aluno.senai.br', '100448220241589742339', '532454321', '2003-03-05', 'Professor', NULL, 1, NULL, NULL),
(4, 'Maria Gabriela Pieri de Lima', 'maria.g.lima28@aluno.senai.br', '113309172156933372642', '49064761809', '2008-12-04', 'Gestor', 1, 1, NULL, NULL),
(5, 'Samuel Tironi', 'samuel.tironi@aluno.senai.br', NULL, '4906498298562', '2000-03-11', 'Aluno', NULL, 1, NULL, NULL),
(8, 'Kamyla Rafaelly Vieira de Carvalho', 'kamyla.carvalho@aluno.senai.br', NULL, '490647646464', '2026-09-03', 'Aluno', 1, 1, NULL, NULL),
(12, 'Mikaella Molina', 'mikaella.molina@aluno.senai.br', NULL, '49064781809', '2026-10-08', 'Aluno', 2, 1, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alternativas`
--
ALTER TABLE `alternativas`
  ADD PRIMARY KEY (`idAltenativa`),
  ADD KEY `idQuestao` (`idQuestao`);

--
-- Índices de tabela `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`idAtividade`),
  ADD KEY `idAula` (`idAula`),
  ADD KEY `idInteracao` (`idInteracao`);

--
-- Índices de tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`idAula`),
  ADD KEY `idDisciplina` (`idDisciplina`);

--
-- Índices de tabela `conquistas`
--
ALTER TABLE `conquistas`
  ADD PRIMARY KEY (`idConquistaAluno`),
  ADD KEY `idAluno` (`idAluno`),
  ADD KEY `idConquista` (`idConquista`);

--
-- Índices de tabela `correcoes`
--
ALTER TABLE `correcoes`
  ADD PRIMARY KEY (`idCorrecao`),
  ADD KEY `idResposta` (`idResposta`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`idDisciplina`),
  ADD KEY `idProfessor` (`idProfessor`),
  ADD KEY `idTurma` (`idTurma`);

--
-- Índices de tabela `instituicoes`
--
ALTER TABLE `instituicoes`
  ADD PRIMARY KEY (`idInstituicao`);

--
-- Índices de tabela `materiais`
--
ALTER TABLE `materiais`
  ADD PRIMARY KEY (`idMaterial`),
  ADD KEY `idAula` (`idAula`),
  ADD KEY `idAtividade` (`idAtividade`);

--
-- Índices de tabela `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`idConquista`);

--
-- Índices de tabela `perfis_aprendizagem`
--
ALTER TABLE `perfis_aprendizagem`
  ADD PRIMARY KEY (`idPerfil`),
  ADD KEY `idAluno` (`idAluno`);

--
-- Índices de tabela `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`idQuiz`),
  ADD KEY `idAula` (`idAula`);

--
-- Índices de tabela `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`idResposta`),
  ADD KEY `idAluno` (`idAluno`),
  ADD KEY `idAtividade` (`idAtividade`),
  ADD KEY `idQuestao` (`idQuestao`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`idTurma`),
  ADD KEY `idInstituicao` (`idInstituicao`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `idTurma` (`idTurma`),
  ADD KEY `idInstituicao` (`idInstituicao`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alternativas`
--
ALTER TABLE `alternativas`
  MODIFY `idAltenativa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `atividades`
--
ALTER TABLE `atividades`
  MODIFY `idAtividade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aulas`
--
ALTER TABLE `aulas`
  MODIFY `idAula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conquistas`
--
ALTER TABLE `conquistas`
  MODIFY `idConquistaAluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `correcoes`
--
ALTER TABLE `correcoes`
  MODIFY `idCorrecao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `instituicoes`
--
ALTER TABLE `instituicoes`
  MODIFY `idInstituicao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `materiais`
--
ALTER TABLE `materiais`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `metas`
--
ALTER TABLE `metas`
  MODIFY `idConquista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `perfis_aprendizagem`
--
ALTER TABLE `perfis_aprendizagem`
  MODIFY `idPerfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `idQuiz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `respostas`
--
ALTER TABLE `respostas`
  MODIFY `idResposta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `idTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alternativas`
--
ALTER TABLE `alternativas`
  ADD CONSTRAINT `alternativas_ibfk_1` FOREIGN KEY (`idQuestao`) REFERENCES `questoes` (`idQuestao`);

--
-- Restrições para tabelas `atividades`
--
ALTER TABLE `atividades`
  ADD CONSTRAINT `atividades_ibfk_1` FOREIGN KEY (`idAula`) REFERENCES `aulas` (`idAula`),
  ADD CONSTRAINT `atividades_ibfk_2` FOREIGN KEY (`idInteracao`) REFERENCES `instituicoes` (`idInstituicao`);

--
-- Restrições para tabelas `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `aulas_ibfk_1` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplinas` (`idDisciplina`);

--
-- Restrições para tabelas `conquistas`
--
ALTER TABLE `conquistas`
  ADD CONSTRAINT `conquistas_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `conquistas_ibfk_2` FOREIGN KEY (`idConquista`) REFERENCES `metas` (`idConquista`);

--
-- Restrições para tabelas `correcoes`
--
ALTER TABLE `correcoes`
  ADD CONSTRAINT `correcoes_ibfk_1` FOREIGN KEY (`idResposta`) REFERENCES `respostas` (`idResposta`);

--
-- Restrições para tabelas `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD CONSTRAINT `disciplinas_ibfk_1` FOREIGN KEY (`idProfessor`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `disciplinas_ibfk_2` FOREIGN KEY (`idTurma`) REFERENCES `turmas` (`idTurma`);

--
-- Restrições para tabelas `materiais`
--
ALTER TABLE `materiais`
  ADD CONSTRAINT `materiais_ibfk_1` FOREIGN KEY (`idAula`) REFERENCES `aulas` (`idAula`),
  ADD CONSTRAINT `materiais_ibfk_2` FOREIGN KEY (`idAtividade`) REFERENCES `atividades` (`idAtividade`);

--
-- Restrições para tabelas `perfis_aprendizagem`
--
ALTER TABLE `perfis_aprendizagem`
  ADD CONSTRAINT `perfis_aprendizagem_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idUsuario`);

--
-- Restrições para tabelas `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`idAula`) REFERENCES `aulas` (`idAula`);

--
-- Restrições para tabelas `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `respostas_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `respostas_ibfk_2` FOREIGN KEY (`idAtividade`) REFERENCES `atividades` (`idAtividade`),
  ADD CONSTRAINT `respostas_ibfk_3` FOREIGN KEY (`idQuestao`) REFERENCES `questoes` (`idQuestao`);

--
-- Restrições para tabelas `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `turmas_ibfk_1` FOREIGN KEY (`idInstituicao`) REFERENCES `instituicoes` (`idInstituicao`);

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idTurma`) REFERENCES `turmas` (`idTurma`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`idInstituicao`) REFERENCES `instituicoes` (`idInstituicao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

  `idQuestao` int(11) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `correta` enum('Correta','Errada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `atividades`
--

CREATE TABLE `atividades` (
  `idAtividade` int(11) NOT NULL,
  `idAula` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `tipo` text NOT NULL,
  `dificuldade` varchar(255) NOT NULL,
  `prazo` date NOT NULL,
  `dataCriacao` date NOT NULL,
  `idInteracao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aula`
--

CREATE TABLE `aulas` (
  `idAula` int(11) NOT NULL,
  `idDisciplina` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `bncc` varchar(255) NOT NULL,
  `dataAula` date NOT NULL,
  `dataCriacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conquista`
--

CREATE TABLE `metas` (
  `idConquista` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criterios` varchar(255) NOT NULL,
  `icone` blob NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conquista_aluno`
--

CREATE TABLE `conquistas` (
  `idConquistaAluno` int(11) NOT NULL,
  `idConquista` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `dataConquista` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `correcao`
--

CREATE TABLE `correcoes` (
  `idCorrecao` int(11) NOT NULL,
  `idResposta` int(11) NOT NULL,
  `nota` int(4) NOT NULL,
  `acertos` varchar(255) NOT NULL,
  `erros` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplinas` (
  `idDisciplina` int(11) NOT NULL,
  `disciplina` varchar(255) NOT NULL,
  `idProfessor` int(11) NOT NULL,
  `idTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `instituicao`
--

CREATE TABLE `instituicoes` (
  `idInstituicao` int(11) NOT NULL,
  `cnpj` varchar(14) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `material`
--

CREATE TABLE `materiais` (
  `idMaterial` int(11) NOT NULL,
  `idAula` int(11) NOT NULL,
  `idAtividade` int(11) NOT NULL,
  `materialUrl` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `perfil_aprendizagem`
--

CREATE TABLE `perfis_aprendizagem` (
  `idPerfil` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `nivelAprendizagem` varchar(255) NOT NULL,
  `dificuldades` varchar(255) NOT NULL,
  `preferencias` varchar(255) NOT NULL,
  `observacao` varchar(255) NOT NULL,
  `dataAtualizacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `questoes`
--

CREATE TABLE `questoes` (
  `idQuestao` int(11) NOT NULL,
  `idQuiz` int(11) NOT NULL,
  `enunciado` varchar(255) NOT NULL,
  `tipo` enum('multiplas escolhas','verdadeiro ou falso','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `quiz`
--

CREATE TABLE `quizzes` (
  `idQuiz` int(11) NOT NULL,
  `idAula` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `objetivo` varchar(255) NOT NULL,
  `nivelInical` varchar(255) NOT NULL,
  `inicio` datetime NOT NULL,
  `fim` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `resposta`
--

CREATE TABLE `respostas` (
  `idResposta` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `idAtividade` int(11) NOT NULL,
  `idQuestao` int(11) NOT NULL,
  `dataEnvio` date NOT NULL,
  `respostaUrl` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma`
--

CREATE TABLE `turmas` (
  `idTurma` int(11) NOT NULL,
  `serie` varchar(255) NOT NULL,
  `idInstituicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `IdGoogle` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `dataNascimento` date NOT NULL,
  `tipoUser` enum('Aluno','Professor','Gestor') NOT NULL DEFAULT 'Aluno',
  `idTurma` int(11) NOT NULL,
  `idInstituicao` int(11) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `foto` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alternativas`
--
ALTER TABLE `alternativas`
  ADD PRIMARY KEY (`idAltenativa`),
  ADD KEY `idQuestao` (`idQuestao`);

--
-- Índices de tabela `atividade`
--
ALTER TABLE `atividade`
  ADD PRIMARY KEY (`idAtividade`),
  ADD KEY `idAula` (`idAula`),
  ADD KEY `idInteracao` (`idInteracao`);

--
-- Índices de tabela `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`idAula`),
  ADD KEY `idDisciplina` (`idDisciplina`);

--
-- Índices de tabela `conquista`
--
ALTER TABLE `conquista`
  ADD PRIMARY KEY (`idConquista`);

--
-- Índices de tabela `conquista_aluno`
--
ALTER TABLE `conquista_aluno`
  ADD PRIMARY KEY (`idConquistaAluno`),
  ADD KEY `idAluno` (`idAluno`),
  ADD KEY `idConquista` (`idConquista`);

--
-- Índices de tabela `correcao`
--
ALTER TABLE `correcao`
  ADD PRIMARY KEY (`idCorrecao`),
  ADD KEY `idResposta` (`idResposta`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idDisciplina`),
  ADD KEY `idProfessor` (`idProfessor`),
  ADD KEY `idTurma` (`idTurma`);

--
-- Índices de tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`idInstituicao`);

--
-- Índices de tabela `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idMaterial`),
  ADD KEY `idAula` (`idAula`),
  ADD KEY `idAtividade` (`idAtividade`);

--
-- Índices de tabela `perfil_aprendizagem`
--
ALTER TABLE `perfil_aprendizagem`
  ADD PRIMARY KEY (`idPerfil`),
  ADD KEY `idAluno` (`idAluno`);

--
-- Índices de tabela `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`idQuestao`),
  ADD KEY `idQuiz` (`idQuiz`);

--
-- Índices de tabela `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`idQuiz`),
  ADD KEY `idAula` (`idAula`);

--
-- Índices de tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`idResposta`),
  ADD KEY `idAluno` (`idAluno`),
  ADD KEY `idAtividade` (`idAtividade`),
  ADD KEY `idQuestao` (`idQuestao`);

--
-- Índices de tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`idTurma`),
  ADD KEY `idInstituicao` (`idInstituicao`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idTurma` (`idTurma`),
  ADD KEY `idInstituicao` (`idInstituicao`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alternativas`
--
ALTER TABLE `alternativas`
  MODIFY `idAltenativa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `atividade`
--
ALTER TABLE `atividade`
  MODIFY `idAtividade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aula`
--
ALTER TABLE `aula`
  MODIFY `idAula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conquista`
--
ALTER TABLE `conquista`
  MODIFY `idConquista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conquista_aluno`
--
ALTER TABLE `conquista_aluno`
  MODIFY `idConquistaAluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `correcao`
--
ALTER TABLE `correcao`
  MODIFY `idCorrecao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `idInstituicao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `material`
--
ALTER TABLE `material`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `perfil_aprendizagem`
--
ALTER TABLE `perfil_aprendizagem`
  MODIFY `idPerfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `questoes`
--
ALTER TABLE `questoes`
  MODIFY `idQuestao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quiz`
--
ALTER TABLE `quiz`
  MODIFY `idQuiz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `idResposta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `idTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alternativas`
--
ALTER TABLE `alternativas`
  ADD CONSTRAINT `alternativas_ibfk_1` FOREIGN KEY (`idQuestao`) REFERENCES `questoes` (`idQuestao`);

--
-- Restrições para tabelas `atividade`
--
ALTER TABLE `atividade`
  ADD CONSTRAINT `atividade_ibfk_1` FOREIGN KEY (`idAula`) REFERENCES `aula` (`idAula`),
  ADD CONSTRAINT `atividade_ibfk_2` FOREIGN KEY (`idInteracao`) REFERENCES `instituicao` (`idInstituicao`);

--
-- Restrições para tabelas `aula`
--
ALTER TABLE `aula`
  ADD CONSTRAINT `aula_ibfk_1` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`idDisciplina`);

--
-- Restrições para tabelas `conquista_aluno`
--
ALTER TABLE `conquista_aluno`
  ADD CONSTRAINT `conquista_aluno_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `conquista_aluno_ibfk_2` FOREIGN KEY (`idConquista`) REFERENCES `conquista` (`idConquista`);

--
-- Restrições para tabelas `correcao`
--
ALTER TABLE `correcao`
  ADD CONSTRAINT `correcao_ibfk_1` FOREIGN KEY (`idResposta`) REFERENCES `resposta` (`idResposta`);

--
-- Restrições para tabelas `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`idProfessor`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `disciplina_ibfk_2` FOREIGN KEY (`idTurma`) REFERENCES `turma` (`idTurma`);

--
-- Restrições para tabelas `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`idAula`) REFERENCES `aula` (`idAula`),
  ADD CONSTRAINT `material_ibfk_2` FOREIGN KEY (`idAtividade`) REFERENCES `atividade` (`idAtividade`);

--
-- Restrições para tabelas `perfil_aprendizagem`
--
ALTER TABLE `perfil_aprendizagem`
  ADD CONSTRAINT `perfil_aprendizagem_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idUsuario`);

--
-- Restrições para tabelas `questoes`
--
ALTER TABLE `questoes`
  ADD CONSTRAINT `questoes_ibfk_1` FOREIGN KEY (`idQuiz`) REFERENCES `quiz` (`idQuiz`);

--
-- Restrições para tabelas `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`idAula`) REFERENCES `aula` (`idAula`);

--
-- Restrições para tabelas `resposta`
--
ALTER TABLE `resposta`
  ADD CONSTRAINT `resposta_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `resposta_ibfk_2` FOREIGN KEY (`idAtividade`) REFERENCES `atividade` (`idAtividade`),
  ADD CONSTRAINT `resposta_ibfk_3` FOREIGN KEY (`idQuestao`) REFERENCES `questoes` (`idQuestao`);

--
-- Restrições para tabelas `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`idInstituicao`) REFERENCES `instituicao` (`idInstituicao`);

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idTurma`) REFERENCES `turma` (`idTurma`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`idInstituicao`) REFERENCES `instituicao` (`idInstituicao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
