---Lấy thông tin căn hộ + quản lý
SELECT ch.SoCanHo, ch.SoTang, nql.TenNguoiQuanLy
FROM CanHo ch
JOIN NguoiQuanLy nql ON ch.IDNguoiQuanLy = nql.IDNguoiQuanLy;
