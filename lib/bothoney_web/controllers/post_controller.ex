defmodule BothoneyWeb.PostController do
  use BothoneyWeb, :controller

  alias Bothoney.Forums
  alias Bothoney.Forums.Post

  def index(conn, _params) do
    posts = Forums.list_posts()
    render(conn, "index.html", posts: posts)
  end

  def new(conn, _params) do
    changeset = Forums.change_post(%Post{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"post" => post_params}) do
    case Forums.create_post(post_params) do
      {:ok, post} ->
        conn
        |> put_flash(:info, "Post created successfully.")
        |> redirect(to: post_path(conn, :show, post))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => "9"}) do
    random_status_code = Enum.random([100, 200, 202, 300, 301, 400, 418, 500, 505])

    conn
    |> put_status(random_status_code)
    |> html """
    <html><li><ul> Sucker. Random Status code: #{random_status_code}
   """
  end

  def show(conn, %{"id" => id}) do
    post = Forums.get_post!(id)
    render(conn, "show.html", post: post)
  end

  def edit(conn, %{"id" => id}) do
    post = Forums.get_post!(id)
    changeset = Forums.change_post(post)
    render(conn, "edit.html", post: post, changeset: changeset)
  end

  def update(conn, %{"id" => id, "post" => post_params}) do
    post = Forums.get_post!(id)

    case Forums.update_post(post, post_params) do
      {:ok, post} ->
        conn
        |> put_flash(:info, "Post updated successfully.")
        |> redirect(to: post_path(conn, :show, post))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", post: post, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    post = Forums.get_post!(id)
    {:ok, _post} = Forums.delete_post(post)

    conn
    |> put_flash(:info, "Post deleted successfully.")
    |> redirect(to: post_path(conn, :index))
  end
end
