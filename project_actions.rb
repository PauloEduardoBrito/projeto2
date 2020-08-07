require_relative 'project_A_and_B.rb'



class Actions < Project_B_and_C

    def return_multiplied_by_3
        multiplied_by_3 = projeto_b.map {|multiplied| multiplied * 3 }
        puts "Os valores existentes no meu array são: " "#{projeto_b}"
        puts "O valor de cada elemento do meu arry multiplicado por 3 é igual a : #{multiplied_by_3}"
    end

    def return_just_even_numbers
        pair_numbers = projeto_b.select {|pair| pair.even?}
        puts "Os valores existentes no meu array são: " "#{projeto_b}"
        puts "Agora exibo apenas os valores pares #{pair_numbers}"
    end

    def return_just_odd_numbers
        odd_numbers = projeto_b.reject {|impar| impar.even?}
        puts "Os valores existentes no meu array são: " "#{projeto_b}"
        puts "Agora tenho apenas os números impares  #{odd_numbers}"
    end

    def return_greater_than_3
        greater_than_3 = projeto_b.select {|greater| greater > 3}
        puts "Os valores existentes no meu array são: " "#{projeto_b}"
        puts "Agora tenho apenas os números maiores que 3 #{greater_than_3}"
    end
    
    # Projeto C
    def valid_status_pending
        status = projeto_c[0]['trainingScheduleAthleteEvent'].all? {|ponteiro| ponteiro['status'] == 'Pending'}
        puts status
    end

    def value_night_the_day_29
        day_29 = projeto_c[0]['trainingScheduleAthleteEvent'].select {|day| day['partsOfDay'] == 'Night' and day['day'] == 29}
        puts day_29
    end

    def validates_if_there_is_a_record_on_the_15th
        valid = projeto_c[0]['trainingScheduleAthleteEvent'].any? {|record| record['day'] == 15}
        puts valid
    end
end


results = Actions.new
# puts results.return_multiplied_by_3

# puts results.return_just_even_numbers

# puts results.return_just_odd_numbers

# puts results.return_greater_than_3

# puts results.valid_status_pending

# puts results.value_night_the_day_29
puts results.validates_if_there_is_a_record_on_the_15th