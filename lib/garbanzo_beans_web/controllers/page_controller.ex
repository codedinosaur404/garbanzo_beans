defmodule GarbanzoBeansWeb.PageController do
  use GarbanzoBeansWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end
end
