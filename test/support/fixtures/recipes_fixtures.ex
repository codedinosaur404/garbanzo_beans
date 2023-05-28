defmodule GarbanzoBeans.RecipesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `GarbanzoBeans.Recipes` context.
  """

  @doc """
  Generate a recipe.
  """
  def recipe_fixture(attrs \\ %{}) do
    {:ok, recipe} =
      attrs
      |> Enum.into(%{
        description: "some description",
        recipe_name: "some recipe_name"
      })
      |> GarbanzoBeans.Recipes.create_recipe()

    recipe
  end

  @doc """
  Generate a recipe__ingredient.
  """
  def recipe__ingredient_fixture(attrs \\ %{}) do
    {:ok, recipe__ingredient} =
      attrs
      |> Enum.into(%{
        ingredient_id: 42,
        measurement_id: 42,
        measurement_qty_id: 42,
        recipe_id: 42
      })
      |> GarbanzoBeans.Recipes.create_recipe__ingredient()

    recipe__ingredient
  end
end
