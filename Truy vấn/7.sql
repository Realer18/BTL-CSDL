---Danh sách cư dân có xe máy
SELECT CD.TenCuDan, XM.BienSoXe
FROM XeMay XM
JOIN CuDan CD 
ON XM.IDCuDan = CD.IDCuDan;
