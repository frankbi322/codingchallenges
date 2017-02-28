class CategoryTree

  def initialize()
    @storage = {}
  end

  def add_child(category,parent)
    if (!parent.nil? && @storage[category])
      raise ArgumentError
    else
      @storage[category] = parent
    end
  end

  def get_children(category)
    answer = []
    @storage.each do |k,v|
      answer << k if v == category
    end
    answer
  end

end
