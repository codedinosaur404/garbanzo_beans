defmodule GarbanzoBeans.Repo.Migrations.CreateRecipeIgredients do
  use Ecto.Migration

  def change do
    create table(:recipe_ingredients) do
      add :recipe_id, :integer
      add :measurement_id, :integer
      add :measurement_qty_id, :integer
      add :ingredient_id, :integer

      timestamps()
    end
  end
end
