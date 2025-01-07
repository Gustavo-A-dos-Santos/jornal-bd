-- 1. Tabela: administrador

-- Adicionar Administrador
INSERT INTO administrador (nome_Administrador, email_Administrador, senha, salario, telefone, carga_Horaria, dt_Criacao)
VALUES ('Nome do Administrador', 'email@exemplo.com', 'senha_segura', 5000.00, '1234567890', 40, CURDATE());

-- Deletar Administrador
DELETE FROM administrador WHERE id_Administrador = 1;

-- Atualizar Administrador
UPDATE administrador SET salario = 5500.00 WHERE id_Administrador = 1;

-- Selecionar Administrador
SELECT * FROM administrador WHERE id_Administrador = 1;

-- Selecionar todos os Administradores
SELECT * FROM administrador;

-- Verificar se existe Administrador
SELECT COUNT(*) FROM administrador WHERE email_Administrador = 'email@exemplo.com';

-- Adicionar Administrador com Admin
INSERT INTO administrador (nome_Administrador, email_Administrador, senha, salario, telefone, carga_Horaria, dt_Criacao)
VALUES ('Admin Name', 'admin@exemplo.com', 'adminsenha', 6000.00, '0987654321', 40, CURDATE());

-- Alterar a carga horária do Administrador
UPDATE administrador SET carga_Horaria = 45 WHERE id_Administrador = 1;

-- Contar o total de Administradores
SELECT COUNT(*) FROM administrador;

-- Pesquisar Administradores por Nome
SELECT * FROM administrador WHERE nome_Administrador LIKE '%Nome%';

-- 2. Tabela: autor

-- Adicionar Autor
INSERT INTO autor (nome_Autor, email_Autor, senha, n_Publicacoes, classificacao, telefone, dt_Criacao)
VALUES ('Nome do Autor', 'autor@exemplo.com', 'senha_segura', 10, 4.5, '9876543210', CURDATE());

-- Deletar Autor
DELETE FROM autor WHERE id_Autor = 1;

-- Atualizar Autor
UPDATE autor SET n_Publicacoes = 12 WHERE id_Autor = 1;

-- Selecionar Autor
SELECT * FROM autor WHERE id_Autor = 1;

-- Selecionar todos os Autores
SELECT * FROM autor;

-- Adicionar Autor com Publicações
INSERT INTO autor (nome_Autor, email_Autor, senha, n_Publicacoes, classificacao, telefone, dt_Criacao)
VALUES ('Autor Exemplo', 'exemplo@autor.com', 'senha123', 20, 5.0, '1234567890', CURDATE());

-- Atualizar a classificação do Autor
UPDATE autor SET classificacao = 4.8 WHERE id_Autor = 1;

-- Contar o total de Autores
SELECT COUNT(*) FROM autor;

-- Pesquisar Autores por Nome
SELECT * FROM autor WHERE nome_Autor LIKE '%Autor%';

-- 3. Tabela: usuario

-- Adicionar Usuário
INSERT INTO usuario (nome_Usuario, email_Usuario, senha, dt_Criacao)
VALUES ('Nome do Usuário', 'usuario@exemplo.com', 'senha_segura', CURDATE());

-- Deletar Usuário
DELETE FROM usuario WHERE id_Usuario = 1;

-- Atualizar Usuário
UPDATE usuario SET email_Usuario = 'novo_email@exemplo.com' WHERE id_Usuario = 1;

-- Selecionar Usuário
SELECT * FROM usuario WHERE id_Usuario = 1;

-- Selecionar todos os Usuários
SELECT * FROM usuario;

-- Adicionar Novo Usuário
INSERT INTO usuario (nome_Usuario, email_Usuario, senha, dt_Criacao)
VALUES ('Novo Usuário', 'novousuario@exemplo.com', 'senha123', CURDATE());

-- Alterar o Email do Usuário
UPDATE usuario SET email_Usuario = 'usuario_atualizado@exemplo.com' WHERE id_Usuario = 1;

-- Contar o total de Usuários
SELECT COUNT(*) FROM usuario;

-- Pesquisar Usuários por Nome
SELECT * FROM usuario WHERE nome_Usuario LIKE '%Nome%';

-- 4. Tabela: noticia

-- Adicionar Notícia
INSERT INTO noticia (dt_Publicacao, avalicacao, fonte, img_Url, titulo, conteudo, resumo, id_Autor, id_Categoria)
VALUES (CURDATE(), 4.8, 'Fonte Exemplo', 'http://imagem.com', 'Título da Notícia', 'Conteúdo da notícia...', 'Resumo da notícia...', 1, 1);

-- Deletar Notícia
DELETE FROM noticia WHERE id_Noticia = 1;

-- Atualizar Notícia
UPDATE noticia SET avaliacao = 4.9 WHERE id_Noticia = 1;

-- Selecionar Notícia
SELECT * FROM noticia WHERE id_Noticia = 1;

-- Selecionar todas as Notícias
SELECT * FROM noticia;

-- Alterar o Título da Notícia
UPDATE noticia SET titulo = 'Novo Título' WHERE id_Noticia = 1;

-- Contar o total de Notícias
SELECT COUNT(*) FROM noticia;

-- Pesquisar Notícias por Título
SELECT * FROM noticia WHERE titulo LIKE '%Título%';

-- Filtrar Notícias por Autor
SELECT * FROM noticia WHERE id_Autor = 1;

-- 5. Tabela: comentario

-- Adicionar Comentário
INSERT INTO comentario (dt_Criacao, conteudo, id_Noticia, id_Usuario)
VALUES (CURDATE(), 'Comentário interessante!', 1, 1);

-- Deletar Comentário
DELETE FROM comentario WHERE id_Comentario = 1;

-- Atualizar Comentário
UPDATE comentario SET conteudo = 'Comentário atualizado!' WHERE id_Comentario = 1;

-- Selecionar Comentário
SELECT * FROM comentario WHERE id_Comentario = 1;

-- Selecionar todos os Comentários
SELECT * FROM comentario;

-- Alterar o Conteúdo do Comentário
UPDATE comentario SET conteudo = 'Novo conteúdo para o comentário' WHERE id_Comentario = 1;

-- Contar o total de Comentários
SELECT COUNT(*) FROM comentario;

-- Pesquisar Comentários por Conteúdo
SELECT * FROM comentario WHERE conteudo LIKE '%comentário%';

-- Filtrar Comentários por Notícia
SELECT * FROM comentario WHERE id_Noticia = 1;
