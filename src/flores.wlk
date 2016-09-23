/**
 * This is an example wollok hello world
 */
class Jardin {
	var flores = []
	
	method crecer(flor){
		flores.add(flor)
	}
	method ganaPremio(){
		return flores.all{f=>f.esLinda()}
	}
	
} 
 
class Flor {
	var color 
	
	constructor(_color) {
		color = _color
	}
	method color(){
		return color
	}
	method color(_color) {
		color = _color
	}
	method esLinda(){
		return color == "azul"
	}
}

/*object estaFlor inherits Flor{
	override method esLinda() {
		return true
	}
}*/

class Orquidea inherits Flor{
	//var color
	var origen
	
	constructor(_color, _origen) 
		= super(_color){
			origen = _origen
	}
	//method color(){
	//	return color
	//}
	override method esLinda(){

		return super()&& self.esImportada()
		
	}
	method esImportada(){
		return origen != "argentina"
	}
}