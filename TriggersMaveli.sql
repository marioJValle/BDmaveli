-- creando trigger para generar fecha de forma automatica --
-- Trigger para la tabla Gastos --
DELIMITER //
CREATE TRIGGER insert_fecha
BEFORE INSERT ON Gastos
FOR EACH ROW
BEGIN
    SET NEW.fecha = NOW();
END;
//
DELIMITER ;

-- Trigger para la tabla Servicio --

DELIMITER //
CREATE TRIGGER insert_fechaServ
BEFORE INSERT ON servicio
FOR EACH ROW
BEGIN
    SET NEW.fecha = NOW();
END;
//
DELIMITER ;

-- Trigger para la tabla compra producto --
DELIMITER //
CREATE TRIGGER insert_fechaComProd
BEFORE INSERT ON compra_producto
FOR EACH ROW
BEGIN
    SET NEW.fecha = NOW();
END;
//
DELIMITER ;