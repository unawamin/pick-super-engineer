def random_pick 
  inputs = File.open("engineerlist.txt") #open file input
  eng_list = Array.new() #create new array name eng_list

  for x in inputs 
    eng_list.push(x) #set each  data of input to array name eng_list
  end
  name = eng_list.shuffle.sample
  puts name #print one name of engineerlist by random
  pick_featureA(name)
  pick_FeatureB(name)
  pick_fetureC(ARGV)
end


def pick_featureA(list)
    engineers_name = list
    if  engineers_name.include?(' ')
        engineers_name.gsub!(/ / , '.') 

    end	
    puts engineers_name
end


def pick_FeatureB(name)
  sp_n = name.split(".") #split name == " "
  sp_c =  sp_n[1].split("") #split character
  sFB = sp_n[0] + " " + sp_c[0] + "..."
  puts sFB
end

def pick_fetureC(name)
  search = name.join
  engineers = Array.new()
  File.read("engineerlist.txt").each_line do|line| 
    engineers.push(line) 
  end
  
  for i in 0...engineers.size
    if engineers[i].include?("#{search}")
      puts engineers[i]
      break
    end
  end
end

random_pick()

