
defmodule MoustasheServer do
    use GenServer
    alias Network.Handler
    require Logger    

 @doc """
 Starts the server.
 """
  def start_link(args) do
    GenServer.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(args) do
    {:ok, args}
  end

  def start(port: port) when is_integer(port) do
    Logger.info(fn ->
     "Starting Moustashe server at port #{port} ..."
    end)
    opts = [{:port, port}]

    {:ok, pid} = :ranch.start_listener(:network, :ranch_tcp, opts, Handler, [])

    Logger.info(fn ->
      "Listening for connections on port #{port}"
    end)

    {:ok, pid}
    Logger.info(fn ->
     "Moustashe server is [RUNNING]"
    end)
  end

end