//
//  main.swift
//  hello
//
//  Created by care on 2017/9/13.
//  Copyright © 2017年 文世林. All rights reserved.
//

import Foundation

//for x in 1...9 {
//   for y in 1...x {
//        print("\(y) × \(x) = \(y * x)", terminator: "\t")
//    }
//    print()
//}

struct Student {
    var name: String
    var mathScore:Float
    var englishScore:Float
    var avgScore:Float
    init (name: String, mathScore:Float,englishScore:Float){
        self.name=name
        self.mathScore = mathScore
        self.englishScore = englishScore
		self.avgScore = Float (self.mathScore + self.englishScore) / 2
    }
}
func count(students: [Student]) ->[Student]{
  var result = students
  for i in 0...result.count-2{
    for j in i+1...result.count-1{

      if result[i].avgScore>result[j].avgScore{
        let temp=result[i]
        result[i]=result[j]
        result[j]=temp
      }
    }
  }
  return result
}
var student1 = Student(name:"一",mathScore:"54",englishScore:"95")
var student2 = Student(name:"二",mathScore:"64",englishScore:"95")
var student3 = Student(name:"三",mathScore:"74",englishScore:"95")
var student4 = Student(name:"四",mathScore:"84",englishScore:"95")
var student5 = Student(name:"五",mathScore:"94",englishScore:"95")
var student6 = Student(name:"六",mathScore:"54",englishScore:"65")
var student7 = Student(name:"七",mathScore:"54",englishScore:"73")
var student8 = Student(name:"八",mathScore:"54",englishScore:"81")
var result = count(students:[student1,student2,student3,student4,student5,student6,student7,student8])
for i in 0...result.count{
	print("姓名:\(result[i].name) ,数学成绩:\(result[i].mathScore),英语成绩:\(result[i].englishScore),平均分:\(result[i].avgScore)")
}
