defmodule Phobos.Commands do
  alias Alchemy.Cogs
  use Alchemy.Cogs

  Cogs.def ping do
    Cogs.say("Hello, I am Phobos! A discord bot written in Elixir.")

    Cogs.say("I am currently running on Elixir #{System.version()}")

    Cogs.say("I am currently running on OTP #{System.otp_release()}")

    Cogs.say("I am currently running on Phobos #{Phobos.VERSION}")

    Cogs.say("I am currently running on Elixir #{System.version()}")
  end
end
