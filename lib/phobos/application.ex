defmodule Phobos.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  alias Alchemy.Client

  def load_modules do
    use Phobos.Commands
  end

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Phobos.Worker.start_link(arg)
      # {Phobos.Worker, arg}
    ]

    Client.start(Application.get_env(:phobos, :token))
    load_modules()

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phobos.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
