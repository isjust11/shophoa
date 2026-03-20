import requests
import os
import time

BASE_URL = "https://shophoa.techcave.space"
API_HEADERS = {
    "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36"
}

# Thư mục lưu ảnh (backend/public/uploads)
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
SAVE_DIR = os.path.join(SCRIPT_DIR, "..", "backend", "public", "uploads")
os.makedirs(SAVE_DIR, exist_ok=True)

download_ok = 0
download_skip = 0
download_fail = 0


def download_image(url: str):
    """Tải 1 ảnh về thư mục uploads. Bỏ qua nếu file đã tồn tại."""
    global download_ok, download_skip, download_fail

    # Chỉ xử lý đường dẫn tương đối (/uploads/...)
    if url.startswith("/uploads/"):
        filename = os.path.basename(url)
        full_url = BASE_URL + url
    elif url.startswith("http"):
        # URL ngoài (unsplash, ...) - bỏ qua vì không cần thiết copy về
        print(f"  ⚠️  Bỏ qua URL ngoài: {url[:60]}...")
        download_skip += 1
        return
    else:
        print(f"  ❓ URL không xác định: {url}")
        download_skip += 1
        return

    save_path = os.path.join(SAVE_DIR, filename)

    # Bỏ qua nếu đã tải rồi
    if os.path.exists(save_path):
        download_skip += 1
        return

    try:
        resp = requests.get(full_url, headers=API_HEADERS, timeout=15, stream=True)
        if resp.status_code == 200:
            with open(save_path, "wb") as f:
                for chunk in resp.iter_content(chunk_size=8192):
                    f.write(chunk)
            size_kb = os.path.getsize(save_path) / 1024
            print(f"  ✅ {filename} ({size_kb:.1f} KB)")
            download_ok += 1
        else:
            print(f"  ❌ HTTP {resp.status_code}: {full_url}")
            download_fail += 1
    except Exception as e:
        print(f"  ❌ Lỗi: {filename} → {e}")
        download_fail += 1

    # Tránh spam server
    time.sleep(0.1)


def collect_image_urls():
    """Thu thập tất cả URL ảnh từ API categories + products."""
    urls = set()

    # Categories
    print("📡 Lấy categories...")
    resp = requests.get(f"{BASE_URL}/api/categories", headers=API_HEADERS)
    for cat in resp.json():
        if cat.get("thumbnail"):
            urls.add(cat["thumbnail"])

    # Products
    print("📡 Lấy products...")
    resp = requests.get(f"{BASE_URL}/api/products", headers=API_HEADERS)
    for product in resp.json():
        for img in product.get("images", []):
            if img.get("url"):
                urls.add(img["url"])

    return urls


def main():
    print(f"📁 Thư mục lưu ảnh: {os.path.abspath(SAVE_DIR)}\n")

    urls = collect_image_urls()
    print(f"\n🔍 Tổng số ảnh cần tải: {len(urls)}\n")

    for url in sorted(urls):
        download_image(url)

    print(f"\n{'='*50}")
    print(f"✅ Tải thành công : {download_ok} ảnh")
    print(f"⏭️  Bỏ qua (đã có) : {download_skip} ảnh")
    print(f"❌ Thất bại       : {download_fail} ảnh")
    print(f"📁 Đã lưu tại     : {os.path.abspath(SAVE_DIR)}")


if __name__ == "__main__":
    main()
