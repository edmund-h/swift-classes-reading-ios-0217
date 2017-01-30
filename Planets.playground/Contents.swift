let earthName = "Earth"
let earthMoons = 1
let earthOrbit = 365.26
let earthLife = true

let marsName = "Mars"
let marsMoons = 2
let marsOrbit = 686.97
let marsLife = false

func planetInfo(name: String, moons: Int, orbit: Double, hasLife: Bool) {
    var moonNoun = "moon"
    if moons != 1 {
        moonNoun = "moons"
    }
    var hasLifeString = "has life"
    if !hasLife {
        hasLifeString = "does not have life"
    }
    print("\(name) has \(moons) \(moonNoun). Its orbit is \(orbit) days. It \(hasLifeString).")
}

planetInfo(name: earthName, moons: earthMoons, orbit: earthOrbit, hasLife: earthLife)
planetInfo(name: marsName, moons: marsMoons, orbit: marsOrbit, hasLife: marsLife)



let earth = ("Earth", 1, 365.26, true)
let mars = ("Mars", 2, 686.97, false)

func planetInfoTuple(planet: (String, Int, Double, Bool)) {
    var moonNoun = "moon"
    if planet.1 != 1 {
        moonNoun = "moons"
    }
    var hasLifeString = "has life"
    if !planet.3 {
        hasLifeString = "does not have life"
    }
    print("\(planet.0) has \(planet.1) \(moonNoun). Its orbit is \(planet.2) days. It \(hasLifeString).")
}

planetInfoTuple(planet: earth)
planetInfoTuple(planet: mars)



class Planet {
    var name: String
    var numberOfMoons: Int
    var orbitalPeriod: Double
    var hasLife: Bool

    init(name: String, numberOfMoons: Int, orbitalPeriod: Double, hasLife: Bool) {
        self.name = name
        self.numberOfMoons = numberOfMoons
        self.orbitalPeriod = orbitalPeriod
        self.hasLife = hasLife
    }

    func planetInfo() -> String{
        var moonNoun = "moon"
        if self.numberOfMoons != 1 {
            moonNoun = "moons"
        }
        var hasLifeString = "has life"
        if !self.hasLife {
            hasLifeString = "does not have life"
        }
        return ("\(self.name) has \(self.numberOfMoons) \(moonNoun). Its orbit is \(self.orbitalPeriod) days. It \(hasLifeString).")
    }
}

let earth2 = Planet(name: "Earth", numberOfMoons: 1, orbitalPeriod: 365.26, hasLife: true)
let mars2 = Planet(name: "Mars", numberOfMoons: 2, orbitalPeriod: 685.97, hasLife: false)

func planetInfoObject(planet: Planet){
    var moonNoun = "moon"
    if planet.numberOfMoons != 1 {
        moonNoun = "moons"
    }
    var hasLifeString = "has life"
    if !planet.hasLife {
        hasLifeString = "does not have life"
    }
    print("\(planet.name) has \(planet.numberOfMoons) \(moonNoun). Its orbit is \(planet.orbitalPeriod) days. It \(hasLifeString).")
}

planetInfoObject(planet: earth2)
planetInfoObject(planet: mars2)

earth2.planetInfo()
mars2.planetInfo()

class SolarSystem {
    var planets : [Planet] = []
    var haslife : Bool = false
    var planetoids : Int = 0
    var name : String = ""
    
    init (name : String , planets : [Planet] ,  planetoids : Int) {
        for myPlanet in planets {
            if myPlanet.hasLife { haslife = true }        }
        self.planets = planets
        self.planetoids = planetoids
        self.name = name
    }
    
    func ssInfo () -> String {
        var infoString = "The solar system \(name) has \(planets.count) planets.\n"
        for myPlanet in planets {
            infoString.append(myPlanet.planetInfo() + "\n")
        }
        return infoString + "Additionally it has \(planetoids) other large objects of astronomical significance."
    }
}

let mercury = Planet(name: "Mercury", numberOfMoons: 0, orbitalPeriod: 0.24*(365.26), hasLife: false)
let venus = Planet(name: "Venus", numberOfMoons: 0, orbitalPeriod: 0.72*(365.26), hasLife: false)
let jupiter = Planet(name: "Jupiter", numberOfMoons: 67, orbitalPeriod: 11.86*(365.26), hasLife: false)
let saturn = Planet(name: "Saturn", numberOfMoons: 62, orbitalPeriod: 29.48*(365.26), hasLife: false)
let uranus = Planet(name: "Uranus", numberOfMoons: 27, orbitalPeriod: 84.01*(365.26), hasLife: false)
let neptune = Planet(name: "Neptune", numberOfMoons: 14, orbitalPeriod: 164.8*(365.26), hasLife: false)

let planetsInSol = [mercury, venus, earth2, mars2, jupiter, saturn, uranus, neptune]
let planetoids = 11

let sol = SolarSystem (name: "Sol", planets: planetsInSol, planetoids: planetoids)

print (sol.ssInfo())