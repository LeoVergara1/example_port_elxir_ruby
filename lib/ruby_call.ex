defmodule RubyElixir.RubyCall do
  use Export.Ruby
  def ruby_call do
    {:ok, ruby} = Ruby.start(ruby_lib: Path.expand("lib/ruby"))
    ruby
    |> Ruby.call("ruby", "hello_world", [])
  end

  def ruby_call_with do
    {:ok, ruby} = Ruby.start(ruby_lib: Path.expand("lib/ruby"))
    ruby
    |> Ruby.call("ruby", "pass_to_param", ["hola ruby"])
  end

end