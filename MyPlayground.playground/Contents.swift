//: Playground - noun: a place where people can play

import Darwin


//print("//================ Optionnals ================\n")

//var str: String? = "Hello"  // or String! to force unwrap
//var tempString: String! = str ?? "Hi"
//
//print(str) // or str!
//print(tempString)
//
//
//if let string = str {
//    print(string)
//}
//
//if str != nil {
//    print(str)
//}
//

//print("//================= Operators ===============\n")
//
//var left = 11
//var right = 10
//
//var final = left < right ? left : right
//
//print(final)

//print("//================= Arrays ===============\n")

var intArray = Array<Int>() //  [Int]()
//
for each in 0..<10 {
    intArray.append(each)
}
//
//print(intArray.map({$0 + 100}))
//
//intArray.reverse()
//print(intArray)
//
//for (index, each) in intArray.enumerated() {
//    print("Index at \(index)  and  value contains \(each)")
//}
//
//var tmpArray = intArray.filter({$0 < 5})
//
//print("Filtering \(tmpArray) ")
//
//print("Reducing \(tmpArray.reduce(0, { x, y in x + y }))")

//print("//=============== Set =================\n")

var mySet = Set<Int>()
var count = 0

while (count < 10) {
    mySet.insert(count)
    count = count + 1
}
print("mySet has \(mySet)")

var tmpSet = mySet.sorted().reversed()
var addSetArray = tmpSet + intArray
print("My addSetArray has \(addSetArray)")
print(mySet.sorted().map({$0 * $0}))
print(mySet.sorted().filter({$0 < 7}))

repeat {
    print("popping \(mySet.popFirst()!) and the remaining in set is \(mySet)")
} while (!mySet.isEmpty)


//print("//=============== Dictionary ================\n")
//
//var myDictionary = [Int: String]()
////
//for each in 0..<10 {
//    myDictionary[each] = "\(each)"
//}
//
//print(myDictionary)
//
//for each in myDictionary.keys {
//    print(myDictionary[each]!)
//}


//print("//================ Functions ================\n")
//
//func printDictionary(_ dictionary: [Int: String]) -> Int {
//    for key in dictionary.keys {
//        print(dictionary[key]!)
//    }
//    return dictionary.count
//}
//
//print("Dictionay has \(printDictionary(myDictionary)) items")
//
//
//
//func sunUp(integers: Int...) -> Int {
//    var total = 0
//    for integer in integers {
//        total = total + integer
//    }
//    return total
//}
//
//print(sunUp(integers: 1, 2, 3, 4, 5, 6, 7, 8, 9))
//
////  Continue
//
//var a = 1
//var b = 9
//
//func swap(valueA: inout Int, valueB: inout Int) {
//    let temp = valueA
//    valueA = valueB
//    valueB = temp
//}
////
//print("Value of a is \(a) and value of b is \(b)")
//swap(valueA: &a, valueB: &b)
//print("Value of a is now \(a) and value of b is now \(b)")
//
////  Continue
//
//func addTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}
//func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a * b
//}
//
//var myOperation: (Int, Int) -> Int = multiplyTwoInts
//
//func doMathOperation(operation: (Int, Int) -> Int, valueA: Int, valueB: Int) {
//    print("Operation resulted in \(operation(valueA, valueB))")
//}
//
//doMathOperation(operation: myOperation, valueA: 2, valueB: 4)
//
//func doMathOperationAuto(addOperation: Bool = true) -> (Int, Int) -> Int {
//    if addOperation {
//        return addTwoInts
//    } else {
//        return multiplyTwoInts
//    }
//}
//
//print("Do math automatically \(doMathOperationAuto(addOperation: false)(3, 2))")



//print("//================ Closures ================\n")
//
//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//
//func backward(_ s1: String, _ s2: String) -> Bool {
//    return s1 < s2
//}
//var reversedNames = names.sorted(by: backward)
//
//print(reversedNames)
//
//reversedNames =  names.sorted(by: { (s1: String, s2: String) -> Bool in
//    return s1 > s2
//})
//
//print(reversedNames)
//
//var saySomething = {(comment: String) -> Void in
//    print(comment)
//}
//
//saySomething("Hello")
//
//func doSomething(what: ((String) -> Void), theString: String) {
//    what(theString)
//}
//
//doSomething(what: saySomething, theString: "What's up!")
//
//let numb = [98, -20, -30, 42, 18, 35]
//
//let sortedNumbers = numb.sorted(by: {$0 > $1})
//
//print(sortedNumbers)
//
//let doubleNums = sortedNumbers.map( {(val: Int) in
//    return val * 2
//})
//
//let halfNumbers = doubleNums.map({$0 / 2})
//print(halfNumbers)
//
//print(doubleNums)


