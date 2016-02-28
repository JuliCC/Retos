puts "Escriba una frase"
frase = gets.chomp.to_s

frase_separada = frase.split(" ")
palabra = ""
for i in frase_separada
    if i.length() > palabra.length
        palabra = i
    end
end
puts "Su palabra mas larga es #{palabra}"  