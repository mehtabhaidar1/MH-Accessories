-- Allow public access for testing purposes
DROP POLICY IF EXISTS "Enable all access for authenticated users" ON public.products;

-- Create a policy that allows EVERYONE to insert/update/delete
-- WARNING: Use this only for development/testing!
CREATE POLICY "Enable all access for all users" 
ON public.products FOR ALL 
USING (true) 
WITH CHECK (true);
