defmodule Docs.Repo.Migrations.CreateMessage do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :body, :text
      add :document_id, references(:documents, on_delete: :nothing)

      timestamps
    end
    create index(:messages, [:document_id])

  end
end
