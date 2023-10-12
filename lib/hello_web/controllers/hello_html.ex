defmodule HelloWeb.HelloHTML do

  use HelloWeb, :html
  embed_templates "hello_html/*"


  def index(_assigns) do end


end