//print("//================ Enum ================\n")
//
//enum Seasons: Int {
//    case Spring = 1, Summer, Fall, Winter
//
//    func getSeasonNumber() {
//        switch self {
//        case .Spring :
//            print(Seasons.Spring.rawValue)
//        case .Summer:
//            print(Seasons.Summer.rawValue)
//        case .Fall :
//            print(Seasons.Fall.rawValue)
//        case .Winter:
//            print(Seasons.Winter.rawValue)
//        }
//    }
//}
//
//let seasonnums = Seasons.Fall
//seasonnums.getSeasonNumber()
//
//enum Months {
//    case Jan(Int)
//    //, Feb, March, April, May, June, July, August, Sept, Oct, Nov(Int)
//    case Dec(String)
//
//    func getMonthSpecial() {
//        switch self {
//        case .Jan(let monthNumber):
//            print("Jan is the month number \(monthNumber)")
//
//        case .Dec(let whatsSpecial):
//            print("Dec is \(whatsSpecial)")
//        }
//    }
//}
//
//let January = Months.Jan(1)
//January.getMonthSpecial()
//
//let December = Months.Dec("Christmas baby!")
//December.getMonthSpecial()

//print("//================ class and struct ================\n")
//
//class Animal {
//    var type: String
//    var name = "No name!"
//
//    init(type: String) {
//        self.type = type
//    }
//
//    func getAnimalType(){
//        print("This is a \(type)")
//    }
//
//    func getAnimalName() {
//        print("The name of this animal is \(name)")
//    }
//
//    func justSayHi() {
//        print("Hello!!!")
//    }
//}
//
//var dog = Animal(type: "dog")
//dog.getAnimalType()
//dog.getAnimalName()
//dog.justSayHi()
//
//
//class Dog: Animal {
//    init(name: String) {
//        super.init(type: "dog")
//        super.name = name
//    }
//
//    override func getAnimalName() {
//        print("The name of this \(type) is \(super.name)")
//    }
//
//    override func justSayHi() {
//        print("Hello!!")
//    }
//}
//
//var myDog = Dog(name: "Mickey")
//myDog.getAnimalName()
//myDog.getAnimalType()
//
//if myDog is Animal {
//    print("Dog inhered Animal class.")
//
//    if let tmp = myDog as? Animal {
//        tmp.justSayHi()
//        tmp.getAnimalName()
//    }
//
//    guard
//        let tmp = myDog as? Animal
//        else {
//            print("Unable to cast.")
//    }
//
//
//} else {
//    print("Nope!")
//}


//struct UserData {
//    var name: String
//    var age: Int
//
//    mutating func setAge(age: Int) {
//        self.age = age
//    }
//
//    mutating func setName(name: String) {
//        self.name = name
//    }
//
//    func getUserInfor() {
//        print("The user's name is \(name) and is \(age) years old")
//    }
//
//    static func justSayHi() {
//        print("Hi!")
//    }
//}
//
//UserData.justSayHi()
//var user1 = UserData(name: "Tuan", age: 35)
//user1.setAge(age: 70)
//user1.setName(name: "James")
//user1.getUserInfor()


//print("//================================9\n")
//
//struct SquareArea {
//    var area : Int
//
//    var Length: Int {
//        set(value) {
//            area = value * value
//        }
//
//        get {
//            return  Int(sqrt(Double(area)))
//        }
//    }
//}
//
//struct MyArea {
//    var area  = 24
//
//    var mine: Int {
//        return area
//    }
//}
//
//var mine = MyArea(area: 30)
//print("My area is \(mine.mine)")
//
//var mySquare = SquareArea(area: 0)
//mySquare.Length = 2
//print("The Area is \(mySquare.area) and the length is \(mySquare.Length)")
//
//
//struct Balance {
//    var balance: Int {
//        willSet {
//            print("The new value is \(newValue)")
//        }
//
//        didSet {
//            print("The old value was \(oldValue)")
//        }
//    }
//}
//
//var myBalance = Balance(balance: 10)
//myBalance.balance = 20
//myBalance.balance = 30

//struct PlayerRanks {
//    var playerList = ["Tuan":2, "James":1, "Irene":1, "Boilam":3]
//
//    subscript (player: String) -> Int {
//        set {
//            playerList[player] = newValue
//        }
//
//        get {
//            return playerList[player]!
//        }
//    }
//}
//
//var myPlayers = PlayerRanks()
//print("The rank of James is \(myPlayers["James"])")
//
//myPlayers["Khanh"] = 4
//myPlayers["Minh"] = 4
//
//print("The rank of Tuan is \(myPlayers["Tuan"])")
//print("The rank of Khanh is \(myPlayers["Khanh"])")
//
//print("//================================10\n")

