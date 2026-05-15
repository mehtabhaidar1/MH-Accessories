-- 1. Create the storage bucket for products
insert into storage.buckets (id, name, public)
values ('products', 'products', true)
on conflict (id) do nothing;

-- NOTE: We removed the "alter table" command because RLS is already enabled by default.

-- 2. Policies
-- We drop them first in case you are re-running this script, to avoid "policy already exists" errors.

drop policy if exists "Public Access" on storage.objects;
create policy "Public Access"
on storage.objects for select
using ( bucket_id = 'products' );

drop policy if exists "Authenticated Upload Access" on storage.objects;
create policy "Authenticated Upload Access"
on storage.objects for insert
with check ( bucket_id = 'products' and auth.role() = 'authenticated' );

drop policy if exists "Authenticated Update Access" on storage.objects;
create policy "Authenticated Update Access"
on storage.objects for update
using ( bucket_id = 'products' and auth.role() = 'authenticated' );

drop policy if exists "Authenticated Delete Access" on storage.objects;
create policy "Authenticated Delete Access"
on storage.objects for delete
using ( bucket_id = 'products' and auth.role() = 'authenticated' );
