defmodule GarbanzoBeans.RecipesTest do
  use GarbanzoBeans.DataCase

  alias GarbanzoBeans.Recipes

  describe "recipes" do
    alias GarbanzoBeans.Recipes.Recipe

    import GarbanzoBeans.RecipesFixtures

    @invalid_attrs %{description: nil, recipe_name: nil}

    test "list_recipes/0 returns all recipes" do
      recipe = recipe_fixture()
      assert Recipes.list_recipes() == [recipe]
    end

    test "get_recipe!/1 returns the recipe with given id" do
      recipe = recipe_fixture()
      assert Recipes.get_recipe!(recipe.id) == recipe
    end

    test "create_recipe/1 with valid data creates a recipe" do
      valid_attrs = %{description: "some description", recipe_name: "some recipe_name"}

      assert {:ok, %Recipe{} = recipe} = Recipes.create_recipe(valid_attrs)
      assert recipe.description == "some description"
      assert recipe.recipe_name == "some recipe_name"
    end

    test "create_recipe/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recipes.create_recipe(@invalid_attrs)
    end

    test "update_recipe/2 with valid data updates the recipe" do
      recipe = recipe_fixture()
      update_attrs = %{description: "some updated description", recipe_name: "some updated recipe_name"}

      assert {:ok, %Recipe{} = recipe} = Recipes.update_recipe(recipe, update_attrs)
      assert recipe.description == "some updated description"
      assert recipe.recipe_name == "some updated recipe_name"
    end

    test "update_recipe/2 with invalid data returns error changeset" do
      recipe = recipe_fixture()
      assert {:error, %Ecto.Changeset{}} = Recipes.update_recipe(recipe, @invalid_attrs)
      assert recipe == Recipes.get_recipe!(recipe.id)
    end

    test "delete_recipe/1 deletes the recipe" do
      recipe = recipe_fixture()
      assert {:ok, %Recipe{}} = Recipes.delete_recipe(recipe)
      assert_raise Ecto.NoResultsError, fn -> Recipes.get_recipe!(recipe.id) end
    end

    test "change_recipe/1 returns a recipe changeset" do
      recipe = recipe_fixture()
      assert %Ecto.Changeset{} = Recipes.change_recipe(recipe)
    end
  end

  describe "recipe_igredients" do
    alias GarbanzoBeans.Recipes.Recipe_Ingredient

    import GarbanzoBeans.RecipesFixtures

    @invalid_attrs %{ingredient_id: nil, measurement_id: nil, measurement_qty_id: nil, recipe_id: nil}

    test "list_recipe_igredients/0 returns all recipe_igredients" do
      recipe__ingredient = recipe__ingredient_fixture()
      assert Recipes.list_recipe_igredients() == [recipe__ingredient]
    end

    test "get_recipe__ingredient!/1 returns the recipe__ingredient with given id" do
      recipe__ingredient = recipe__ingredient_fixture()
      assert Recipes.get_recipe__ingredient!(recipe__ingredient.id) == recipe__ingredient
    end

    test "create_recipe__ingredient/1 with valid data creates a recipe__ingredient" do
      valid_attrs = %{ingredient_id: 42, measurement_id: 42, measurement_qty_id: 42, recipe_id: 42}

      assert {:ok, %Recipe_Ingredient{} = recipe__ingredient} = Recipes.create_recipe__ingredient(valid_attrs)
      assert recipe__ingredient.ingredient_id == 42
      assert recipe__ingredient.measurement_id == 42
      assert recipe__ingredient.measurement_qty_id == 42
      assert recipe__ingredient.recipe_id == 42
    end

    test "create_recipe__ingredient/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recipes.create_recipe__ingredient(@invalid_attrs)
    end

    test "update_recipe__ingredient/2 with valid data updates the recipe__ingredient" do
      recipe__ingredient = recipe__ingredient_fixture()
      update_attrs = %{ingredient_id: 43, measurement_id: 43, measurement_qty_id: 43, recipe_id: 43}

      assert {:ok, %Recipe_Ingredient{} = recipe__ingredient} = Recipes.update_recipe__ingredient(recipe__ingredient, update_attrs)
      assert recipe__ingredient.ingredient_id == 43
      assert recipe__ingredient.measurement_id == 43
      assert recipe__ingredient.measurement_qty_id == 43
      assert recipe__ingredient.recipe_id == 43
    end

    test "update_recipe__ingredient/2 with invalid data returns error changeset" do
      recipe__ingredient = recipe__ingredient_fixture()
      assert {:error, %Ecto.Changeset{}} = Recipes.update_recipe__ingredient(recipe__ingredient, @invalid_attrs)
      assert recipe__ingredient == Recipes.get_recipe__ingredient!(recipe__ingredient.id)
    end

    test "delete_recipe__ingredient/1 deletes the recipe__ingredient" do
      recipe__ingredient = recipe__ingredient_fixture()
      assert {:ok, %Recipe_Ingredient{}} = Recipes.delete_recipe__ingredient(recipe__ingredient)
      assert_raise Ecto.NoResultsError, fn -> Recipes.get_recipe__ingredient!(recipe__ingredient.id) end
    end

    test "change_recipe__ingredient/1 returns a recipe__ingredient changeset" do
      recipe__ingredient = recipe__ingredient_fixture()
      assert %Ecto.Changeset{} = Recipes.change_recipe__ingredient(recipe__ingredient)
    end
  end
end
