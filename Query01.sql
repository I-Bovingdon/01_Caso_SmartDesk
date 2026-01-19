-----------------------------------------
--#0. SELECCION DEL CONTEXTO
-----------------------------------------
USE DATABASE UCM;
USE SCHEMA SMART_DESK;
USE WAREHOUSE FINCH_WH;

-----------------------------------------
--#1. RENDIMIENTO DE LA CUENTA DEL CLIENTE ADABS ENTERTAINMENT EN EL AÑO 2020 : 
-----------------------------------------
SELECT 
    ACCOUNT AS CLIENTE, 
    YEAR, 
    CATEGORY        		AS CATEGORIA,
    MAINTENANCE     		AS MANTENIMIENTO, 
    PRODUCT         		AS PRODUCTO, 
    PARTS           		AS PARTES, 
    SUPPORT         		AS SOPORTE, 
    TOTAL           		AS TOTAL_VENTAS,
    UNITS_SOLD      		AS UNIDADES_VENDIDAS,
    PROFIT          		AS BENEFICIO_TOTAL,
    CASE 
        WHEN TOTAL = 0 THEN NULL
        ELSE ROUND((PROFIT / TOTAL) * 100, 2)
    END AS MARGEN
FROM SALES
WHERE ACCOUNT = 'Adabs Entertainment'
  AND YEAR = 2020
;
