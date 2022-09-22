defmodule TodoApp.Todos.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias TodoApp.Accounts.User

  schema "task" do
    belongs_to :user, User
    field :description, :string
    field :done, :boolean, default: false
    field :expiration, :naive_datetime

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:description, :done])
    |> validate_required([:description, :done])
  end
end
