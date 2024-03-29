defmodule GarbanzoBeans.Recipes do
  @moduledoc """
  The Recipes context.
  """

  import Ecto.Query, warn: false
  alias GarbanzoBeans.Repo

  alias GarbanzoBeans.Recipes.Recipe

  @doc """
  Returns the list of recipes.

  ## Examples

      iex> list_recipes()
      [%Recipe{}, ...]

  """
  def list_recipes do
    Repo.all(Recipe)
  end

  @doc """
  Gets a single recipe.

  Raises `Ecto.NoResultsError` if the Recipe does not exist.

  ## Examples

      iex> get_recipe!(123)
      %Recipe{}

      iex> get_recipe!(456)
      ** (Ecto.NoResultsError)

  """
  def get_recipe!(id), do: Repo.get!(Recipe, id)

  @doc """
  Creates a recipe.

  ## Examples

      iex> create_recipe(%{field: value})
      {:ok, %Recipe{}}

      iex> create_recipe(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_recipe(attrs \\ %{}) do
    %Recipe{}
    |> Recipe.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a recipe.

  ## Examples

      iex> update_recipe(recipe, %{field: new_value})
      {:ok, %Recipe{}}

      iex> update_recipe(recipe, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_recipe(%Recipe{} = recipe, attrs) do
    recipe
    |> Recipe.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a recipe.

  ## Examples

      iex> delete_recipe(recipe)
      {:ok, %Recipe{}}

      iex> delete_recipe(recipe)
      {:error, %Ecto.Changeset{}}

  """
  def delete_recipe(%Recipe{} = recipe) do
    Repo.delete(recipe)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking recipe changes.

  ## Examples

      iex> change_recipe(recipe)
      %Ecto.Changeset{data: %Recipe{}}

  """
  def change_recipe(%Recipe{} = recipe, attrs \\ %{}) do
    Recipe.changeset(recipe, attrs)
  end

  alias GarbanzoBeans.Recipes.Recipe_Ingredient

  @doc """
  Returns the list of recipe_igredients.

  ## Examples

      iex> list_recipe_igredients()
      [%Recipe_Ingredient{}, ...]

  """
  def list_recipe_igredients do
    Repo.all(Recipe_Ingredient)
  end

  @doc """
  Gets a single recipe__ingredient.

  Raises `Ecto.NoResultsError` if the Recipe  ingredient does not exist.

  ## Examples

      iex> get_recipe__ingredient!(123)
      %Recipe_Ingredient{}

      iex> get_recipe__ingredient!(456)
      ** (Ecto.NoResultsError)

  """
  def get_recipe__ingredient!(id), do: Repo.get!(Recipe_Ingredient, id)

  @doc """
  Creates a recipe__ingredient.

  ## Examples

      iex> create_recipe__ingredient(%{field: value})
      {:ok, %Recipe_Ingredient{}}

      iex> create_recipe__ingredient(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_recipe__ingredient(attrs \\ %{}) do
    %Recipe_Ingredient{}
    |> Recipe_Ingredient.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a recipe__ingredient.

  ## Examples

      iex> update_recipe__ingredient(recipe__ingredient, %{field: new_value})
      {:ok, %Recipe_Ingredient{}}

      iex> update_recipe__ingredient(recipe__ingredient, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_recipe__ingredient(%Recipe_Ingredient{} = recipe__ingredient, attrs) do
    recipe__ingredient
    |> Recipe_Ingredient.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a recipe__ingredient.

  ## Examples

      iex> delete_recipe__ingredient(recipe__ingredient)
      {:ok, %Recipe_Ingredient{}}

      iex> delete_recipe__ingredient(recipe__ingredient)
      {:error, %Ecto.Changeset{}}

  """
  def delete_recipe__ingredient(%Recipe_Ingredient{} = recipe__ingredient) do
    Repo.delete(recipe__ingredient)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking recipe__ingredient changes.

  ## Examples

      iex> change_recipe__ingredient(recipe__ingredient)
      %Ecto.Changeset{data: %Recipe_Ingredient{}}

  """
  def change_recipe__ingredient(%Recipe_Ingredient{} = recipe__ingredient, attrs \\ %{}) do
    Recipe_Ingredient.changeset(recipe__ingredient, attrs)
  end
end
