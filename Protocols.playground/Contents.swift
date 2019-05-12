import UIKit

protocol Car {
    
    var brand:String {get set}
    var type:String {get set}
    var weight:Double {get set}
    var color:String {get set}
    var volume:Double {get set}
    var doors:Int {get set}
    var windows:Bool {get set}
   
    
    func chooseColor ()

}


// Расширения для Car с новыми методами

extension Car {
    
    func windowsaction () {
        
        switch windows {
            
        case windows == true:
            print("Закрыть окна")
            
        case windows == false:
            print ("Открыть окна")
            
        default:
            break
        }
        
    }
    
    func engineStart () {
        print("Двигатель запущен")
    }
    
    func engineStop () {
        
    print("Двигатель заглушен")
    }
    
    func windowsopen () {
        print("Окна открыты")
    }
}


// класс sportCar на основе Car

class sportCar: Car, CustomStringConvertible {
    
   
    
    var brand:String
    var type:String
    var weight:Double
    var color:String
    var volume:Double
    var doors:Int
    var windows:Bool
    
    func chooseColor () {
        print("Вы выбрали автомобиль цвета \(color)")
        
    }
    
    enum typeofEngine {
        
        case v8, v12
    }
    
    var maxspeed:Double
    var driveunit:String
    var enginetype:typeofEngine
    var handbrake:String
    
   func definemaxspeed (enginetype:typeofEngine) {
        
    if enginetype == .v8 {
            maxspeed = 350.0
        print("Максимальная скорость автомобиля \(maxspeed)")
        } else if enginetype == .v12 {
            maxspeed = 450.0
         print("Максимальная скорость автомобиля \(maxspeed)")
    }
    
    }
    
    init (brand:String, color:String, doors:Int, windows:Bool, maxspeed:Double, driveunit:String, handbrake:String, type:String, weight:Double, volume:Double, enginetype:typeofEngine) {
        
        self.brand = brand
        self.color = color
        self.doors = doors
        self.windows = windows
        self.driveunit = driveunit
        self.maxspeed = maxspeed
        self.handbrake = handbrake
        self.volume = volume
        self.weight = weight
        self.type = type
        self.enginetype = enginetype
        
    }
    
    var description: String {
        
        
        return "Максимальная скорость авто: \(maxspeed) км  в час, тип двигателя: \(enginetype)"
        
    }
    
}


class trunkCar: Car, CustomStringConvertible {
    
    var brand:String
    var type:String
    var weight:Double
    var color:String
    var volume:Double
    var doors:Int
    var windows:Bool
    
    func chooseColor () {
        print("Вы выбрали автомобиль цвета \(color)")
        
    }
        

    var pritsep:String
    var wheels:Int
    var motor:String
    
        // Св-ва грузовика длина,ширина ,высота ,плотность
        
        var a:Int
        var b:Int
        var c:Int
        var l:Int
        var p:Int
        
        var load:Int
        
        
        
   
      // Метод определяющий грузоподъемность авто
        
        func loadCapacity (a:Int, b:Int, c:Int, l:Int, p:Int ) -> Int {
            
            load = (a*b)*(c-l)*p
            print("Максимальная грузоподъемность \(load) кг")
             return load
        }
    
    
        init (brand:String, color:String, doors:Int, windows:Bool, type:String, weight:Double, volume:Double, pritsep:String, wheels:Int, motor:String, a:Int, b:Int, c:Int, l:Int, p:Int, load:Int) {
        
        self.brand = brand
        self.color = color
        self.doors = doors
        self.windows = windows
        self.volume = volume
        self.weight = weight
        self.type = type
        self.a = a
        self.b = b
        self.c = c
        self.l = l
        self.p = p
        self.load = load
        self.motor = motor
        self.pritsep = pritsep
        self.wheels = wheels
        
       
        
    }
    
    var description: String {
        
        
        return "Автомобиль имеет массу: \(weight) кг, максимальная грузоподъемность: \(load)"
        
    }

}


var bmwx5 = sportCar(brand: "BMW", color: "Черный", doors: 4, windows: true, maxspeed: 200.0, driveunit: "Полная", handbrake: "Снят", type: "Седан", weight: 4000, volume: 2.3, enginetype: .v8)

bmwx5.definemaxspeed(enginetype: .v12)
bmwx5.chooseColor()
bmwx5.engineStart()
bmwx5.windowsaction()

var volvo = trunkCar(brand: "Volvo", color: "Белый", doors: 2, windows: false, type: "Открытый", weight: 5000.0, volume: 4.3, pritsep: "Отстутствует", wheels: 8, motor: "Дизельный", a: 5, b: 4, c: 3, l: 8, p: 3000, load: 9)

volvo.chooseColor()
volvo.loadCapacity(a: 7, b: 5, c: 3, l: 5, p: 300)
volvo.engineStart()
volvo.windowsopen()



// Вывод CustomStringConvertible
print(volvo)



var mercedes = sportCar(brand: "Mercedes", color: "Черный", doors: 4, windows: true, maxspeed: 300.0, driveunit: "Заведен", handbrake: "На ручнике", type: "Спорткар", weight: 1200.0, volume: 3.2 , enginetype: .v12)


// Вывод CustomStringConvertible
print(mercedes)



