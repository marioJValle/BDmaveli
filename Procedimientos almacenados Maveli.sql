-- Aqui se reflejaran los procedimientos almacenados de MAVELI
-- Procedimientos almacenados para insertar datos en las tablas 

-- 1 --
DELIMITER $$

DELIMITER $$
CREATE PROCEDURE `insertVehiculo` (
in p_marca varchar(75),
in p_modelo varchar (75),
in p_anio int,
in p_Id_Usuario int
)
BEGIN
insert into vehiculo (Modelo, Marca, Anio, Id_Usuario)
values (p_Modelo, p_Marca, p_Anio,p_Id_Usuario);
END$$
DELIMITER ;


-- 2 --
DELIMITER $$

CREATE PROCEDURE `InsertUsuario` (
IN p_Nombre1 varchar(50),
IN p_Nombre2 varchar(50) ,
IN p_Apellido1 varchar(50), 
IN p_Apellido2 varchar(50) ,
IN p_Telefono int ,
IN p_Email varchar(250), 
IN p_Clave_acceso varchar(250)
)
BEGIN
insert into Usuario (Nombre1, Nombre2,Apellido1,Apellido2,Telefono,Email,Clave_acceso)
Values (p_Nombre1,p_Nombre2,p_Apellido1,p_Apellido2, p_Telefono,p_Email, p_Clave_acceso);
END$$

DELIMITER ;

-- 3 --
DELIMITER $$

CREATE PROCEDURE `InsertTipoServicio` (
in p_Tipo_Servicio varchar (50),
in p_Descripcion varchar (150),
in p_Costo int,
in p_Id_afiliado int
)
BEGIN
insert into Tipo_Servicio (Tipo_servicio, Descripcion, Costo,Id_afiliado)
values (p_Tipo_Servicio,p_Descripcion,p_Costo,p_Id_afiliado );
END$$

DELIMITER ;

-- 4 --
DELIMITER $$

CREATE PROCEDURE `InsertServicio` (
in p_Id_tiposervicio int,
in p_Id_vehiculo int,
in p_fecha datetime
)
BEGIN
insert into servicio (Id_tiposervicio, Id_vehiculo, Fecha)
values (p_Id_tiposervicio,p_Id_vehiculo,p_Fecha );
END$$

DELIMITER ;

-- 5 --

DELIMITER $$
CREATE PROCEDURE `InsertProducto` (
in p_Nombre varchar (100),
in p_Marca varchar (50),
in p_Numero_parte varchar (50),
in p_Categoria varchar (50),
in p_Costo float,
in p_Cantidad_Stock int,
in p_anio_fabricacion int,
in p_Modelo_auto varchar (75),
in p_Id_afiliado int
)
BEGIN
insert into Producto (Nombre,Marca,Numero_parte,Categoria,Costo,Cantidad_Stock,anio_fabricacion,Modelo_auto,Id_afiliado)
values (p_Nombre,p_Marca,p_Numero_parte,p_Categoria,p_Costo,p_Cantidad_Stock,p_anio_fabricacion,p_Modelo_auto,p_Id_afiliado );
END$$

DELIMITER ;

-- 6 --
DELIMITER $$

CREATE PROCEDURE `InsertNegocio` (
in p_Nombre_negocio varchar (80),
in p_Nombre_propiet varchar (80),
in p_Telefono_negoc int,
in p_Email varchar (80),
in p_Clave_acceso varchar (30),
in p_Direccion varchar (100)
)
BEGIN
insert into Negocio (Nombre_negocio, Nombre_propiet, Telefono_negoc, Email, Clave_acceso,Direccion)
values (p_Nombre_negocio, p_Nombre_propiet, p_Telefono_negoc, p_Email, p_Clave_acceso, p_Direccion );
END$$

DELIMITER ;

-- 7 --

DELIMITER $$

CREATE PROCEDURE `InsertTGastos` (
in p_Descripcion varchar (100),
in P_Monto float,
in p_Fecha datetime,
in p_Id_vehiculo int
)
BEGIN
insert into Gastos (Descripcion, Monto, Fecha, Id_vehiculo)
values (p_Descripcion, p_Monto,p_Fecha, p_Id_vehiculo );
END$$

DELIMITER ;

-- 8 -- 
DELIMITER $$

CREATE PROCEDURE `InsertCompraProducto` (
in p_Id_compra int,
in p_Id_producto int,
in p_Id_usuario int,
in p_Fecha datetime
)
BEGIN
insert into compra_producto (Id_compra, Id_producto, Id_usuario, Fecha)
values (p_Id_compra, p_Id_producto, p_Id_usuario, p_Fecha );
END$$

-- 9 --

DELIMITER $$

CREATE PROCEDURE `InsertAfiliado` (
in p_Id_Negocio int,
in p_Tipo varchar (50)
)
BEGIN
insert into Afiliados (Id_negocio, Tipo)
values (p_Id_negocio, p_Tipo);
END$$

DELIMITER ;

-- Procedimientos almacenados para visualizar datos de las tablas 

-- 1 --
DELIMITER $$
CREATE PROCEDURE `mostrarAfiliados` ()
BEGIN
select * from afiliado;
END$$
DELIMITER ;

-- 2 -- 
DELIMITER $$
CREATE PROCEDURE `mostrarCompraProducto` ()
BEGIN
select * from compra_producto;
END$$
DELIMITER ;

-- 3 --
DELIMITER $$
CREATE PROCEDURE `mostrarGastos` ()
BEGIN
select * from gastos;
END$$
DELIMITER ;

-- 4 --
DELIMITER $$
CREATE PROCEDURE `mostrarNegocio` ()
BEGIN
select * from negocio;
END$$
DELIMITER ;

