defmodule SongrepWeb.AlbumsController do
  alias Songrep.{Repo, Album}
  use SongrepWeb, :controller
  import Ecto.Query

  def index(conn, _params) do
    render conn, "index.html",
    albums: Repo.all(from a in Album,
    select: %{:name => a.name, :singer => a.singer, :tracks => a.track_count})
  end
end
