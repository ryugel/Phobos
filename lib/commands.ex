defmodule Phobos.Commands do
  alias Alchemy.Cogs
  use Alchemy.Cogs

  Cogs.def ping do
    Cogs.say("Pong!")
  end
end
