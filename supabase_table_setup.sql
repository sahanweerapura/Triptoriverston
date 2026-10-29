-- Optional Supabase PostgreSQL setup if you ever migrate from Firebase Realtime DB to Supabase:
create table if not exists public.riverston_trip_state (
  id text primary key default 'riverston_2027',
  payload jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.riverston_trip_state enable row level security;

create policy "Allow public read/write for trip group"
  on public.riverston_trip_state
  for all
  using (true)
  with check (true);
