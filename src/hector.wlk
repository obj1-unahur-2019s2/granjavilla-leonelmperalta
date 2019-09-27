import wollok.game.*

object hector {
	var property position = new Position(x = 3, y = 3)
	var cosecha = []
	const property image = "player.png"
	
	method guardarCosecha(planta){
		cosecha.add(planta)
	}
	method cosecha(){
		return cosecha
	}
	method cosechar(){
		if(self.plantasEnMiLugar().isEmpty()){
			self.error("no hay nada para cosechar")
		}
		else if(self.plantasEnMiLugar().all({p => p.aptoParaCosechar()})){
			self.guardarCosecha(self.plantasEnMiLugar())
			game.removeVisual(self.plantasEnMiLugar())
		}
	}
	method regar(){
		
	}
	method plantasEnMiLugar(){
		const objetos = game.getObjectsIn(self.position())
		return objetos.filter{o => o != self} 
	}
}