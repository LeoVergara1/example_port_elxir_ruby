require 'epub/parser'

def hello_world
  puts "Hello from Ruby esto en ruby"
end

def pass_to_param(param)
  puts "Esté llego #{param}"
end

def read_epub
  book = EPUB::Parser.parse('elixir-book.epub')
  book.metadata.title
  l = []
  book.each_page_on_spine do |page|
    l << page.read
  end
  l
end


