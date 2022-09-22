defmodule TodoAppWeb.Api.TaskController do
  use TodoAppWeb, :controller

  alias TodoApp.Todos

  def index(conn, _params) do
    tasks = Todos.list_task()
    IO.inspect(tasks)
    conn
    |> put_resp_header("Content-Type", "json++")
    |> put_status(:ok)
    |> json(%{body: [tasks: tasks]})
  end
end
