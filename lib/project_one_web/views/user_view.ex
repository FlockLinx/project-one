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

  def render("custom.json", %{word: word}) do
    %{data: "Olá json", random_word: word}
    |> Map.put(:pipe_lesson, "Stevan, aprova nosso update se vc é legal mesmo")
  end
end
