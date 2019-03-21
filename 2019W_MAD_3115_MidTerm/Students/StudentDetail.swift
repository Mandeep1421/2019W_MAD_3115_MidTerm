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
    var eMail:String
    var marks: Array<Int>
init()
{
sId = String()
sName = String()
eMail = String()
}
    init(StudentId: String, StudentName: String, Email: String )
    {
        self.sId = StudentId
        self.sName = StudentName
        self.eMail = Email
    }
}
