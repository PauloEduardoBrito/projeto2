require_relative 'project_A_and_B.rb'

# 2 - Crie um metodo dentro de uma classe que retorne o conteudo dos Projetos B e C.
#    Depois crie uma classe que importe os projetos para retornar as seguintes ações:         
#    Projeto B 
#    a- Me retorne os valores do array multiplicado por 3. ok
#    b- Me retorne apenas os numeros pares ok                
#    c- Me retorne apenas os numeros impares ok                
#    d- Me retorne apenas os numero > 3. ok

class Actions < Project_B_and_C
    def return_multiplied_by_3
        multiplied_by_3 = projeto_b.map {|multiplied| multiplied *3 }
        puts "O valor de cada elemento do meu arry multiplicado por 3 é igual a : " "#{multiplied_by_3}"
    end

    def return_just_even_numbers
        pair_numbers = projeto_b.select {|pair| pair.even?}
        puts "Os valores existentes no meu array são: " "#{projeto_b}"
        puts "Agora exibo apenas os valores pares " "#{pair_numbers}"
    end

    def return_just_odd_numbers
        odd_numbers = projeto_b.reject {|impar| impar.even?}
        puts "Os valores existentes no meu array são: " "#{projeto_b}"
        puts "Agora tenho apenas os números impares" "#{odd_numbers}"
    end

    def return_greater_than_3
        greater_than_3 = projeto_b.select {|greater| greater > 3}
        puts "Os valores existentes no meu array são: " "#{projeto_b}"
        puts "Agora tenho apenas os números maiores que 3" "#{greater_than_3}"
    end

end


results = Actions.new
# puts results.return_multiplied_by_3

# puts results.return_just_even_numbers

# puts results.return_just_odd_numbers

puts results.return_greater_than_3
