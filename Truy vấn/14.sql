---Truy vấn JOIN nhiều bảng (full thông tin cư dân + căn hộ + quản lý)
SELECT CD.TenCuDan, CH.SoCanHo, NQL.TenNguoiQuanLy
FROM CuDan CD
JOIN CanHo CH ON CD.SoCanHo = CH.SoCanHo
JOIN NguoiQuanLy NQL ON CH.IDNguoiQuanLy = NQL.IDNguoiQuanLy;
