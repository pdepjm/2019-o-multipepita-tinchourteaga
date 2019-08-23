object pepita
{	
	var energia = 100

	method estaCansada()
	{
		return energia < 50
	}
	
	method estaFeliz()
	{
		return energia > 500 && energia < 1000
	}

	method cuantoQuiereVolar()
	{
		var kms = energia / 5
		
		if(energia > 300 && energia < 400 && kms % 20 == 0)
		{
			return kms + 25
		}
		if(energia > 300 && energia < 400)
		{
			return kms + 10
		}
		if(kms % 20 == 0)
		{
			return kms + 15
		}
		
		return kms		
	}

	method vola(kms) 
	{
		energia -= 10 + kms
	}

	method come(comida)
	{
		energia = energia + comida.energiaQueOtorga()
	}
	
	method salirAComer()
	{
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras()
	{
		if(self.estaCansada())
		{
			self.come(alpiste)
		}
		if(self.estaFeliz())
		{
			self.vola(8)
		}
	}
}

object alpiste
{
	var gramos = 10
	
	method energiaQueOtorga()
	{ 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos)
	{
		gramos = nuevosGramos
	}	
}

object manzana 
{
	method energiaQueOtorga() 
	{ 
		return 50
	}	
}

object mijo
{
	var estado = "mojado"
	
	method mojarse()
	{
		estado = "mojado"
	}
	
	method secarse()
	{
		estado = "seco"
	}
	
	method energiaQueOtorga()
	{
		if(estado == "mojado")
		{
			return 15
		}
		else return 20
	}	
}

object canelones
{
	var energiaBase = 20
	var salsa = false
	var queso = true
	
	method agregarSalsa()
	{
		salsa = true
	}
	
	method quitarSalsa()
	{
		salsa = false
	}
	
	method agregarQueso()
	{
		queso = true
	}
	
	method quitarQueso()
	{
		queso = false
	}
	
	method energiaQueOtorga()
	{
		if(queso)
		{
			return energiaBase + 7
		}
		if(salsa)
		{
			return energiaBase + 5
		}
		if(queso && salsa)
		{
			return energiaBase + 12
		}
		
		return energiaBase
	}
}

object roque
{
	var ave = pepita
	
	method entrenar()
	{
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}
