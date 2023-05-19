defmodule GarbanzoBeans.Repo do
  use Ecto.Repo,
    otp_app: :garbanzo_beans,
    adapter: Ecto.Adapters.Postgres
end
