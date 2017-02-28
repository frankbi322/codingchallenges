class Path

  def initialize(path)
    @current_path = path
  end

  def current_path
    @current_path
  end

  def cd(new_path)
    new_path_array = new_path.split("/").reject {|el| el==""}
    current_path_array = current_path.split('/')


    new_path_array.each do |el|
      if el == ".."
        current_path_array.pop
      else
        current_path_array << el
      end
    end
    @current_path = current_path_array.join('/')
    return self
  end
end

path = Path.new('/a/b/c/d')
path = path.cd('../x')
puts path
puts path.current_path
puts path && path.current_path
