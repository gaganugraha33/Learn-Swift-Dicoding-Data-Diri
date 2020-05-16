//
//  main.swift
//  BermainKata
//
//  Created by angga nugraha on 16/05/20.
//  Copyright © 2020 angga nugraha. All rights reserved.
//

import Foundation

print("Selamat Datang di Dicoding Academy!")

print("Mari bermain kata!")
print("-------------------")

//Digunakan untuk mengambil data inputan
print("Masukanlah nama depan Anda:"); let firstName = String(readLine() ?? "")
print("Masukanlah nama belakang Anda:"); let lastName = String(readLine() ?? "")
print("-------------------")
print("Berikut ini adalah operator-operator yang digunakan")


//Operator Concatenation
let concatenationString = firstName + lastName
print("String Concatenation Operator : \"\(concatenationString)\"")

//Operator Mutability
var mutabilityString=""
mutabilityString += firstName
mutabilityString += lastName
print("String Mutability Operator \"\(mutabilityString)\"")


//Operator Comparison
var comparisonString=""
if firstName == lastName{
    comparisonString = String(true)
}else{
    comparisonString = String(false)
}

print("String Comparison Operator : \"\(comparisonString)\"")
print("-------------------")
print("Berikut ini adalah fungsi-fungsi yang digunakan")

//Menggabungkan nama depan dan nama belakang
let fullName = firstName+" "+lastName

//Fungsi isEmpty
let empty = firstName.isEmpty || lastName.isEmpty
print("Fungsi isEmpty : \"\(empty)\"")

//Fungsi startIndex
let startIndex = fullName[fullName.startIndex]
print("Fungsi startIndex : \"\(startIndex)\"")

//Fungsi index
let index = fullName[fullName.index(after: fullName.startIndex)]
print("Fungsi index : \"\(index)\"")

//Fungsi index lainnya
let customIndex = fullName[fullName.index(fullName.startIndex, offsetBy: 5)]
print("Index ke Lima \"\(customIndex)\"")

//Fungsi endIndex
let endIndex = fullName[fullName.index(before: fullName.endIndex)]
print("Fungsi endIndex : \"\(endIndex)\"")

//Fungsi insert
var insert = fullName
insert.insert("!", at: insert.endIndex)
print("Fungsi insert : \"\(insert)\"")

//Fungsi remove
var remove = insert
remove.remove(at: remove.index(before: remove.endIndex))
print("Fungsi remove : \"\(remove)\"")

//Fungsi append
var append  = firstName
append.append(lastName)
print("Fungsi append : \"\(append)\"")

//Fungsi count
let count = fullName.count
print("Fungsi length : \(count)")




