---Top căn hộ có tiền hóa đơn cao nhất
SELECT TOP 3 SoCanHo, SUM(SoTien) AS TongTien
FROM HoaDonCuDan
GROUP BY SoCanHo
ORDER BY TongTien DESC;
