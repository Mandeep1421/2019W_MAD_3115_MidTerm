//
//  StudentDetail.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Student
{
    var sId:String
    var sName:String
    var marks:[Float]
    var course: String
    var gender:String
    var bday:String
init()
{
self.sId = String()
self.sName = String()
self.marks = []
    self.course = String()
    self.gender = String()
    self.bday = String()
}
    init(StudentId: String, StudentName: String, Birthday: String, Gender: String,Course: String, Marks:Array<Float> )
    {
        self.sId = StudentId
        self.sName = StudentName
        self.marks = Marks
        self.gender = Gender
        self.bday = Birthday
        self.course = Course
    }
    
    func display()
    {
        print(sId)
        print(sName)
        print(gender)
        print(bday)
        
    }
    
}
