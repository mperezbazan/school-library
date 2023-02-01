class Library
  attr_accessor :books, :persons

  def initialize(name)
    @name = name
    @books = []
    @persons = []
  end
end
