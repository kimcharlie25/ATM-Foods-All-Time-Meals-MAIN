-- ATM ALL-TIME MASARAP MENU
-- SQL Insert Script for Menu Items
-- Generated: January 2025

-- ============================================
-- STEP 1: INSERT CATEGORIES
-- ============================================

INSERT INTO categories (id, name, icon, sort_order, active, created_at, updated_at)
VALUES 
  ('special-meals', 'Special All Time Meals', '🍗', 1, true, NOW(), NOW()),
  ('pizza', 'Pizza', '🍕', 2, true, NOW(), NOW()),
  ('hot-deals', 'Hot Deals & Combos', '🔥', 3, true, NOW(), NOW())
ON CONFLICT (id) DO UPDATE 
SET name = EXCLUDED.name, 
    icon = EXCLUDED.icon, 
    sort_order = EXCLUDED.sort_order,
    updated_at = NOW();

-- ============================================
-- STEP 2: INSERT MENU ITEMS - SPECIAL ALL TIME MEALS
-- ============================================
-- Note: All meals include 1 cup of rice and 1 Egg, unless specified otherwise

INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url, created_at, updated_at)
VALUES 
  ('Fried Chicken', 'Crispy fried chicken with 1 cup of rice and 1 egg', 115.00, 'special-meals', true, true, NULL, NOW(), NOW()),
  ('Pork Chop', 'Juicy fried pork chop with 1 cup of rice and 1 egg', 120.00, 'special-meals', true, true, NULL, NOW(), NOW()),
  ('Liempo', 'Grilled pork belly with 1 cup of rice and 1 egg', 115.00, 'special-meals', true, true, NULL, NOW(), NOW()),
  ('Crispy Fried Liempo', 'Crispy fried pork belly with 1 cup of rice and 1 egg', 120.00, 'special-meals', true, true, NULL, NOW(), NOW()),
  ('ATM-Adobo', '75g of savory pork adobo with 1 boiled egg and 1 cup of rice', 115.00, 'special-meals', true, true, NULL, NOW(), NOW()),
  ('Chicken Sisig/Dinakdakan', '50g of flavorful chicken sisig or dinakdakan with 1 cup of rice and 1 egg - choose your variant', 120.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Pork Sisig/Dinakdakan', '50g of savory pork sisig or dinakdakan with 1 cup of rice and 1 egg - choose your variant', 120.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Bagnet Classic', '50g of crispy bagnet with 1 cup of rice and 1 egg', 125.00, 'special-meals', true, true, NULL, NOW(), NOW()),
  ('Bagnet Ginisa', '75g of sautéed bagnet with 1 cup of rice and 1 egg', 138.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Ilocos Longganisa', '3 pcs of authentic Ilocos longganisa with 1 cup of rice and 1 egg', 125.00, 'special-meals', true, true, NULL, NOW(), NOW()),
  ('Hammonado', '2 pcs of sweet longganisa hamonado with 1 cup of rice and 1 egg', 115.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Gourmet Longganisa', '50g of premium gourmet longganisa with 1 cup of rice and 1 egg', 130.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Embotido Pork', 'Filipino pork meatloaf with 1 cup of rice and 1 egg', 115.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Embotido Chicken', 'Filipino chicken meatloaf with 1 cup of rice and 1 egg', 115.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Pork Tocino', 'Sweet cured pork with 1 cup of rice and 1 egg', 110.00, 'special-meals', true, true, NULL, NOW(), NOW()),
  ('Skinless Longganisa', '2 pcs of skinless longganisa with 1 cup of rice and 1 egg', 110.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Beef Tapa', 'Marinated beef tapa with 1 cup of rice and 1 egg', 118.00, 'special-meals', true, true, NULL, NOW(), NOW()),
  ('Fried Siomai', 'Crispy fried siomai with 1 cup of rice and 1 egg', 110.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Spicy Picadado', 'Spicy diced meat with 1 cup of rice and 1 egg', 110.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Pork Meatballs', 'Savory pork meatballs with 1 cup of rice and 1 egg', 110.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Longgadog', 'Longganisa-style hotdog with 1 cup of rice and 1 egg', 110.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Pork Giniling', 'Ground pork sauté with 1 cup of rice and 1 egg', 115.00, 'special-meals', false, true, NULL, NOW(), NOW()),
  ('Bopis', 'Spicy chopped pork and lung with 1 cup of rice and 1 egg', 115.00, 'special-meals', false, true, NULL, NOW(), NOW());

-- ============================================
-- STEP 3: INSERT MENU ITEMS - PIZZA MENU
-- ============================================

INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url, created_at, updated_at)
VALUES 
  ('Supreme Overload', 'Loaded with all your favorite toppings - the ultimate pizza experience', 199.00, 'pizza', true, true, NULL, NOW(), NOW()),
  ('Beef & Mushroom', 'Savory beef with fresh mushrooms on a cheesy base', 189.00, 'pizza', true, true, NULL, NOW(), NOW()),
  ('Pepperoni', 'Classic pepperoni pizza with generous toppings', 179.00, 'pizza', true, true, NULL, NOW(), NOW()),
  ('Hawaiian Delight', 'Sweet pineapple and ham combination - a tropical favorite', 169.00, 'pizza', true, true, NULL, NOW(), NOW()),
  ('Ham & Cheese', 'Simple and delicious - classic ham and cheese pizza', 169.00, 'pizza', false, true, NULL, NOW(), NOW()),
  ('Cheese & Bacon', 'Crispy bacon strips on a bed of melted cheese', 169.00, 'pizza', false, true, NULL, NOW(), NOW()),
  ('Cheesy Cheese', 'For cheese lovers - extra cheese on top of more cheese', 159.00, 'pizza', false, true, NULL, NOW(), NOW());

-- ============================================
-- STEP 4: INSERT MENU ITEMS - HOT DEALS & COMBOS
-- ============================================

INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url, created_at, updated_at)
VALUES 
  ('Buy 1 Get 1 Pizza', 'Get two delicious pizzas for the price of one! Choose any two pizzas from our menu', 320.00, 'hot-deals', true, true, NULL, NOW(), NOW()),
  ('Pizza + Milk Tea Combo', 'Perfect combo! One pizza of your choice plus refreshing milk tea', 220.00, 'hot-deals', true, true, NULL, NOW(), NOW()),
  ('Buy 5 Pizza Party', 'Ultimate party deal! Buy 5 pizzas and get 2 FREE milk teas - choose your flavors', 850.00, 'hot-deals', true, true, NULL, NOW(), NOW());

