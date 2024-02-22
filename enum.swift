enum OsType : String {
    case Ios = "IOS"
    case Windows = "Windows"
    case Linux = "Linux"
}

enum QuantityChairLeg : Int {
    case Three = 3
    case Four = 4
}

enum Gender : String {
    case Male = "Male"
    case Female = "Female"
}

enum AgeGroup : String {
    case NewBorn = "Newborn"
    case Infant = "Infant"
    case Toddler = "Toddler"
    case Child = "Child"
    case Teen = "Teen"
    case Adult = "Adult"
}

enum WorkExpirience {
    case NoWorkExpirience
    case LessYear
    case MoreYear
}

enum RainbowColour : String {
    case Red = "Red"
    case Orange = "Orange"
    case Yellow = "Yellow"
    case Green = "Green"
    case Blue = "Blue"
    case Indigo = "Indigo"
    case Violet = "Violet"
}

func printColourAndThing(colour: RainbowColour, thing: String) {
    switch colour {
    case .Red:
        print("\(RainbowColour.Red.rawValue) \(thing)")
    case .Orange:
        print("\(RainbowColour.Orange.rawValue) \(thing)")
    case .Yellow:
        print("\(RainbowColour.Yellow.rawValue) \(thing)")
    case .Green:
        print("\(RainbowColour.Green.rawValue) \(thing)")
    case .Blue:
        print("\(RainbowColour.Blue.rawValue) \(thing)")
    case .Indigo:
        print("\(RainbowColour.Indigo.rawValue) \(thing)")
    case .Violet:
        print("\(RainbowColour.Violet.rawValue) \(thing)")
    default:
        print("don't found this enum case")
    }
}

printColourAndThing(colour:RainbowColour.Violet, thing:"car")

enum Score: String {
    case A = "five"
    case B = "four"
    case C = "three"
    case D = "two"
}

func getMark(mark: Score) -> Int {
    switch mark {
    case .A:
        return 5
    case .B:
        return 4
    case .C:
        return 3
    case .D:
        return 2
    default:
        fatalError("Unsupported")
    }
}

print(getMark(mark: Score.A))

enum Car {
    case Sedan
    case Coupe
    case SportsCar
    case Truck
}

func printCars(cars: Car...) {
    if cars.isEmpty {
        print("В гараже нет автомобилей")
    } else {
        print("В гараже:")
        for car in cars {
            switch car {
            case .Sedan:
                print("Седан")
            case .Coupe:
                print("Купе")
            case .SportsCar:
                print("Спортивный автомобиль")
            case .Truck:
                print("Грузовик")
            default:
                fatalError("Unsupported")
            }   
        }
    }
}

printCars(cars: .Sedan, .Coupe, .SportsCar)
