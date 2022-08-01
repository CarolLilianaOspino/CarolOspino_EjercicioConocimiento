-- Create table
create table TMP_LIBROS
(
  cod_libro VARCHAR2(30) not null,
  titulo    VARCHAR2(100),
  cod_autor VARCHAR2(100)
)
tablespace DAT_AMERIKA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table TMP_LIBROS
  add constraint PK_LIBROS primary key (COD_LIBRO)
  using index 
  tablespace DAT_AMERIKA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TMP_LIBROS
  add constraint FK_LIBROS_AUTOR foreign key (COD_AUTOR)
  references TMP_AUTORES (COD_AUTOR);
