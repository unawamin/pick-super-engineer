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
  #i = 0
  #while i < list_name.size
  for i in 0...list_name.size
    if list_name[i].include? "#{@search}"
	puts list_name[i]
    end
    break
  end
end

random_pick()
