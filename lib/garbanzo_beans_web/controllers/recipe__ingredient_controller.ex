defmodule GarbanzoBeansWeb.Recipe_IngredientController do
  use GarbanzoBeansWeb, :controller

  alias GarbanzoBeans.Recipes
  alias GarbanzoBeans.Recipes.Recipe_Ingredient

  def index(conn, _params) do
    recipe_igredients = Recipes.list_recipe_igredients()
    render(conn, :index, recipe_igredients: recipe_igredients)
  end

  def new(conn, _params) do
    changeset = Recipes.change_recipe__ingredient(%Recipe_Ingredient{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"recipe__ingredient" => recipe__ingredient_params}) do
    case Recipes.create_recipe__ingredient(recipe__ingredient_params) do
      {:ok, recipe__ingredient} ->
        conn
        |> put_flash(:info, "Recipe  ingredient created successfully.")
        |> redirect(to: ~p"/recipe_igredients/#{recipe__ingredient}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    recipe__ingredient = Recipes.get_recipe__ingredient!(id)
    render(conn, :show, recipe__ingredient: recipe__ingredient)
  end

  def edit(conn, %{"id" => id}) do
    recipe__ingredient = Recipes.get_recipe__ingredient!(id)
    changeset = Recipes.change_recipe__ingredient(recipe__ingredient)
    render(conn, :edit, recipe__ingredient: recipe__ingredient, changeset: changeset)
  end

  def update(conn, %{"id" => id, "recipe__ingredient" => recipe__ingredient_params}) do
    recipe__ingredient = Recipes.get_recipe__ingredient!(id)

    case Recipes.update_recipe__ingredient(recipe__ingredient, recipe__ingredient_params) do
      {:ok, recipe__ingredient} ->
        conn
        |> put_flash(:info, "Recipe  ingredient updated successfully.")
        |> redirect(to: ~p"/recipe_igredients/#{recipe__ingredient}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, recipe__ingredient: recipe__ingredient, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    recipe__ingredient = Recipes.get_recipe__ingredient!(id)
    {:ok, _recipe__ingredient} = Recipes.delete_recipe__ingredient(recipe__ingredient)

    conn
    |> put_flash(:info, "Recipe  ingredient deleted successfully.")
    |> redirect(to: ~p"/recipe_igredients")
  end
end
