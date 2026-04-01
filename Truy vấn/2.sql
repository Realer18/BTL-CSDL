---Đếm số cư dân trong mỗi căn hộ
SELECT SoCanHo, COUNT(*) AS SoLuongCuDan
FROM CuDan
GROUP BY SoCanHo;
