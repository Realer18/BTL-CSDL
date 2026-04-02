---Đếm số cư dân trong từng căn hộ
SELECT SoCanHo, COUNT(*) AS SoLuongCuDan
FROM CuDan
GROUP BY SoCanHo;
