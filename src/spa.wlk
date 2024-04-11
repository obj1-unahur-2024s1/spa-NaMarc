object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion(){
		return gradoDeConcentracion
	}
	method recibirMasajes(){
		gradoDeConcentracion += 3
	}
	method discutir(){
		gradoDeConcentracion -= 1
	}
	method vaAlSauna(){
		
	}
}

object bruno {
	var felicidad = true
	var tieneSed = false
	var peso = 55000 
	
	method estaFeliz(){
		return felicidad
	}
	method tieneSed(){
		return tieneSed
	}
	method cuantoPesa(){
		return peso/1000
	}
	method recibirMasajes(){
		felicidad = true
	}
	method vaAlSauna(){
		peso -= 500 
		tieneSed = true
	}
	method tomarAgua(){
		tieneSed = false
	}
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	method correr(){
		peso -= 300
	}
	method verNoticiero(){
		felicidad = false
	}
	method estaPerfecto(){
		return (self.estaFeliz() and not self.tieneSed() and peso.between(50000, 70000))
	}
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}
object ramiro{
	var contractura = 0
	var pielGrasa = false
	
	method nivelDeContractura(){
		return contractura
	}
	method tienePielGrasa(){
		return pielGrasa
	}
	method recibirMasajes(){
		contractura = 0.max(contractura -2)//busca el máximo entre 0 y la operación
	}
	method vaAlSauna(){
		pielGrasa = false
	}
	method comerBigMac(){
		pielGrasa = true
	}
	method bajarALaFosa(){
		contractura += 1
		pielGrasa  = true
	}
	method jugarPaddle(){
		contractura += 3
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}
object spa{
	method atender(persona){
		persona.recibirMasajes()
		persona.vaAlSauna()
	}
}