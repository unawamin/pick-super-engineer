def random_pick 
  inputs = File.open("engineerlist.txt") #open file input
  eng_list = Array.new() #create new array name eng_list

  for x in inputs 
    eng_list.push(x) #set each  data of input to array name eng_list
  end

  puts eng_list.shuffle.sample #print one name of engineerlist by random
  pick_fetureC(eng_list)
end

def pick_fetureC(list_name)
  search = gets.chomp()
  puts "Search name '#{search}'"
  puts list_name[list_name.index{|s| s.include?("#{search}")}]
end

random_pick()
