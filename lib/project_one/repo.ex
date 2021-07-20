defmodule ProjectOne.Repo do
  use Ecto.Repo,
    otp_app: :project_one,
    adapter: Ecto.Adapters.Postgres
end
