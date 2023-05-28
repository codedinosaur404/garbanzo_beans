defmodule GarbanzoBeansWeb.Recipe_IngredientHTML do
  use GarbanzoBeansWeb, :html

  embed_templates "recipe__ingredient_html/*"

  @doc """
  Renders a recipe__ingredient form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def recipe__ingredient_form(assigns)
end
