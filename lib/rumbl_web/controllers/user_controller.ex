defmodule RumblWeb.UserController do
  use RumblWeb, :controller
  alias Rumbl.{Accounts.User}

  def index(conn, _params) do
    users = Repo.all(User)
    render conn, "index.html", users: users
  end
end