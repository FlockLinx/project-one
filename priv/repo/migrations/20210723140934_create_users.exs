defmodule ProjectOne.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :age, :string

      timestamps()
    end
  end
end
