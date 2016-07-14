ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Docs.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Docs.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Docs.Repo)

