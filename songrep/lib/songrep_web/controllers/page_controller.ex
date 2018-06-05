defmodule SongrepWeb.PageController do
  use SongrepWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
