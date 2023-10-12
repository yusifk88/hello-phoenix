defmodule HelloWeb.HelloController do

  use HelloWeb, :controller

  def index(conn, _params) do


render(conn, :index)

  end


  def show(coon, %{"messenger" => messenger}) do


render(coon, :show, messenger:  messenger)

  end



end
