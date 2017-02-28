def replace_dollars(arg)
  if arg.is_a?(Hash)

    arg.keys.each do |key|

      #if arg[key].is_a?(Hash)
      replace_dollars(arg[key])
      #end

      temp = arg[key]
      arg.delete(key)
      key = replace(key)
      arg[key] = temp
    end
    arg

  elsif arg.is_a?(Array)
    result = []
    arg.each do |el|

      result << replace_dollars(el)
    end
    result
  else
    arg
  end
end

def replace(string)
  result = string.gsub(/[$]/,'_')
  result
end

puts replace_dollars({'key$1'=> 'abc', 'key$2' => ['def','ghi'], 'key3'=> [{'key$4' =>[1,2] , 'key$5'=> 'jkl'}]}
)
