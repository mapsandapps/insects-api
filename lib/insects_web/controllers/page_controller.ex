defmodule InsectsWeb.PageController do
  use InsectsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
