defmodule Infinity.HelloController do

    use Infinity.Web, :controller

    def index(conn, _params) do
        # find index.html.eex and render it
        render conn, "index.html"
    end

    def show(conn, %{"messenger" => messenger}) do
        render conn, "show.html", messenger: messenger
    end

    def helloWorld(conn, _params) do
        render conn, "helloWorld.html"
    end

end
