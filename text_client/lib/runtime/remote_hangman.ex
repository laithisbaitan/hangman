defmodule TextClient.Runtime.RemoteHangman do

  @remote_server :'hangman@DESKTOP-2JIQ29D'
  def connect() do
    :rpc.call(@remote_server, Hangman, :new_game, [])
  end
end
