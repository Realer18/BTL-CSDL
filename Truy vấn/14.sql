---Tổng số tiền hóa đơn theo quản lý
SELECT nql.TenNguoiQuanLy, SUM(hd.SoTien) AS TongTien
FROM HoaDonCuDan hd
JOIN NguoiQuanLy nql ON hd.IDNguoiQuanLy = nql.IDNguoiQuanLy
GROUP BY nql.TenNguoiQuanLy;
