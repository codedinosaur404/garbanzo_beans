defmodule GarbanzoBeans.Recipes.Recipe_Ingredient do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recipe_igredients" do
    field :ingredient_id, :integer
    field :measurement_id, :integer
    field :measurement_qty_id, :integer
    field :recipe_id, :integer

    timestamps()
  end

  @doc false
  def changeset(recipe__ingredient, attrs) do
    recipe__ingredient
    |> cast(attrs, [:recipe_id, :measurement_id, :measurement_qty_id, :ingredient_id])
    |> validate_required([:recipe_id, :measurement_id, :measurement_qty_id, :ingredient_id])
  end
end
