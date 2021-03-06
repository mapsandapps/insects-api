# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :insects,
  ecto_repos: [Insects.Repo]

# Configures the endpoint
config :insects, InsectsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "o+kOx+kWX4Gkzy0eWlNkeInjB/gUa0RbGJrGoUPqBXnKsNwAGzL87kZ11L8I26iv",
  render_errors: [view: InsectsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Insects.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
