defmodule Autoapi.Listen do
  def listen do
    receive do
      {:ok, content} -> IO.puts(content)
    end

    listen()
  end

  def explode, do: exit(:kaboom)

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Autoapi.Listen, :explode, [])

    receive do
      {:EXIT, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end

  def watch do
    {pid, ref} = spawn_monitor(Autoapi.Listen, :explode, [])

    receive do
      {:DOWN, _ref, :process, _from_pid, reason} -> IO.puts("Downed reason: #{reason}")
    end
  end
end
