puts"Digite un numero"
numero=gets.chomp.to_i
suma=0

def no_hacer_nada()
    
end

for i in 1..100
        if numero%i == 0
            suma = suma + i
            puts i
        else
            no_hacer_nada()
        end
end

if suma < numero
        puts"La suma de los divisores de #{numero} es #{suma} por tanto, son numeros defectivo."
else
        puts"La suma de los divisores de #{numero} es #{suma} por tanto, son numeros abundantes."
end
