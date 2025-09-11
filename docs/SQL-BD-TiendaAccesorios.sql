drop database if exists tienda_accesorios;
create database tienda_accesorios;
use tienda_accesorios;

create table tbl_producto (
	id_producto int auto_increment primary key,
    nombre_producto varchar(50) not null,
    precio_producto decimal(12, 2) not null,
    stock int not null
);

create table tbl_usuario (
	id_usuario int auto_increment primary key,
    nombre_usuario varchar(50) not null,
    password_usuario varchar(30) not null
);

create table tbl_pedido (
	id_pedido int auto_increment primary key,
    id_producto int,
    id_usuario int,
    stock_solicitado int not null,
    foreign key (id_producto) references tbl_producto(id_producto),
    foreign key (id_usuario) references tbl_usuario(id_usuario)
);

select * from tbl_usuario;
insert into tbl_usuario (nombre_usuario, password_usuario) values ('Usuario prueba', '12345678');

select * from tbl_producto;
insert into tbl_producto (nombre_producto, precio_producto, stock) values ('Producto prueba', 1000, 2);

select * from tbl_pedido;
insert into tbl_pedido (id_producto, id_usuario, stock_solicitado) values (1, 1, 1);