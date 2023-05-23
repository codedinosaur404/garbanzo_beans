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
end
