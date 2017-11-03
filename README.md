# Bothoney

To start your Phoenix bot catching server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Seed database with `mix run priv/repo/seeds.exs`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

[`localhost:4000/posts/9`](http://localhost:4000/posts/9) will throw a malformed error.
Check out lib/bothoney_web/controllers/posts to see how we intercept id=4 to throw the error. It doesn't even load the usual html template.
