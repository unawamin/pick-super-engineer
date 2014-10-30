def random_pick 
  inputs = File.open("engineerlist.txt") #open file input
  eng_list = Array.new() #create new array name eng_list

  for x in inputs 
    eng_list.push(x) #set each  data of input to array name eng_list
  end

  puts eng_list.shuffle.sample #print one name of engineerlist by random
  pick_fetureC(ARGV)
end

def pick_fetureC(name)
  search = name.join
  engineers = Array.new()
  File.read("engineerlist.txt").each_line do|line| 
    engineers.push(line) 
  end
  for i in 0...engineers.size
    if engineers[i].include?("#{search}")
      if search != ""
        puts engineers[i]
      end
      break
    end
  end
end

random_pick()
