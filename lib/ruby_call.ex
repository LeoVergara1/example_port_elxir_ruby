defmodule RubyElixir.RubyCall do
  use Export.Ruby
  def ruby_call do
    {:ok, ruby} = Ruby.start(ruby_lib: Path.expand("lib/ruby"))

    ruby
    |> Ruby.call("ruby", "hello_world", [])
  end
end