defmodule GarbanzoBeansWeb.Recipe_IngredientControllerTest do
  use GarbanzoBeansWeb.ConnCase

  import GarbanzoBeans.RecipesFixtures

  @create_attrs %{ingredient_id: 42, measurement_id: 42, measurement_qty_id: 42, recipe_id: 42}
  @update_attrs %{ingredient_id: 43, measurement_id: 43, measurement_qty_id: 43, recipe_id: 43}
  @invalid_attrs %{ingredient_id: nil, measurement_id: nil, measurement_qty_id: nil, recipe_id: nil}

  describe "index" do
    test "lists all recipe_igredients", %{conn: conn} do
      conn = get(conn, ~p"/recipe_igredients")
      assert html_response(conn, 200) =~ "Listing Recipe igredients"
    end
  end

  describe "new recipe__ingredient" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/recipe_igredients/new")
      assert html_response(conn, 200) =~ "New Recipe  ingredient"
    end
  end

  describe "create recipe__ingredient" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/recipe_igredients", recipe__ingredient: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/recipe_igredients/#{id}"

      conn = get(conn, ~p"/recipe_igredients/#{id}")
      assert html_response(conn, 200) =~ "Recipe  ingredient #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/recipe_igredients", recipe__ingredient: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Recipe  ingredient"
    end
  end

  describe "edit recipe__ingredient" do
    setup [:create_recipe__ingredient]

    test "renders form for editing chosen recipe__ingredient", %{conn: conn, recipe__ingredient: recipe__ingredient} do
      conn = get(conn, ~p"/recipe_igredients/#{recipe__ingredient}/edit")
      assert html_response(conn, 200) =~ "Edit Recipe  ingredient"
    end
  end

  describe "update recipe__ingredient" do
    setup [:create_recipe__ingredient]

    test "redirects when data is valid", %{conn: conn, recipe__ingredient: recipe__ingredient} do
      conn = put(conn, ~p"/recipe_igredients/#{recipe__ingredient}", recipe__ingredient: @update_attrs)
      assert redirected_to(conn) == ~p"/recipe_igredients/#{recipe__ingredient}"

      conn = get(conn, ~p"/recipe_igredients/#{recipe__ingredient}")
      assert html_response(conn, 200)
    end

    test "renders errors when data is invalid", %{conn: conn, recipe__ingredient: recipe__ingredient} do
      conn = put(conn, ~p"/recipe_igredients/#{recipe__ingredient}", recipe__ingredient: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Recipe  ingredient"
    end
  end

  describe "delete recipe__ingredient" do
    setup [:create_recipe__ingredient]

    test "deletes chosen recipe__ingredient", %{conn: conn, recipe__ingredient: recipe__ingredient} do
      conn = delete(conn, ~p"/recipe_igredients/#{recipe__ingredient}")
      assert redirected_to(conn) == ~p"/recipe_igredients"

      assert_error_sent 404, fn ->
        get(conn, ~p"/recipe_igredients/#{recipe__ingredient}")
      end
    end
  end

  defp create_recipe__ingredient(_) do
    recipe__ingredient = recipe__ingredient_fixture()
    %{recipe__ingredient: recipe__ingredient}
  end
end