//var arrayName = ["Tuan", "Irene", "James", "Boilam"]
//
//for (numbered, each) in arrayName.enumerated() {
//    print("Person named \(each) is numbered \(numbered)")
//}
//
//var doubleArray = [[0,3,2,1,4],
//                   [5,6,9,8,7]]
//var result = [Int]()
//
//for (i, row) in doubleArray.enumerated() {
//    for (j, column) in row.enumerated() {
//        print("[\(i) ,\(j)] = \(column)")
//        result.append(column)
//    }
//}
//
//for (i, row) in doubleArray.enumerated() {
//    for column in row {
//        print("Row is \(i) and Column is \(column)")
//    }
//}
//
//print(result.sorted(by: {$0 > $1}))
//
//print (result.sorted(by: {$0 > $1}).map({ (value: Int) in
//    return value * value
//}))

//print("//================================11\n")

//var name: String? = nil
//var title = name ?? "Tuan"
//print(title)
//
//enum NumberError: Error {
//    case small
//    case large
//
//    func getReason () {
//        switch self {
//        case .small:
//            print("Oh the value is less than 10")
//        case .large:
//            print("Cool the value is more than 20")
//        }
//    }
//}
//
//func checkFor(value: Int) throws {
//    if value < 10 {
//        throw NumberError.small
//    } else if value > 20 {
//        throw NumberError.large
//    } else {
//        print("Perfect!!")
//    }
//}
//
//func tryIt(value: Int) {
//    do {
//        try checkFor(value: value)
//    } catch NumberError.small {
//        NumberError.small.getReason()
//    } catch NumberError.large {
//        NumberError.large.getReason()
//    } catch {
//    }
//}
//
//tryIt(value: 15)
//

//
//print("//================================11\n")
//
//var myTuple: (name: String, age: Int)
//
//func getInfo() -> (String, Int) {
//    return ("Tuan", 35)
//}
//
//myTuple = getInfo()
//print("Information received is \(myTuple.name) and \(myTuple.age)")

//print("//================================12\n")

//func printSeq<T: Sequence>(sequence: T) {
//    for each in sequence {
//        print(each)
//    }
//}
//
//printSeq(sequence: [1, 2, 3, 4, 5, 6])
//printSeq(sequence: ["Tuan", "James", "Lam", "Irene"])
//printSeq(sequence: "This should still work")
//
//
//func isEqual<T: Equatable>(val1: T, val2: T) -> Bool {
//    return val1 == val2
//}
//
//print(isEqual(val1: 1, val2: 2))
//print(isEqual(val1: "B", val2: "B"))
//
//func isLarger<T: Comparable>(val1: T, val2: T) -> Bool {
//    return val1 > val2
//}
//
//print(isLarger(val1: 2, val2: 3))
//print(isLarger(val1: "z", val2: "a"))

//print("//================================00\n")

//protocol SomeProtocol {
//    var name: String {get set}
//    func getName() -> String
//    mutating func setName(name: String)
//}
//
//struct MyProtocol: SomeProtocol {
//    var name: String = ""
//
//    func getName() -> String {
//        return name
//    }
//
//    mutating func setName(name: String) {
//        self.name = name
//    }
//}
//
//var protocolTest = MyProtocol()
//protocolTest.setName(name: "Tuan")
//print(protocolTest.getName())


//import Foundation
//import PlaygroundSupport
//
//let higherPriority = DispatchQueue.global(qos: .userInitiated)
//let lowerPriority = DispatchQueue.global(qos: .userInteractive)
//
//let semaphore = DispatchSemaphore(value: 1)
//
//func asyncPrint(queue: DispatchQueue, symbol: String) {
//    queue.async {
//        print("\(symbol) waiting")
//        semaphore.wait()  // requesting the resource
//
//        for i in 0...10 {
//            print(symbol, i)
//        }
//
//        print("\(symbol) signal")
//        semaphore.signal() // releasing the resource
//    }
//}
//
//asyncPrint(queue: higherPriority, symbol: "🔴")
//asyncPrint(queue: lowerPriority, symbol: "🔵")
//asyncPrint(queue: higherPriority, symbol: "🔴")
//
//PlaygroundPage.current.needsIndefiniteExecution = true



//let dispatchQueue = DispatchQueue.global()
//
//let semaphore = DispatchSemaphore(value: 2)
//
//dispatchQueue.async {
//    semaphore.wait()
//    Thread.sleep(forTimeInterval: 5)
//    print("Sema block 1")
//    semaphore.signal()
//}
//
//dispatchQueue.async {
//    semaphore.wait()
//    Thread.sleep(forTimeInterval: 2)
//    print("Sema block 2")
//    semaphore.signal()
//}
//
//dispatchQueue.async {
//    semaphore.wait()
//    print("Sema block 3")
//    semaphore.signal()
//}
//
//dispatchQueue.async {
//    semaphore.wait()
//    print("Sema block 4")
//    semaphore.signal()
//}




