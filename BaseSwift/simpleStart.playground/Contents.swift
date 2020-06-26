import Cocoa

// 初见Swift
var str = "Hello, playground"
print(str);

// 简单的赋值
// 变量
var myVariable = 12
myVariable = 30
// 常量
let maxNumber = 10
// 多个变量
var x = 0.0, y = 0.0, z = 0.0

// 类型注解
var message: String
message = "Hello"
// 多个类型注解
var red, green, blue: Double

// 多语言支持
let π = 3.1415926
let 你好 = "你好swift"
let 🍙 = "wuhu~"

// 打印输出
print(🍙);
// 反斜杠调用参数
print("π is \(π)")

/*
 我可以这样写多行注释
 */

// 可以添加封号
let cat = "🐱";print(cat);

// 整数
let minValue = UInt.min;
let maxValue = UInt.max;
print(minValue);
print(maxValue);

// 类型推断
let Pi = 3 + 0.1415926 // 会被推断为Double类型

// 数值型与字面了量
// 整形
let decimalInteger = 17
let binaryInteger = 0b10001     // 二进制17
let octalInteger = 0o21         // 八进制17
let hexadecimalInteger = 0x11   // 十六进制17
// 浮点型
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// 数值型的类型转换
// 整数转换
//let cannotBeNegative: UInt8 = -1 // UInt不能存负数，所以会报错
//let tooBig:Int8 = Int8.max + 1 // 越界会报错
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
// 整数与浮点数转换
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// 反向转换(截断)
let integerPi = Int(pi)

// 类型别名
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

// 布尔型
let orangesAreOrange = true
let turnipsAreDelicious = false
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
}else{
    print("Eww, turnips are horrible")
}

let sw = 1
if sw == 1 {
    print("Swift Yes~")
}

// 元组
let http404Error = (404, "not Found")
let (statusCode, statusMessage) = http404Error
print("the status code is \(statusCode)")
print("the status messtage is \(statusMessage)")
// 直选一部分值可以用下划线标记
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// 直接访问元组中的单个元素
print("The status code is \(http404Error.0)")
print("The status messtage is \(http404Error.1)")
// 元组单个元素重命名
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

// 可选类型
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// nil
var serverResponseCode: Int? = 404
serverResponseCode = nil;
// 自动可选与nil
var surveyAnswer: String?
// 条件判断解析nil
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber).")
}
// 可选绑定
if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
}else{
    print("\'\(possibleNumber)\\' could not be converted to an integer")
}
// 多个绑定
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// 输出“4 < 42 < 100”
if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// 输出“4 < 42 < 100”

// 隐式解析
let possibleString: String? = "an optional string."
let forcedString: String = possibleString! // 需要感叹号来获取值
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // 不需要感叹号
if assumedString != nil {
    print(assumedString!)
}

if let definitedString = assumedString {
    print(definitedString)
}

// 错误处理
func canThrowAnError() throws {
    // 可能出现错误的函数
}
do{
    try canThrowAnError()
    // 没有错误消息抛出
}catch{
    // 捕获到了错误
}

// 断言和先决条件
let age = -3
assert(age >= 0, "A person's age cannot be less than zero")
// 强行执行先决条件
precondition(age > 0, "Index must be greater than zero")
