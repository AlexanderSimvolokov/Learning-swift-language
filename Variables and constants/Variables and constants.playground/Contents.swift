//Variables and constants

var valueVarInt: Int
var valueVarString: String
var valueVarFloat: Float
var valueVarDouble: Double

let valueLetInt: Int
let valueLetString: String
let valueLetFloat: Float
let valueLetDouble: Double

var typeApple = "Macintosh"
var countApple = 5
print("I have \(countApple) apple")
var textAboutApples1 = "I have " + String(countApple) + " apple"
var textAboutApples2 = "I have \(countApple) apple"

let multilineText = """
This
my
code!
"""

//Array
let emptyArray = [String]() //пустой массив

var carList = ["Ford", "Lada", "Nissan"]
print(carList[0])

carList.append("BMW")
carList.count

//Dictionary - словари это неупорядоченные коллекции их ключи перебираются в произвольном порядке
let empryDictionary = [String: Int]() //Пустой словарь

let priceCarList = ["Ford": 25000, "Lada": 10000]
priceCarList["Lada"]

//Tuple-кортеж
let myHeightWeight = (height: 178, weight: 80) //let myHeightWeight = (height:Double 178, weight:Double 80)
myHeightWeight.height

//if and switch условия
if 100 > 200 {
    print("Lada > Ford")
} else if 100 == 200 {
    print("Lada = Ford")
} else {
    print("Lada < Ford")
}

var optionalString: String? = "Hello"
print(optionalString == nil)
 
var optionalName: String? = nil//"John Appleseed" //nil
var greeting = "Hello!"
if let name = optionalName {  //если опциональное значение nil то условие считается false
    print("Hello, \(name)")
} else {
    print("Hello, nil")
}

let defaultName = "Default"
print("Hi \(optionalName ?? defaultName)") //?? - оператор дефолного значения если первое nil то берем второе

//switch

let colorPepper = "red pepper" //pepper - это перец
switch colorPepper {
case "black pepper":
    print("This black pepper")
case "yellow pepper", "purple pepper":
    print("This yellow or purple pepper")
case let x where x.hasSuffix("pepper"):
    print("It was \(x)")
default:
    print("Sumimasen vakarimasen")
}

//for-in
var maxPrice = 0

for (cars, prices) in priceCarList { //можно перебирать только вторую колонку (_, prices) и for price in prices или только первую колонку
    for car in cars {
        if maxPrice < prices {
            maxPrice = prices
            print(car)
        }
    }
}
print("\(maxPrice)")

//while
var n = 1
while n < 100 {
    n *= 2
}
print (n)

var m = 1
repeat {
    m *= 2
} while m < 100
print(m)

//func Функции могут быть вложенными, вложенные функции. Вложенные функции имеют доступ к переменным, которые были объявлены во внешней функции. Функция это объект первого класса, это означанет, что результатом функции может быть другая функция. Функция может принимать другую функцию в качестве аргумента.
//Возвращение контежей -> (height: Double, weight: Double)
func dayToday(nameDay: String, numberInWeek: Int) -> String {
    return "Today is \(nameDay), this \(numberInWeek) day of the week."
}
print(dayToday(nameDay: "Monday", numberInWeek: 1))

func dayTodayWithoutParameters(_ nameDay: String, myName numberInWeek: Int) -> String {
    return "Today is \(nameDay), this \(numberInWeek) day of the week."
}
print(dayTodayWithoutParameters("Monday", myName: 1))



