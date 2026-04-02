---Lấy danh sách căn hộ kèm tên người quản lý
SELECT CH.SoCanHo, CH.SoTang, NQL.TenNguoiQuanLy
FROM CanHo CH
JOIN NguoiQuanLy NQL 
ON CH.IDNguoiQuanLy = NQL.IDNguoiQuanLy;