-- ============================================
-- STEP 5: ADD VARIATIONS (Optional)
-- ============================================
-- Add variations for items that have choices

-- Chicken Sisig/Dinakdakan Variations
INSERT INTO variations (menu_item_id, name, price, created_at)
SELECT id, 'Sisig', 0.00, NOW()
FROM menu_items 
WHERE name = 'Chicken Sisig/Dinakdakan';

INSERT INTO variations (menu_item_id, name, price, created_at)
SELECT id, 'Dinakdakan', 0.00, NOW()
FROM menu_items 
WHERE name = 'Chicken Sisig/Dinakdakan';

-- Pork Sisig/Dinakdakan Variations
INSERT INTO variations (menu_item_id, name, price, created_at)
SELECT id, 'Sisig', 0.00, NOW()
FROM menu_items 
WHERE name = 'Pork Sisig/Dinakdakan';

INSERT INTO variations (menu_item_id, name, price, created_at)
SELECT id, 'Dinakdakan', 0.00, NOW()
FROM menu_items 
WHERE name = 'Pork Sisig/Dinakdakan';

-- ============================================
-- VERIFICATION QUERY
-- ============================================
-- Run this to verify the data was inserted correctly

-- SELECT 
--   c.name as category_name,
--   m.name as item_name,
--   m.base_price,
--   m.description,
--   COUNT(v.id) as variations_count
-- FROM menu_items m
-- JOIN categories c ON m.category = c.id
-- LEFT JOIN variations v ON v.menu_item_id = m.id
-- GROUP BY c.name, c.sort_order, m.name, m.base_price, m.description
-- ORDER BY c.sort_order, m.base_price DESC;

-- ============================================
-- NOTES:
-- ============================================
-- 1. All IDs are auto-generated using DEFAULT or SERIAL/UUID
-- 2. Prices are in Philippine Peso (PHP)
-- 3. All "Special All Time Meals" include 1 cup of rice and 1 egg (noted in descriptions)
-- 4. Popular items are marked with popular = true
-- 5. All items are initially available (available = true)
-- 6. image_url is set to NULL - add images later via admin dashboard
-- 7. Timestamps use NOW() for created_at and updated_at
-- 8. Variations are added for Sisig/Dinakdakan items (customer can choose)
-- 9. Hot deals pricing calculated based on typical bundle values

-- ============================================
-- CLEANUP (if needed to start fresh)
-- ============================================
-- Uncomment these if you need to remove the data and start over
-- DELETE FROM variations WHERE menu_item_id IN (SELECT id FROM menu_items WHERE category IN ('special-meals', 'pizza', 'hot-deals'));
-- DELETE FROM menu_items WHERE category IN ('special-meals', 'pizza', 'hot-deals');
-- DELETE FROM categories WHERE id IN ('special-meals', 'pizza', 'hot-deals');

