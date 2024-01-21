if db_id('DBTiendaCelulares') is not null --si la bd existe, la elimino para volver a crearla.
begin --inicio de bloque de código
	use master
	drop database DBTiendaCelulares
end --fin de bloque de código
go

create database DBTiendaCelulares
go

use DBTiendaCelulares
go


create table Logins(
usuario varchar(25) not null,
contraseña varchar(8) not null
);
go
--Insertar usuario 1
INSERT INTO Logins(usuario, contraseña) 
VALUES ('example@gmail.com','111');
--Insertar usuario 2
INSERT INTO Logins(usuario, contraseña) 
VALUES ('ejemplo@gmail.com','222');
go
INSERT INTO Logins(usuario, contraseña) 
VALUES ('admin','1234');
go


create table Producto(
id_producto int primary key identity,
nombre varchar(20),
marca varchar(10),
modelo varchar(15),
precio money,
descripcion varchar(50),
stock int
);
go

-- Insertar producto 1
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('iPhone 13', 'Apple', '13 Pro Max', 1099.99, 'Último modelo de iPhone', 1000);
go
-- Insertar producto 2
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('Galaxy S21', 'Samsung', 'S21 Ultra', 899.99, 'Teléfono Android de alta gama',2000);
go
-- Insertar producto 3
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('Pixel 6', 'Google', 'Pixel 6 Pro', 799.99, 'Teléfono Android con cámara avanzada',2400);
go
-- Insertar producto 4
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('OnePlus 9', 'OnePlus', '9 Pro', 749.99, 'Potente smartphone con OxygenOS',2100);
go
-- Insertar producto 5
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('Xperia 1 III', 'Sony', 'Xperia 1 III', 999.99, 'Teléfono Sony con pantalla 4K',3000);
go
-- Insertar producto 6
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('Mi 11', 'Xiaomi', 'Mi 11 Ultra', 799.99, 'Smartphone Xiaomi con cámara de 108 MP',1000);
go
-- Insertar producto 7
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('ROG Phone 5', 'ASUS', 'ROG Phone 5', 1199.99, 'Teléfono para juegos de ASUS',2500);
go
-- Insertar producto 8
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('Moto G Power', 'Motorola', 'G Power (2021)', 249.99, 'Teléfono Motorola con batería de larga duración',1000);
go
-- Insertar producto 9
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('Nokia 5.4', 'Nokia', '5.4', 199.99, 'Teléfono Nokia con Android One',3000);
go
-- Insertar producto 10
INSERT INTO Producto (nombre, marca, modelo, precio, descripcion, stock)
VALUES ('Redmi Note 10', 'Xiaomi', 'Note 10 Pro', 279.99, 'Teléfono Xiaomi con cámara de 108 MP',2000);
go

create table cliente(
id_cliente int primary key identity,
nombre varchar(20),
apellido varchar(20),
direccion varchar(70),
numero_telefono int,
correo_electronico varchar (30),
celular varchar (20),
cantidad int

);
go


-- Insertar cliente 1
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico, celular, cantidad)
VALUES ('Juan', 'Pérez', 'Av. Arequipa 123, Miraflores, Lima', 987654321, 'juan.perez@example.com','Note 10 Pro',1);
go
-- Insertar cliente 2
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico, celular,cantidad)
VALUES ('María', 'González', 'Av. Javier Prado 456, San Isidro, Lima', 555555555, 'maria.gonzalez@example.com','Note 10 Pro',2);
go
-- Insertar cliente 3
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Luis', 'Ramírez', 'Av. Larco 789, Miraflores, Lima', 444444444, 'luis.ramirez@example.com','13 Pro Max',1);
go
-- Insertar cliente 4
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Ana', 'López', 'Av. Paseo de la República 1010, La Victoria, Lima', 333333333, 'ana.lopez@example.com','13 Pro Max',2);
go
-- Insertar cliente 5
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Carlos', 'Fernández', 'Av. Garcilaso de la Vega 567, Cercado de Lima, Lima', 222222222, 'carlos.fernandez@example.com','13 Pro Max',2);
go
-- Insertar cliente 6
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Sofía', 'Martínez', 'Av. La Marina 890, San Miguel, Lima', 666666666, 'sofia.martinez@example.com','13 Pro Max',1);
go
-- Insertar cliente 7
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Jorge', 'Díaz', 'Av. Javier Prado Este 111, San Isidro, Lima', 777777777, 'jorge.diaz@example.com','13 Pro Max',1);
go
-- Insertar cliente 8
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Ana', 'Torres', 'Av. Benavides 222, Surco, Lima', 888888888, 'ana.torres@example.com','S21 Ultra',1);
go
-- Insertar cliente 9
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Pedro', 'Rodríguez', 'Av. La Mar 333, Barranco, Lima', 999999999, 'pedro.rodriguez@example.com','S21 Ultra',4);
go
-- Insertar cliente 10
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Laura', 'Gómez', 'Av. Petit Thouars 555, San Isidro, Lima', 123456789, 'laura.gomez@example.com','S21 Ultra',1);
go
-- Insertar cliente 11
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Raúl', 'Chávez', 'Av. Brasil 777, Breña, Lima', 987654321, 'raul.chavez@example.com','S21 Ultra',1);
go
-- Insertar cliente 12
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Carmen', 'Hernández', 'Av. La Paz 888, Miraflores, Lima', 555555555, 'carmen.hernandez@example.com','S21 Ultra',1);

