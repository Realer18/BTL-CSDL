---Danh sách mặt bằng thương mại + hóa đơn
SELECT mb.TenDonViThue, mb.GiaThue, hd.SoTien, hd.TrangThai
FROM MatBangThuongMai mb
JOIN HoaDonTM hd ON mb.IDMBTM = hd.IDMBTM;
