defmodule GarbanzoBeans.Recipes.Recipe do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recipes" do
    field :description, :string
    field :recipe_name, :string

    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:recipe_name, :description])
    |> validate_required([:recipe_name, :description])
  end
end
