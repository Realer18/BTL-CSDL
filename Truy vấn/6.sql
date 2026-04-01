---Danh sách xe của cư dân
SELECT cd.TenCuDan, xm.BienSoXe, xm.LoaiXe
FROM XeMay xm
JOIN CuDan cd ON xm.IDCuDan = cd.IDCuDan;
