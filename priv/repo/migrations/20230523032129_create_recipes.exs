defmodule GarbanzoBeans.Repo.Migrations.CreateRecipes do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :recipe_id, :binary_id, primary_key: true
      add :recipe_name, :string
      add :description, :string

      timestamps()
    end
  end
end
