---Thống kê số lượng xe của mỗi cư dân
SELECT CD.TenCuDan,
       COUNT(DISTINCT XM.IDXeMay) AS SoXeMay,
       COUNT(DISTINCT XO.IDXeOTo) AS SoXeOTo,
       COUNT(DISTINCT XD.IDXeDap) AS SoXeDap
FROM CuDan CD
LEFT JOIN XeMay XM ON CD.IDCuDan = XM.IDCuDan
LEFT JOIN XeOTo XO ON CD.IDCuDan = XO.IDCuDan
LEFT JOIN XeDap XD ON CD.IDCuDan = XD.IDCuDan
GROUP BY CD.TenCuDan;
