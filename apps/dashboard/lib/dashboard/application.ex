defmodule Dashboard.Application do
  @moduledoc """
  The Dashboard Application Service.

  The dashboard system business domain lives in this application.

  Exposes API to clients such as the `Dashboard.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      worker(Dashboard.Repo, []),
    ], strategy: :one_for_one, name: Dashboard.Supervisor)
  end
end
