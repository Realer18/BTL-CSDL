---Lấy tất cả phương tiện của 1 cư dân
SELECT cd.TenCuDan, 'XeMay' AS Loai, xm.BienSoXe
FROM XeMay xm JOIN CuDan cd ON xm.IDCuDan = cd.IDCuDan
UNION
SELECT cd.TenCuDan, 'XeOTo', xo.BienSoXe
FROM XeOTo xo JOIN CuDan cd ON xo.IDCuDan = cd.IDCuDan
UNION
SELECT cd.TenCuDan, 'XeDap', xd.LoaiXe
FROM XeDap xd JOIN CuDan cd ON xd.IDCuDan = cd.IDCuDan;
