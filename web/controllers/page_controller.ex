defmodule Infinity.PageController do
  use Infinity.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
