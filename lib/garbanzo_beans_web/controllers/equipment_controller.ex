defmodule GarbanzoBeansWeb.StaticPageController do
  use GarbanzoBeansWeb, :controller

  def equipment(conn, _params) do
    render(conn, :equipment)
  end

  def struggle(conn, _params) do
    render(conn, :struggle)
  end

end
