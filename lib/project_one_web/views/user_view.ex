defmodule ProjectOneWeb.UserView do
  use ProjectOneWeb, :view
  alias ProjectOneWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id, name: user.name, age: user.age}
  end

  def render("custom.json", _) do
    %{data: "Olá json"}
  end
end
