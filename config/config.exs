use Mix.Config

config :app,
  bot_name: "noided_bot"

import_config("config.secrets.exs")
import_config "#{Mix.env()}.exs"
