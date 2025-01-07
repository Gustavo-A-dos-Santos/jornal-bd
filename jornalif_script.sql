CREATE TABLE administrador (
    id_Administrador INT AUTO_INCREMENT NOT NULL,
    nome_Administrador VARCHAR(100) NOT NULL,
    email_Administrador VARCHAR(100) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    salario DOUBLE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    carga_Horaria INT NOT NULL,
    dt_Criacao DATE NOT NULL,
    PRIMARY KEY (id_Administrador)
);

CREATE TABLE autor (
    id_Autor INT AUTO_INCREMENT NOT NULL,
    nome_Autor VARCHAR(100) NOT NULL,
    email_Autor VARCHAR(100) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    n_Publicacoes INT NOT NULL,
    classificacao DOUBLE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    dt_Criacao DATE NOT NULL,
    PRIMARY KEY (id_Autor)
);

CREATE TABLE administrador_autor (
    id_Administrador INT NOT NULL,
    id_Autor INT NOT NULL,
    PRIMARY KEY (id_Administrador, id_Autor)
);

CREATE TABLE usuario (
    id_Usuario INT AUTO_INCREMENT NOT NULL,
    nome_Usuario VARCHAR(100) NOT NULL,
    email_Usuario VARCHAR(100) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    dt_Criacao DATE NOT NULL,
    PRIMARY KEY (id_Usuario)
);

CREATE TABLE administrador_usuario (
    id_Administrador INT NOT NULL,
    id_Usuario INT NOT NULL,
    PRIMARY KEY (id_Administrador, id_Usuario)
);

CREATE TABLE tag (
    id_Tag INT AUTO_INCREMENT NOT NULL,
    nome_Tag VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_Tag)
);

CREATE TABLE administrador_tag (
    id_Administrador INT NOT NULL,
    id_Tag INT NOT NULL,
    PRIMARY KEY (id_Administrador, id_Tag)
);

CREATE TABLE categoria (
    id_Categoria INT AUTO_INCREMENT NOT NULL,
    nome_Categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_Categoria)
);

CREATE TABLE noticia (
    id_Noticia INT AUTO_INCREMENT NOT NULL,
    dt_Publicacao DATE NOT NULL,
    avalicacao DOUBLE NOT NULL,
    fonte VARCHAR(255) NOT NULL,
    img_Url VARCHAR(255) NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    conteudo TEXT NOT NULL,
    resumo VARCHAR(500) NOT NULL,
    id_Autor INT NOT NULL,
    id_Categoria INT NOT NULL,
    PRIMARY KEY (id_Noticia)
);

CREATE TABLE administrador_noticia (
    id_Administrador INT NOT NULL,
    id_Noticia INT NOT NULL,
    PRIMARY KEY (id_Administrador, id_Noticia)
);

CREATE TABLE tag_noticia (
    id_Tag INT NOT NULL,
    id_Noticia INT NOT NULL,
    PRIMARY KEY (id_Tag, id_Noticia)
);

CREATE TABLE comentario (
    id_Comentario INT AUTO_INCREMENT NOT NULL,
    dt_Criacao DATE NOT NULL,
    conteudo TEXT NOT NULL,
    id_Noticia INT NOT NULL,
    id_Usuario INT NOT NULL,
    PRIMARY KEY (id_Comentario)
);

CREATE TABLE administrador_comentario (
    id_Administrador INT NOT NULL,
    id_Comentario INT NOT NULL,
    PRIMARY KEY (id_Administrador, id_Comentario)
);

ALTER TABLE administrador_autor 
ADD CONSTRAINT fk_administrador_autor 
FOREIGN KEY (id_Administrador) REFERENCES administrador (id_Administrador)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE administrador_autor 
ADD CONSTRAINT fk_autor_administrador_autor 
FOREIGN KEY (id_Autor) REFERENCES autor (id_Autor)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE administrador_usuario 
ADD CONSTRAINT fk_administrador_usuario 
FOREIGN KEY (id_Administrador) REFERENCES administrador (id_Administrador)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE administrador_usuario 
ADD CONSTRAINT fk_usuario_administrador_usuario 
FOREIGN KEY (id_Usuario) REFERENCES usuario (id_Usuario)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE administrador_tag 
ADD CONSTRAINT fk_administrador_tag 
FOREIGN KEY (id_Administrador) REFERENCES administrador (id_Administrador)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE administrador_tag 
ADD CONSTRAINT fk_tag_administrador_tag 
FOREIGN KEY (id_Tag) REFERENCES tag (id_Tag)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE noticia 
ADD CONSTRAINT fk_autor_noticia 
FOREIGN KEY (id_Autor) REFERENCES autor (id_Autor)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE noticia 
ADD CONSTRAINT fk_categoria_noticia 
FOREIGN KEY (id_Categoria) REFERENCES categoria (id_Categoria)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE administrador_noticia 
ADD CONSTRAINT fk_administrador_noticia 
FOREIGN KEY (id_Administrador) REFERENCES administrador (id_Administrador)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE administrador_noticia 
ADD CONSTRAINT fk_noticia_administrador_noticia 
FOREIGN KEY (id_Noticia) REFERENCES noticia (id_Noticia)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE comentario 
ADD CONSTRAINT fk_usuario_comentario 
FOREIGN KEY (id_Usuario) REFERENCES usuario (id_Usuario)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE comentario 
ADD CONSTRAINT fk_noticia_comentario 
FOREIGN KEY (id_Noticia) REFERENCES noticia (id_Noticia)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE administrador_comentario 
ADD CONSTRAINT fk_administrador_comentario 
FOREIGN KEY (id_Administrador) REFERENCES administrador (id_Administrador)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE administrador_comentario 
ADD CONSTRAINT fk_comentario_administrador_comentario 
FOREIGN KEY (id_Comentario) REFERENCES comentario (id_Comentario)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE tag_noticia 
ADD CONSTRAINT fk_tag_noticia 
FOREIGN KEY (id_Tag) REFERENCES tag (id_Tag)
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE tag_noticia 
ADD CONSTRAINT fk_noticia_tag_noticia 
FOREIGN KEY (id_Noticia) REFERENCES noticia (id_Noticia)
ON DELETE NO ACTION ON UPDATE NO ACTION;
