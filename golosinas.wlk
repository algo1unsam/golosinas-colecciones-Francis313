object bombon{
    var property precio = 5
    const sabor = "Frutilla"
    var property peso = 15
    var property gluten = false
    
    method mordisco(){peso = (peso * 0.8) - 1}

}

object alfajor{
    var property precio = 12
    const sabor = "Chocolate"
    var property peso = 300
    var property gluten = true

    method mordisco(){peso = peso * 0.8}


}

object caramelo{
    var property precio = 1
    const sabor = "Frutilla"
    var property peso = 5
    var property gluten = false

    method mordisco(){peso =- 1 }

}

object chupetin{
    var property precio = 2
    const sabor = "Naranja"
    var property peso = 7
    var property gluten = false

    method mordisco(){if (peso > 2){peso = peso * 0.9}}

}


object oblea{
    var property precio = 5
    const sabor = "Vainilla"
    var property peso = 250
    var property gluten = true

    method mordisco(){
        if(peso > 70){
            peso =- (peso * 0.5)
        }else{
            peso =- (peso * 0.25)
        }
    }
}

object chocolatin{
    var property precio = null
    const sabor = "Chocolate"
    var property peso = null
    const gluten = true

    method calcularPeso(gramos){
        peso = gramos
        precio = 0.50 * gramos
    }

    method mordisco(){ peso =- 2}

}

object golosinaBaniada{

    var property base = 200
    var property baniado = 4
    const saborBase = "Algo"
    const sabor = saborBase
    var property peso = base + baniado
    var property precio = base +2
    const gluten = false

    var property primerMordisco = true
    var property segundoMordisco = true 

    method mordisco(){
        if (primerMordisco){
            primerMordisco = false
            baniado =- 2
            peso =- 50
        }else{
            if (segundoMordisco){
                baniado =- 2
                segundoMordisco = false
            }
            peso =- 50
        }
    }

}


object tuttiFrutti{
    var property peso = 5
    var property gluten = null  //  Valores que podría settear mas adlenate, no se pide actualmente
    var property precio = null  //  Valores que podría settear mas adlenate, no se pide actualmente
    const sabores = ["Frutilla", "Chocolate", "Naranja"]
    var property sabor = sabores.get(numero)
    var property numero = 0 // Con este numero recorro la lista, setteo en el primer valor de una lista previamente llenada

    method calcularPrecio(){
        if(gluten){
            precio = 10
        }else{
            precio = 7
        }
    }

    

    method siguienteSabor(){
        // chequeo que el numero esté dentro de la lista, si es mas grande entonces reinicio
        numero = numero + 1
        if (numero > (sabores.size())-1){numero = 0}
        sabor = sabores.get(numero)
        
    }

    method mordisco(){
        self.siguienteSabor() //Solamente pasa al proximo sabor cuando hago mordisco()
    }
  



}