-- Insertar cliente 13
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Diego', 'Suarez', 'Av. Bolívar 666, Pueblo Libre, Lima', 444444444, 'diego.suarez@example.com','S21 Ultra',1);

-- Insertar cliente 14
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Marta', 'Jiménez', 'Av. Grau 999, Barranco, Lima', 333333333, 'marta.jimenez@example.com','S21 Ultra',1);

-- Insertar cliente 15
INSERT INTO Cliente (nombre, apellido, direccion, numero_telefono, correo_electronico,celular,cantidad)
VALUES ('Fernando', 'Rojas', 'Av. Larco 123, Miraflores, Lima', 222222222, 'fernando.rojas@example.com','S21 Ultra',2);
go

CREATE OR ALTER PROCEDURE usp_ActualizarStockYRegistrarCompra
    @Nombre varchar(20),
    @Apellido varchar(20),
    @Direccion varchar(70),
    @NumeroTelefono int,
    @CorreoElectronico varchar(30),
    @NombreCelular varchar(20),
    @CantidadAComprar int,
    @Mensaje varchar(100) OUTPUT
AS
BEGIN
    -- Inicializa el mensaje
    SET @Mensaje = '';

    -- Verifica si el modelo de celular existe y si hay suficiente stock
    IF EXISTS (SELECT 1 FROM Producto WHERE modelo = @NombreCelular AND stock >= @CantidadAComprar)
    BEGIN
        -- Actualiza el stock en la tabla Producto
        UPDATE Producto
        SET stock = stock - @CantidadAComprar
        WHERE modelo = @NombreCelular;

        -- Inserta un registro en la tabla cliente para registrar la compra
        INSERT INTO cliente (nombre, apellido, direccion, numero_telefono, correo_electronico, celular, cantidad)
        VALUES (@Nombre, @Apellido, @Direccion, @NumeroTelefono, @CorreoElectronico, @NombreCelular, @CantidadAComprar);

        -- Establece el mensaje de éxito
        SET @Mensaje = 'Compra exitosa';
    END
    ELSE
    BEGIN
        -- Establece el mensaje de error
        SET @Mensaje = 'El modelo de celular no existe o no hay suficiente stock disponible.';
    END
END;
go

create table Empleado(
id_empleado int primary key identity,
nombre varchar(20),
apellido varchar(20),
cargo varchar(30)
);
go

-- Insertar empleado 1
INSERT INTO Empleado (nombre, apellido, cargo)
VALUES ('Luis', 'Gómez', 'Gerente de Tienda');

-- Insertar empleado 2
INSERT INTO Empleado (nombre, apellido, cargo)
VALUES ('Ana', 'Martínez', 'Vendedor Senior');

-- Insertar empleado 3
INSERT INTO Empleado (nombre, apellido, cargo)
VALUES ('Pedro', 'Sánchez', 'Vendedor Senior');

-- Insertar empleado 4
INSERT INTO Empleado (nombre, apellido, cargo)
VALUES ('Laura', 'Fernández', 'Vendedor Junior');

-- Insertar empleado 5
INSERT INTO Empleado (nombre, apellido, cargo)
VALUES ('Carlos', 'Rojas', 'Vendedor Junior');

-- Insertar empleado 6
INSERT INTO Empleado (nombre, apellido, cargo)
VALUES ('Marta', 'Hernández', 'Vendedor Junior');

-- Insertar empleado 7
INSERT INTO Empleado ( nombre, apellido, cargo)
VALUES ('Jorge', 'Díaz', 'Recepcionista');

-- Insertar empleado 8
INSERT INTO Empleado (nombre, apellido, cargo)
VALUES ('Sofía', 'Lara', 'Técnico de Reparación');

-- Insertar empleado 9
INSERT INTO Empleado (nombre, apellido, cargo)
VALUES ('Diego', 'Chávez', 'Técnico de Reparación');

-- Insertar empleado 10
INSERT INTO Empleado (nombre, apellido, cargo)
VALUES ('Isabel', 'Silva', 'Asistente de Ventas');

select * from cliente
select * from Empleado
select * from Logins
select * from Producto



