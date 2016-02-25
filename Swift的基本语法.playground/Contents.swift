//: Playground - noun: a place where people can play

import UIKit
//常量
let a = 8
//变量
var b = 10.9
//输出
print("打印的内容")


//创建一个view,并在上面添加一个按钮
//创建view对象
let view : UIView = UIView(frame: CGRectMake(0, 0, 100, 100));
//设置背景颜色
view.backgroundColor = UIColor.redColor()
//创建按钮对象
let btn = UIButton(type: UIButtonType.ContactAdd)
//添加到view上
view.addSubview(btn)

//Int类型和Double类型加法
b = Double(a) + b
print(b)

var c = a + Int(b)
print(c)

/*逻辑分支*/
//1.if else 三目
if a > 1 {
    print("a大于1")
}

if a > 3 {
    print("a大于3")
}else{
    print("a小于3")
}

var d = (a > Int(b)) ? a : Int(b)
print(d)

//2.guard  判断小男孩是否满18岁,是否带钱了,
func online (age : Int ,addMoney : Double) -> (){
    guard age > 18 else{
        print("不到十八岁!")
        return;
    }
    guard addMoney > 200 else{
        print("回家拿钱吧,骚年")
        return
    }
    print("开机子上网")
}
online(22, addMoney: 1000)

//3.switch
//3.1基本使用
switch a {
case 0..<10:
    print("a小于10,大于等于0")
default:
    print("a大于等于10或者小于0")
}
//等效于
switch a {
case 0:
    fallthrough
case 1:
    print("正常人")
default:
    print("不是正常人")
}
var m = 20
let n = 30
//判断计算符号
var str = "*"
switch str{
case "+":
    var e = m + n
    print(e)
case "-":
    var e = m - n
    print(e)
case "*":
    var e = m * n
    print(e)
case "/":
    var e = m / n
    print(e)
default:
    print("请输入正确的运算符")
}
//判断区间
let grade = 98
switch grade{
case 0..<60:
    print("不及格啊,骚年")
case 60..<80:
    print("成绩一般啊")
case 80..<90:
    print("良")
case 90...100:
    print("优秀")
default:
    print("请输入正确的成绩")
}
/*循环*/
//1.for的三种循环
//1.1
for var i = 0 ; i < 10 ; i++ {
    print(i)
}
//1.2
for i in 0..<20 {
    print(i)
}
//1.3
for _ in 0..<20 {
    print("Hello World")
}
//2.while循环
while m < n {
    m++
    print(m)
    
}
//3.repeat while
repeat {
    m++
}while m < n * 2

/*字符串*/
var str1 : String = "rochester"
var str2 : String = "20"
//1.字符串拼接
var str3 = str1 + str2
print(str3)
var st = "My name is \(str1),My age is \(str2)"
//2.遍历字符串
for j in str1.characters {
    print(j)
}
//3.设置时间
var min = 3
var sec = 4
var time = String(format: "%02d:%02d", arguments: [min,sec])
print(time)
//4.字符串的截取
var topic = "www.baidu.com"
//截取到www
var topic1 = (topic as NSString).substringToIndex(3)
//截取百度.com
var topic2 = (topic as NSString).substringFromIndex(4)
//截取百度
var topic3 = (topic as NSString).substringWithRange(NSMakeRange(4, 5))
/*数组*/
//1.不可变数组
let arr : Array<String> = ["ding","rui"]
print(arr)
//2.可变数组
var arr2 = Array<AnyObject>()
arr2 = ["ding",2];
//4.数组合并
arr2 = arr + arr2
//3.添加元素
arr2.append("shuai")
arr2.removeAtIndex(3)
//3.遍历数组
//3.1
for item in arr2 {
    print(item)
}

for i in 0..<arr2.count {
    print(arr2[i])
}
/*字典*/
//1.可变字典
var dict = Dictionary< String , AnyObject >()
dict = ["name":"rochester","123":"4566"]
//2.不可变字典
let dict2 = ["age":18]
//3.对可变数组的基本操作
//3.1添加元素
dict["height"] = 1.92
//3.2删除元素
//dict.removeValueForKey("name")
//4.便利字典
//4.1
for i in dict.keys {
    print(dict[i])
}
//4.2
for v in dict.values {
    print(v)
}
//合并
for (key, value) in dict2{
    dict[key] = value
}

dict




/*元组*/
let userInfo = ("why",18,1.88)

let userInfo2 = (name:"why",age:18,height:1.88)

let (name,age,height) = ("why",18,1.88)










