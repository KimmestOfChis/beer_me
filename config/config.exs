# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :beer_me,
  ecto_repos: [BeerMe.Repo]

# Configures the endpoint
config :beer_me, BeerMeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mG/3kY4+x2Jyp2M5y9EiQLxsaVPMIP8lgacEJomANANgX34B1hAzjq9aBb+Kemf+",
  render_errors: [view: BeerMeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BeerMe.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Phauxth authentication configuration
config :phauxth,
  token_salt: "qHWhhibP",
  endpoint: BeerMeWeb.Endpoint

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
