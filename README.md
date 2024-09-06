<h1>Banco de Dados</h1>
<h2>Banco de Dados na Faculdade - (2° Semestre).</h2>

<h3><b>LAB01</b></h3>
<b>Aluno:</b> Eduardo Henrique Fabri <br>
<b>Banco de Dados</b>

**Prática 1.4**

**a)** Converta o modelo relacional no seu correspondente modelo físico (escreva os comandos SQL DDL).<br>
**b)** Apresente o código SQL de criação do seu modelo.<br>

<img src="https://github.com/user-attachments/assets/b9760030-7781-4ae5-b918-8022a3c2a253" alt="Prática 1.4" width="80" height="80">

**Prática 1.5**

**a)** Utilize o database LAB_01.<br>
**b)** Crie a tabela do Carro, com o comando SQL DDL obtido no brModelo.<br>
**c)** Crie um único comando para realizar a INSERÇÃO de 5 carros.<br>
**d)** Execute o comando para a INSERÇÃO e exiba em uma imagem os registros (linhas) inseridos na tabela Carro com um comando SQL SELECT.<br>

<img src="https://github.com/user-attachments/assets/379b1661-4a06-4c76-ba4c-87a514d8950d" alt="Prática 1.5" width="80" height="80">

**Prática 1.6**

**a)** Crie um comando para realizar a ALTERAÇÃO da cor de um dos seus carros.<br>
**b)** Crie outro comando para realizar a ALTERAÇÃO do ano de fabricação de um outro carro.<br>
**c)** Execute os comandos para as ALTERAÇÕES e exiba em uma imagem os registros (linhas) alterados na tabela Carro com um comando SQL SELECT.<br>

<img src="https://github.com/user-attachments/assets/83bdf122-7ac8-439e-89d0-4a1479918878" alt="Prática 1.6" width="80" height="80">

**Prática 1.7**

**a)** Crie um comando para realizar a EXCLUSÃO de um dos seus carros.<br>
**b)** Execute o comando para a EXCLUSÃO e exiba em uma imagem a tabela Carro após a EXCLUSÃO, com um comando SQL SELECT.<br>

<img src="https://github.com/user-attachments/assets/ea81f9d4-861b-4af1-ba7f-c6a2155cdec0" alt="Prática 1.7" width="80" height="80">

**LAB02**

**Prática 2.1**

**a)** Para que serve o comando SQL: USE ?<br>
**R:** Para indicar/selecionar que o banco de dados que você quer usar é o que vai ser referida junto ao USE.<br>

**b)** Dê um exemplo de comando DROP para eliminar totalmente o database LAB_02 criado, execute o comando e verifique seu resultado, mostrando a imagem.<br>
**R:** DROP DATABASE LAB_02;<br>

**c)** Após eliminar o LAB_02, crie novamente este database para as próximas práticas.<br>

<img src="https://github.com/user-attachments/assets/9909fb6d-1d8d-4d76-b0f0-eae889c6a4d6" alt="Prática 2.1" width="80" height="80">

**Prática 2.2**

**a)** O que significa quando não indicamos que um campo (atributo) é NOT NULL?<br>
**R:** Quando não usamos o NOT NULL, significa que o campo pode ser vazio ou nulo.<br>

**b)** Para que serve o comando SQL: ALTER TABLE ... ADD CONSTRAIN?<br>
**R:** Serve para adicionar uma restrição para a tabela existente.<br>

**c)** O que significa a restrição de PRIMARY KEY? Para que ela serve na prática?<br>
**R:** Primary Key significa Chave Primária, ela serve como um identificador único para o campo e não permite que existam valores iguais, também ajuda na hora de fazer buscas com o índice que ela cria.<br>

**Prática 2.3**

Em sua database de trabalho, execute:<br>
**(A)** INSERT INTO disciplina VALUES (1, 'Redes', 'Básico de redes de computadores', 4, 3);<br>
SELECT * FROM disciplina;<br>

**(B)** INSERT INTO disciplina VALUES (1, 'Banco de Dados', NULL, 4, 2);<br>
SELECT * FROM disciplina;<br>

**a)** Dos comandos passados, que comando não funcionou e como ele foi arrumado?<br>
**R:** O comando B não funcionou, ele pode ser arrumado com o reajuste do ID_Disciplina, por que já existe uma Primary Key com o mesmo valor.<br>

**b)** Qual o comando para visualizar as inserções para ver se elas estão corretas?<br>
**R:** SELECT * FROM DISCIPLINA;<br>

**c)** Crie e execute um comando para inserir mais 5 registros / linhas na tabela disciplina.<br>
**R:** <br>
INSERT INTO disciplina VALUES
(2, 'Matemática Aplicada', 'Estudo das aplicações práticas da matemática em diversos campos, incluindo engenharia e ciências sociais.', 4, 4),
(3, 'História da Arte', 'Análise dos principais movimentos artísticos ao longo da história, incluindo o Renascimento, Barroco e Modernismo.', 3, 6),
(4, 'Programação Avançada', 'Aprofundamento em técnicas avançadas de programação, incluindo algoritmos complexos e estruturas de dados.', 5, 1),
(5, 'Economia Internacional', 'Estudo das teorias e práticas da economia global, com foco em comércio, finanças e políticas internacionais.', 4, 12),
(6, 'Psicologia Organizacional', NULL, 3, 3),
(7, 'Bioinformática', 'Aplicação de técnicas de computação para resolver problemas biológicos, incluindo análise de dados genéticos e proteômicos.', 4, 15);

**Prática 2.4**

**a)** Com base na prática anterior, crie um comando para realizar a ALTERAÇÃO de um campo de uma disciplina inserida.<br>
**b)** Execute o comando de ALTERAÇÃO e exiba em uma imagem a tabela atualizada após a alteração com um comando SQL SELECT.<br>

<img src="https://github.com/user-attachments/assets/0f4757b7-79b4-488a-89d3-51f14eae9944" alt="Prática 2.4" width="80" height="80">

**Prática 2.5**

**a)** Crie um comando para excluir um dos registros da tabela disciplina.<br>
**b)** Execute o comando para a EXCLUSÃO e exiba em uma imagem a tabela atualizada após a exclusão com um comando SQL SELECT.<br>

<img src="https://github.com/user-attachments/assets/1b2d84c9-5991-4b25-85fb-22945ffb91e3" alt="Prática 2.5" width="80" height="80">

**Prática 2.6**

**a)** Crie um comando para realizar uma junção (JOIN) entre duas tabelas de seu banco de dados. Use um exemplo onde a junção faça sentido, e exiba a estrutura e o resultado da consulta em uma imagem.<br>

<img src="https://github.com/user-attachments/assets/12bdb084-5fb5-4db7-a0f5-e3d77f5b2e0f" alt="Prática 2.6" width="80" height="80">

**Prática 2.7**

**a)** Faça uma consulta com filtro utilizando o comando WHERE para restringir a busca de informações na tabela disciplina.<br>
**b)** Execute o comando e exiba o resultado em uma imagem.<br>

<img src="https://github.com/user-attachments/assets/354b94f3-bdd9-4ba3-8a47-0f5ff0b394c7" alt="Prática 2.7" width="80" height="80">
