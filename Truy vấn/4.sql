---Tổng tiền hóa đơn theo căn hộ
SELECT SoCanHo, SUM(SoTien) AS TongTien
FROM HoaDonCuDan
GROUP BY SoCanHo;
