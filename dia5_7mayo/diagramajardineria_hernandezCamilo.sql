-- Continuacion de tarea del dia 5 

-- apartir de la 7 consulta..





/* 15.2  Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.

    Utilizando la función ADDDATE de MySQL.
    Utilizando la función DATEDIFF de MySQL.
    ¿Sería posible resolver esta consulta utilizando el operador de suma + o resta -? */

select * from pedido where  DATEDIFF(fecha_esperada,fecha_entrega) >=2

