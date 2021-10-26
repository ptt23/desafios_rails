

#Se crea clase Cuenta_bancaria

class CuentaBancaria
# Se crea Getter y Setter para nombre usuario
    attr_accessor :nombre_usuario
# Se Crea constructor que recibe nombre_usuario y numero_cuenta
    def initialize (nombre_usuario, numero_cuenta, )
    #Se levanta un error en caso que número de cuenta sea distinto de 8
        raise ArgumentError, 'numero de cuenta superior a 8' if numero_cuenta.digits.count != 8
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta


    end

    
end