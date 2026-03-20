import requests
import json
import os
from dotenv import load_dotenv

load_dotenv()

BASE_URL = "https://shophoa.techcave.space/api"
HEADERS = {
    "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36"
}
OUTPUT_FILE = os.path.join(os.path.dirname(__file__), "products.sql")


def clean_sql(val):
    """Chuyển đổi giá trị Python sang giá trị SQL hợp lệ."""
    if val is None:
        return "NULL"
    if isinstance(val, bool):
        return "1" if val else "0"
    if isinstance(val, (int, float)):
        return str(val)
    if isinstance(val, (list, dict)):
        escaped = json.dumps(val, ensure_ascii=False).replace("'", "''")
        return f"'{escaped}'"
    # String
    escaped = str(val).replace("'", "''")
    return f"'{escaped}'"


def fetch_categories(lines):
    url = f"{BASE_URL}/categories"
    print(f"📡 Đang lấy danh mục từ: {url}...")
    response = requests.get(url, headers=HEADERS)
    if response.status_code != 200:
        print(f"❌ Lỗi API categories: {response.status_code}")
        return

    categories = response.json()
    lines.append("-- =============================================")
    lines.append("-- INSERT CATEGORIES")
    lines.append("-- =============================================")

    processed_ids = set()
    count = 0
    for cat in categories:
        cat_id = cat.get('id')
        if cat_id in processed_ids:
            continue

        name        = clean_sql(cat.get('name', ''))
        slug        = clean_sql(cat.get('slug', ''))
        desc        = clean_sql(cat.get('description', ''))
        thumb       = clean_sql(cat.get('thumbnail'))
        parent_id   = clean_sql(cat.get('parentId'))
        show_in_menu = 1 if cat.get('showInMenu') else 0

        sql = (
            f"INSERT INTO categories (id, name, slug, description, thumbnail, parentId, showInMenu) "
            f"VALUES ({cat_id}, {name}, {slug}, {desc}, {thumb}, {parent_id}, {show_in_menu}) "
            f"ON DUPLICATE KEY UPDATE name={name}, slug={slug}, parentId={parent_id};"
        )
        lines.append(sql)
        processed_ids.add(cat_id)
        count += 1

    print(f"✅ Categories: {count} bản ghi.")


def fetch_products(lines):
    url = f"{BASE_URL}/products"
    print(f"📡 Đang lấy sản phẩm từ: {url}...")
    response = requests.get(url, headers=HEADERS)
    if response.status_code != 200:
        print(f"❌ Lỗi API products: {response.status_code}")
        return

    products = response.json()

    lines.append("")
    lines.append("-- =============================================")
    lines.append("-- INSERT PRODUCTS")
    lines.append("-- =============================================")

    image_lines = []
    image_lines.append("")
    image_lines.append("-- =============================================")
    image_lines.append("-- INSERT PRODUCT IMAGES")
    image_lines.append("-- =============================================")

    prod_count = 0
    img_count = 0

    for p in products:
        pid          = p.get('id')
        name         = clean_sql(p.get('name'))
        slug         = clean_sql(p.get('slug'))
        category_id  = clean_sql(p.get('categoryId'))
        short_desc   = clean_sql(p.get('shortDescription'))
        long_desc    = clean_sql(p.get('longDescription'))
        price        = clean_sql(p.get('price'))
        orig_price   = clean_sql(p.get('originalPrice'))
        badge        = clean_sql(p.get('badge'))
        rating       = clean_sql(p.get('rating', 0))
        review_count = clean_sql(p.get('reviewCount', 0))
        features     = clean_sql(p.get('features'))
        occasions    = clean_sql(p.get('occasions'))
        created_at   = clean_sql(p.get('createdAt', '').replace('T', ' ').replace('Z', ''))
        updated_at   = clean_sql(p.get('updatedAt', '').replace('T', ' ').replace('Z', ''))

        sql = (
            f"INSERT INTO products "
            f"(id, name, slug, category_id, short_description, long_description, price, original_price, badge, rating, review_count, features, occasions, created_at, updated_at) "
            f"VALUES "
            f"({pid}, {name}, {slug}, {category_id}, {short_desc}, {long_desc}, {price}, {orig_price}, {badge}, {rating}, {review_count}, {features}, {occasions}, {created_at}, {updated_at}) "
            f"ON DUPLICATE KEY UPDATE name={name}, slug={slug}, price={price}, category_id={category_id};"
        )
        lines.append(sql)
        prod_count += 1

        # Images
        for img in p.get('images', []):
            iid       = img.get('id')
            img_url   = clean_sql(img.get('url'))
            alt_text  = clean_sql(img.get('altText'))
            sort_order = img.get('sortOrder', 0)

            img_sql = (
                f"INSERT INTO product_images (id, product_id, url, alt_text, sort_order) "
                f"VALUES ({iid}, {pid}, {img_url}, {alt_text}, {sort_order}) "
                f"ON DUPLICATE KEY UPDATE url={img_url};"
            )
            image_lines.append(img_sql)
            img_count += 1

    lines.extend(image_lines)
    print(f"✅ Products: {prod_count} sản phẩm, {img_count} hình ảnh.")


def main():
    lines = []
    lines.append("-- =============================================")
    lines.append("-- BloomStore - SQL Import Script")
    lines.append("-- Crawled from: https://shophoa.techcave.space/api")
    lines.append("-- Date: 2026-03-20")
    lines.append("-- =============================================")
    lines.append("")
    lines.append("SET NAMES utf8mb4;")
    lines.append("SET foreign_key_checks = 0;")
    lines.append("")

    fetch_categories(lines)
    fetch_products(lines)

    lines.append("")
    lines.append("SET foreign_key_checks = 1;")

    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    print(f"\n📄 Đã lưu file SQL tại: {OUTPUT_FILE}")


if __name__ == "__main__":
    main()
