---Tìm quản lý phụ trách nhiều căn hộ nhất
SELECT TOP 1 IDNguoiQuanLy, COUNT(*) AS SoCanHoQuanLy
FROM CanHo
GROUP BY IDNguoiQuanLy
ORDER BY SoCanHoQuanLy DESC;
