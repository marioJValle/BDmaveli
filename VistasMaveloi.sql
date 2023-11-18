-- creando vista de usuario y vehiculo --
CREATE VIEW vista_usuario_vehiculo AS
SELECT usuario.nombre1, usuario.nombre2, usuario.apellido1, usuario.apellido2,
 vehiculo.marca, vehiculo.modelo, vehiculo.anio FROM usuario INNER JOIN vehiculo ON usuario.id_usuario = vehiculo.id_usuario;
 
 select * from vista_usuario_vehiculo;
 
 -- creando vista de afiliado y negocio --
CREATE VIEW vista_afiliado_negocio AS
SELECT negocio.nombre_negocio, negocio.nombre_propiet, negocio.telefono_negoc,
negocio.direccion,afiliados.Tipo FROM negocio INNER JOIN afiliados ON negocio.id_negocio = afiliados.id_negocio;

select * from vista_afiliado_negocio;

-- creando vista de servicio y tipo de servicio --

CREATE VIEW vista_tipoSer_servicio AS
SELECT tipo_servicio.tipo_servicio, tipo_servicio.descripcion, tipo_servicio.costo,
servicio.id_vehiculo, servicio.fecha FROM tipo_servicio INNER JOIN servicio ON tipo_servicio.Id_tipoServicio = servicio.Id_tipoServicio;

select * from vista_tipoSer_servicio;
