# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :songrep,
  ecto_repos: [Songrep.Repo]

# Configures the endpoint
config :songrep, SongrepWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oNtEKTB0t6DMEsAOlEr//IuMoufHqmALib7WzRRaxwCFNbqSs+dFqNrXmPFcv4o1",
  render_errors: [view: SongrepWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Songrep.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
