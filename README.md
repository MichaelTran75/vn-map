# Việt Nam — Sa bàn 3D

Bản đồ địa hình 3D Việt Nam và Biển Đông, viết thành một file HTML tự chứa (`index.html`) để nhúng vào Wix qua iframe. Trang chạy trên MapLibre GL 5.8.

- **Địa hình:** địa hình nổi từ DEM ghép: đất liền lấy Mapterhorn (Copernicus GLO-30), đáy biển lấy AWS Terrain Tiles. Có đổ bóng và bình độ; bình độ ở zoom gần tính tại chỗ từ DEM.
- **Dữ liệu nướng sẵn (OSM):** bờ biển, biên giới, dải cao độ và độ sâu, sông, kênh, mặt nước, cao tốc và quốc lộ. Tất cả nén Encoded Polyline trong biến `GEO`.
- **Lớp bật/tắt:** địa mạo biển, địa mạo đất liền, giao thông, bảng chú giải kèm 40 địa danh (bấm để bay tới).

## Sửa và xuất bản

Bản gốc là `../Single VN map.html`. Sửa ở đó, rồi:

```bash
./sync.sh    # chép sang index.html
```

## Lưu ý

- Màu khai một chỗ: `LAND_COLORS`, `SEA_TINTS`, `BORDER_STYLE`, `ROAD_STYLE`. Thang màu trong chú giải đọc lại từ các bảng này.
- Khi thu nhỏ, `applyPanBounds` giữ sa bàn ở giữa khung nhìn. Giới hạn được tính lại mỗi lần đổi kích thước.
- Khung trình duyệt bị ẩn thì `requestAnimationFrame` ngừng chạy và bản đồ không bao giờ nạp xong.
