defmodule App.Commands do
  use App.Router
  use App.Commander

  alias App.DeathGrips

  command "start" do
    Logger.log(:info, "Command /start received")

    send_message("""
    Hello #{update.message.from.username},
    type /noided to get noided!
    """)
  end

  command "noided" do
    Logger.log(:info, "Command /noided received")

    DeathGrips.start()
    dg_quote = DeathGrips.get!("/quote").body

    send_message(dg_quote)
  end
end
