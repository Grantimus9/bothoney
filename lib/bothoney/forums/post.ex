defmodule Bothoney.Forums.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bothoney.Forums.Post


  schema "posts" do
    field :body, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
    |> unique_constraint(:title)
  end
end
