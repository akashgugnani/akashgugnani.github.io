create table if not exists public.blogs (
  id text primary key,
  title text not null,
  subtitle text not null,
  description text,
  content text not null,
  "imageUrl" text,
  svg text,
  "references" text[] default '{}',
  "userGenerated" boolean default true,
  published boolean default true,
  "createdAt" timestamptz default now(),
  "updatedAt" timestamptz default now()
);

alter table public.blogs enable row level security;

drop policy if exists "Public read blogs" on public.blogs;
create policy "Public read blogs"
on public.blogs
for select
to anon
using (true);

drop policy if exists "Public write blogs" on public.blogs;
create policy "Public write blogs"
on public.blogs
for all
to anon
using (true)
with check (true);
