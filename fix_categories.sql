-- Fix "Camera" -> "Cameras"
UPDATE products 
SET category = 'Cameras' 
WHERE category ILIKE 'camera' OR category ILIKE 'camra' OR category = 'Camera';

-- Fix "Lens" -> "Lenses"
UPDATE products 
SET category = 'Lenses' 
WHERE category ILIKE 'lens' OR category = 'Lens';

-- Fix "Accessory" -> "Accessories"
UPDATE products 
SET category = 'Accessories' 
WHERE category ILIKE 'accessory' OR category = 'Accessory';

-- Fix "Part" -> "Parts"
UPDATE products 
SET category = 'Parts' 
WHERE category ILIKE 'part' OR category = 'Part';
