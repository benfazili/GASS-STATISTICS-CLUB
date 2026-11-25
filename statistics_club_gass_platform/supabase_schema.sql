-- Starter schema outline for a production Supabase build.
-- Apply only after reviewing and configuring RLS policies.
create table public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  full_name text not null,
  role text not null default 'user' check (role in ('user','admin')),
  created_at timestamptz not null default now()
);
create table public.folders (
  id uuid primary key default gen_random_uuid(),
  owner_id uuid not null references public.profiles(id) on delete cascade,
  name text not null,
  description text,
  visibility text not null default 'private' check (visibility in ('private','shared','submitted')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create table public.student_records (
  id uuid primary key default gen_random_uuid(),
  folder_id uuid not null references public.folders(id) on delete cascade,
  title text not null,
  student_id text,
  class_name text,
  address text,
  phone text,
  email text,
  caption text,
  created_at timestamptz not null default now()
);
create table public.file_attachments (
  id uuid primary key default gen_random_uuid(),
  folder_id uuid references public.folders(id) on delete cascade,
  record_id uuid references public.student_records(id) on delete cascade,
  owner_id uuid not null references public.profiles(id) on delete cascade,
  storage_path text not null,
  original_name text not null,
  mime_type text,
  created_at timestamptz not null default now()
);
create table public.media_posts (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  caption text,
  storage_path text not null,
  media_type text not null,
  visibility text not null default 'public',
  status text not null default 'draft',
  created_by uuid not null references public.profiles(id),
  created_at timestamptz not null default now()
);
