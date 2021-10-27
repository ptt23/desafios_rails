
print "ingresa tu nombre de usuario "
name = gets
print "iingresa tu numero de cuenta de 8 digitos "
cuenta = gets.chomp.to_i
print "si tu cuenta es vip ingresa 1, de lo contrario 0 "
vp = gets.chomp.to_i


#Se crea clase Cuenta_bancaria

class CuentaBancaria
# Se crea Getter y Setter para nombre usuario
    attr_accessor :nombre_usuario
# Se Crea constructor que recibe nombre_usuario y numero_cuenta , se deja cuenta vip por defecto como 0
    def initialize (nombre_usuario, numero_cuenta, vip = 0)
    #Se levanta un error en caso que número de cuenta sea distinto de 8
        raise ArgumentError, 'numero de cuenta distinto a 8 digitos' if numero_cuenta.digits.count != 8
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
        @vip = vip
    end

    def vip()
        @vip
    end

    def numero_de_cuenta()
        if vip ==0
            cuenta_vip = @vip.to_s + '-' + @numero_cuenta.to_s
        else
            cuenta_vip = @vip.to_s + '-' + @numero_cuenta.to_s
        end
    end
end

cuenta_banco = CuentaBancaria.new(name,cuenta,vp)

print "tu cuenta bancaria es #{cuenta_banco.numero_de_cuenta}"
