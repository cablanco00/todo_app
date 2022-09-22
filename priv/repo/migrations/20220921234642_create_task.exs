defmodule TodoApp.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:task) do
      add :description, :string
      add :done, :boolean, default: false, null: false

      timestamps()
    end
  end
end
