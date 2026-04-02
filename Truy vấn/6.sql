---Tổng tiền hóa đơn theo từng căn hộ
SELECT SoCanHo, SUM(SoTien) AS TongTien
FROM HoaDonCuDan
GROUP BY SoCanHo;
