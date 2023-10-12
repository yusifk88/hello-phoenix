defmodule HelloWeb.HelloController do

  use HelloWeb, :controller

  def index(conn, _params) do


render(conn, :index)

  end


  def show(coon, %{"messenger" => messenger}) do


render(coon, :show, messenger:  messenger)

  end


  def welcome(conn, _params) do

    render(conn, :welcome)

  end




  def show_welcome(conn, %{"name" => name}) do


    people = [
      %{
        name: "yusif",
        bio: "Yusif is a software engineer from Ghana, web africa"},
      %{
        name: "mohammed",
       bio: "Mohammed a medical doctor from Ghana, he specializes in optimology, he also like football"
       },
      %{
        name: "Niama",
        bio: "Niama is midwife from Canada, she is one of the best in her field and is widely celbrated"}
    ]


    person = Enum.filter people, fn item -> item.name==name  end



    if length(person) >0 do

      [first | _last] = person

    render(conn, :show_welcome,  [name: name, bio: first.bio])

  end



  render(conn, :show_welcome,  [name: name, bio: "Bio for "<>name<>" not found"])



  end



end
