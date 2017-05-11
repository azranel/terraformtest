defmodule Dashboard.Web.Terraformers.Rails do
  use Plug.Router

  plug :match
  plug :dispatch

  match _ do
    %{method: http_method, request_path: request_path, params: params, req_headers: req_headers} = conn
    http_method_atomized = http_method |> String.downcase |> String.to_atom
    request = HTTPoison.request(http_method_atomized, "http://localhost:3000#{request_path}", Map.to_list(params), req_headers)
    send_response(conn, request)
  end

  defp send_response(conn, {:ok, %{ status_code: status_code, body: body, headers: headers}}) do
    # Remove chunked transfer encoding header since we won't chunk response back to client
    conn = %{conn | resp_headers: List.delete(conn.resp_headers, {"Transfer-Encoding", "chunked"})}
    send_resp(conn, status_code, body)
  end
end
