defmodule Dashboard.Web.PageController do
  use Dashboard.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def foo(conn, _params) do
    send_resp(conn, 200, "foo")
  end

  def bar(conn, _params) do
    send_resp(conn, 200, "bar")
  end

  def baz(conn, _params) do
    send_resp(conn, 200, "baz") 
  end
end
