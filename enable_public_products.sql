-- FINAL PERMISSIONS RESET (Fixes Upload Error)

-- 1. PRODUCTS TABLE
-- Reset to simple "Authenticated can write"
drop policy if exists "Public Read Access" on products;
drop policy if exists "Admin Modify Access" on products;
drop policy if exists "Authenticated Modify Access" on products;

create policy "Public Read Access"
on products for select
using ( true );

create policy "Authenticated Modify Access"
on products for all
using ( auth.role() = 'authenticated' )
with check ( auth.role() = 'authenticated' );


-- 2. STORAGE BUCKET (The part that was causing your error)
-- Remove the "Email Check" policies
drop policy if exists "Admin Upload Access" on storage.objects;
drop policy if exists "Admin Update Access" on storage.objects;
drop policy if exists "Admin Delete Access" on storage.objects;
drop policy if exists "Authenticated Upload Access" on storage.objects;
drop policy if exists "Authenticated Update Access" on storage.objects;
drop policy if exists "Authenticated Delete Access" on storage.objects;
drop policy if exists "Public Access" on storage.objects;

-- Create simple "If logged in, you can upload" policies
create policy "Public Access" 
on storage.objects for select 
using ( bucket_id = 'products' );

create policy "Authenticated Upload Access" 
on storage.objects for insert 
with check ( bucket_id = 'products' and auth.role() = 'authenticated' );

create policy "Authenticated Update Access" 
on storage.objects for update 
using ( bucket_id = 'products' and auth.role() = 'authenticated' );

create policy "Authenticated Delete Access" 
on storage.objects for delete 
using ( bucket_id = 'products' and auth.role() = 'authenticated' );
