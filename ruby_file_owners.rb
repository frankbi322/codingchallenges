module FileOwners
  def self.group_by_owners(files)
    answer = Hash.new { |h, k| h[k] = [] }
    files.each do |k,v|
      answer[v] << k
    end
    answer
  end
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}
puts FileOwners.group_by_owners(files)
