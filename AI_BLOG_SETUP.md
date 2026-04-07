# AI Blog Setup (Fully Free Global Sync)

## Goal
Use your existing site at https://akashgugnani.github.io/ and make new blog posts available globally on all devices, with no paid backend.

## Free Architecture
- Frontend: GitHub Pages (free)
- Blog storage: Supabase free tier (Postgres + REST API)
- AI image/title generation: your Anthropic API key (paid by Anthropic usage only)

## One-Time Setup (10 minutes)

### 1) Create a free Supabase project
1. Open https://supabase.com
2. Create a new project (free plan)
3. In Project Settings -> API, copy:
   - Project URL (looks like https://xxxx.supabase.co)
   - anon public key

### 2) Create the blogs table
In Supabase SQL editor, run:

```sql
create table if not exists public.blogs (
  id text primary key,
  title text not null,
  subtitle text not null,
  description text,
  content text not null,
  imageUrl text,
  svg text,
  references text[] default '{}',
  userGenerated boolean default true,
  published boolean default true,
  createdAt timestamptz default now(),
  updatedAt timestamptz default now()
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
```

### 3) Connect your live website
1. Open https://akashgugnani.github.io/
2. Click Create Blog
3. In FREE GLOBAL BACKEND (SUPABASE):
   - Supabase URL: paste your project URL
   - Supabase anon key: paste your anon key
4. Click Save
5. You should see Active backend: Supabase (.../rest/v1/blogs)

## Verify Global Sync
1. Create one blog post on device A
2. Open the same site on device B (different network is fine)
3. You should see the same post

## Notes
- If Supabase is configured, it is used as primary backend.
- Custom API URL remains available as optional fallback.
- Local browser drafts are still used only when remote backend is unavailable.

**Q: Will my blogs sync across devices automatically?**
A: Yes, if all devices use the same API URL. For global sync across different networks, that API must be publicly hosted (not only localhost).

**Q: Can I make this system public/shareable?**
A: The posts themselves can be public now through `blogs.json`. You would still need a backend server if you want truly server-side publishing or secure handling of API keys.

## Next Steps

1. ✅ Get your OpenAI API key
2. ✅ Click "⚙ Create Blog" button
3. ✅ Write your first blog post
4. ✅ Watch AI generate your schematic
5. ✅ Share your website!

---

**Need help?** Check the console for error messages: Press `F12` → Console tab

**Want to customize?** The AI prompts are in the `generateSVGSchematic()` function around line ~1650 of index.html
