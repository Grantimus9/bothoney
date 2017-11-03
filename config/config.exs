# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bothoney,
  ecto_repos: [Bothoney.Repo]

# Configures the endpoint
config :bothoney, BothoneyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HIUah5iu9VMM6W8JUVyJ+/fWQxSeRg1qoghj0EFbq0KXjHu4l3kP//w6DMdGNnnM",
  render_errors: [view: BothoneyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bothoney.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
