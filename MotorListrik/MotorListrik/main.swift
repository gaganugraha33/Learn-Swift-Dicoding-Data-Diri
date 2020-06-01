//
//  main.swift
//  MotorListrik
//
//  Created by angga nugraha on 01/06/20.
//  Copyright © 2020 angga nugraha. All rights reserved.
//

import Foundation

//Function untuk mendapatkan item dari user
func getInput(message:String)-> String?{
    print(message, terminator:" : ");
    return readLine()
}

func getInputInt(message:String)->Int?{
    if let inputString = getInput(message: message){
        return Int(inputString)
    }else{
        return nil
    }
}

//speedTotal untuk menampung variabel speed
var speedTotal = 0

//closure untuk menambah kecepatan
func makeIncrementer(forIncrement amount:Int)->()->Int{
    func incrementer()->Int{
        speedTotal+=amount
        return speedTotal
    }
    return incrementer
}

//closure untuk mengurangi kecepatan
func makeDecrementer(forDecrement amount:Int)->()->Int{
    func decrementer()->Int{
        speedTotal-=amount
        return speedTotal
    }
    return decrementer
}

//menentukan nilai penambahan dan pengurangan
let incrementByTen = makeIncrementer(forIncrement: 10)
let decrementByTen = makeDecrementer(forDecrement: 10)

//menyalakan mesin motor listrik
func turnOnEngine(){
    print("Hidupkan mesin.....")
    print("Selamat datang di Motor Listrik Dicoding")
    print("Brem brem brem")
}

//mematikan mesin motor listrik
func turnOffEngine(){
    print("Ciiiiit......")
    print("Motor Berhentiiiii!!!!!")
}

//menampilkan kecepatan saat ini
func showSpeed(){
    print("Kecepatan saat ini : \(speedTotal)")
    print("Ngeeengggg")
}

//memberikan aksi ke motor listrik
func action(){
    print("---------------------------")
    print("Ayo bearksi:")
    print("[1] Tambahkan kecepatan")
    print("[2] Kurangi kecepatan")
    print("[3] Matikan mesin")
    
    if let state = getInputInt(message: "Masukkan Aksi Anda") {
        switch state {
        case 1:
            speedTotal = incrementByTen()
            showSpeed()
            action()
        case 2:
          if speedTotal >= 0{
                speedTotal = decrementByTen()
                showSpeed()
                action()
          } else {
            turnOnEngine()
            break
            }
        case 3:
            turnOnEngine()
            break
        default:
            break
        }
    } else {
        print("Input tidak valid")
    }
}

// memulai program
turnOnEngine()
action()

