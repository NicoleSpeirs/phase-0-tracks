print "How many employees will be processed?"
employees = gets.chomp.to_i
employees = 1

employees.times do
  print "What is your name?"
  name = gets.chomp.downcase

  print "How old are you?"
  age = gets.chomp.to_i

  print "What year were you born?"
  year = gets.chomp.to_i

  alergies = nil
  until alergies == "done" || alergies == "sunshine"
    puts "Name any allergies that you have [type 'done' when finished]"
    alergies = gets.chomp
    case alergies
    when "sunshine"
      puts "Probably a vampire"
      exit
    end
  end

  garlic = nil
  until garlic == true ||  garlic == false
    print "Should we order some garlic for you? [Y/N}"
    input = gets.chomp.downcase
    case input
    when 'y'
      garlic = true
    when 'n'
      garlic = false
    else
      puts "Please answer Y/N only!"
    end
  end

  insurance = nil
  until insurance == true || insurance == false
    print "Would you like to enroll in the company's health insurance? [Y/N] "
    input = gets.chomp.downcase
    case input
    when 'y'
      insurance = true
    when 'n'
      insurance = false
    else
      puts "Please answer Y/N only!"
    end
  end


  correct_age = 2017 - age == year

  case
  when name == "drake cula" || name == "tu fang"
    puts "Definitely a vampire!"
  when correct_age == false && garlic == false && insurance == false
    puts "Almost certainly a vampire!"
  when correct_age == false && (garlic == false || insurance == false)
    puts "Probably a vampire!"
  when correct_age == true && garlic == true && insurance == true
    puts "Probably not a vampire!"
  else
   puts "Results inconclusive."
  end
end

