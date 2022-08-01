-- Create table
create table TMP_AUTORES
(
  cod_autor    VARCHAR2(3) not null,
  nombre_autor VARCHAR2(100)
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
alter table TMP_AUTORES
  add constraint PK_AUTOR primary key (COD_AUTOR)
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
