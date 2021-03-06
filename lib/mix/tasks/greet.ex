defmodule Mix.Tasks.Greet do
  use Mix.Task

  @shortdoc "Simply calls the Hello.say/1 function."
  def run(_) do
    Mix.Task.run("app.start")

    Greeter.hello("Camomille")
  end
end
