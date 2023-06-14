defmodule GarbanzoBeansWeb.EquipmentController do
  use GarbanzoBeansWeb, :controller

  def index(conn, _params) do
    render(conn, :equipment)
  end
end
