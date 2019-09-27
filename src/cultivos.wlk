class Maiz {
	var crecimiento = 1
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return return if(crecimiento % 2 == 0){"corn_adult.png"} else {"corn_baby.png"}
	}
	method regar(){
		crecimiento += 1
	}
	method aptoParaCosechar(){
		return crecimiento % 2 == 0
	}
}

class Tomaco{
	var property posicion
	var crecimiento = 2
	method image() {
		return if(crecimiento % 2 == 0){"tomaco.png"} else {"tomaco_baby.png"}
	}
	method regar(){
		crecimiento += 1
	}
	method aptoParaCosechar(){
		return crecimiento % 2 == 0
	}
}

class Trigo{
	var crecimiento = 0
	method image(){
		return "wheat_x.png".replace("x", crecimiento.toString())
	}
	method regar(){
		if(crecimiento == 3){
			crecimiento = 0
		}
		else{
			crecimiento += 1
		}
	}
	method aptoParaCosechar(){
		return crecimiento == 3
	}
}