# MoustashedServer
server for the moustashed game

# Running
0. > mix deps.get
   > mix deps.compile
1.  > iex
    > Code.compiler_options(ignore_module_conflict: true)
2. > c("moustashe_server.ex")
3. > MoustasheServer.start(port: 9000)