-- 5 --
DELIMITER $$
CREATE PROCEDURE `mostrarProducto` ()
BEGIN
select * from producto;
END$$
DELIMITER ;

-- 6 --
DELIMITER $$
CREATE PROCEDURE `mostrarServicio` ()
BEGIN
select * from servicio;
END$$
DELIMITER ;

-- 7 --
DELIMITER $$
CREATE PROCEDURE `mostrarTipoServicio` ()
BEGIN
select * from tipo_servicio;
END$$
DELIMITER ;

-- 8 --
DELIMITER $$
CREATE PROCEDURE `mostrarUsuarios` ()
BEGIN
select * from usuario;
END$$
DELIMITER ;

-- 9 --
DELIMITER $$
CREATE PROCEDURE `mostrarVehiculo` ()
BEGIN
select * from vehiculo;
END$$
DELIMITER ;

-- procedimientos almacenados para eliminar datos de una tabla mediante el id

-- 1 --
DELIMITER $$
CREATE PROCEDURE `DeleteAfiliados` (id int)
BEGIN
delete from afiliados where id=Id_afiliado;
END$$
DELIMITER ; 

-- 2 --

DELIMITER $$
CREATE PROCEDURE `DeleteCompraProducto` (id int)
BEGIN
delete from compra_producto where id=Id_compra;
END$$
DELIMITER ; 

-- 3 --
DELIMITER $$
CREATE PROCEDURE `DeleteGastos` (id int)
BEGIN
delete from gastos where id=Id_Gasto;
END$$
DELIMITER ;

-- 4 --
DELIMITER $$
CREATE PROCEDURE `DeleteNegocio` (id int)
BEGIN
delete from negocio where id=Id_Negocio;
END$$
DELIMITER ;

-- 5 --

DELIMITER $$
CREATE PROCEDURE `DeleteProducto` (id int)
BEGIN
delete from producto where id=Id_producto;
END$$
DELIMITER ;

-- 6 --

DELIMITER $$
CREATE PROCEDURE `DeleteServicio` (id int)
BEGIN
delete from Servicio where id=Id_servicio;
END$$
DELIMITER ;

-- 7 --
DELIMITER $$
CREATE PROCEDURE `DeleteTipoServicio` (id int)
BEGIN
delete from tipo_servicio where id=Id_tiposervicio;
END$$
DELIMITER ;

-- 8 --
DELIMITER $$
CREATE PROCEDURE `DeleteUsuario` (id int)
BEGIN
delete from usuario where id=Id_Usuario;
END$$
DELIMITER ;

-- 9 --
DELIMITER $$
CREATE PROCEDURE `DeleteVehiculo` (id int)
BEGIN
delete from vehiculo where id=Id_vehiculo;
END$$
DELIMITER ;

-- Procedimientos almacenados para editar un dato de una tabla

-- 1 --

DELIMITER $$

CREATE PROCEDURE `ActualizarAfiliado` (
in Id int,
in Tipo varchar (50)

)
BEGIN
update Afiliados set Tipo=Tipo where Id_afiliado = Id; 
END$$

DELIMITER ;

-- 2 --

DELIMITER $$

CREATE PROCEDURE `ActualizarGastos` (
in Id int,
in Descripcion varchar (100),
in Monto float
)
BEGIN
update gastos set Descripcion=Descripcion, Monto=Monto where Id_Gasto = Id; 
END$$

DELIMITER ;

-- 3 --

DELIMITER $$

CREATE PROCEDURE `ActualizarNegocio` (
in Id int,
in Nombre_negocio varchar (80),
in Nombre_propiet varchar (80),
in Telefono_negoc int,
in Email varchar (80),
in Clave_acceso varchar (30),
in Direccion varchar (100)
)
BEGIN
update negocio set Nombre_negocio=Nombre_negocio, Nombre_propiet=Nombre_propiet,
Telefono_negoc=Telefono_negoc, Email=Email,Clave_acceso=Clave_acceso, Direccion=Direccion
 where Id_Negocio = Id; 
END$$

DELIMITER ;

-- 4 --
DELIMITER $$

CREATE PROCEDURE `ActualizarProducto` (
in Id int,
in Nombre varchar (100),
in Marca varchar (50),
in Numero_parte varchar (50),
in Categoria varchar (50),
in Costo float,
in Cantidad_Stock int,
in anio_fabricacion int,
in Modelo_auto varchar (75)
)
BEGIN
update producto set Nombre=Nombre, Marca=Marca, Numero_parte=Numero_parte,
Categoria=Categoria,Costo=Costo, anio_fabricacion=anio_fabricacion, Modelo_auto=Modelo_auto
where Id_afiliado = Id; 
END$$

DELIMITER ;

-- 5 --

DELIMITER $$

CREATE PROCEDURE `ActualizarUsuario` (
in Id int,
in Nombre1 varchar (50),
in Nombre2 varchar (50),
in Apellido1 varchar (50),
in Apellido2 varchar (50),
in Telefono int,
in Email varchar (250),
in Clave_acceso varchar (250)

)
BEGIN
update usuario set Nombre1=Nombre1, Nombre2=Nombre2, Apellido1=Apellido1, Apellido2=Apellido2,
Telefono=Telefono, Email=Email, Clave_acceso=Clave_acceso where Id_usuario = Id; 
END$$

DELIMITER ;
 
 -- 6 --
 DELIMITER $$

CREATE PROCEDURE `ActualizarVehiculo` (
in Id int,
in Marca varchar (75),
in Modelo varchar (75),
in Anio int
)
BEGIN
update vehiculo set Marca=Marca, Modelo=Modelo, Anio=Anio where Id_usuario = Id; 
END$$

DELIMITER ;