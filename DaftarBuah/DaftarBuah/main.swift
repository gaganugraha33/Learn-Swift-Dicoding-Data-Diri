//
//  main.swift
//  DaftarBuah
//
//  Created by angga nugraha on 31/05/20.
//  Copyright © 2020 angga nugraha. All rights reserved.
//

import Foundation

var listFruits = [String]()
var isRunning = true

func getInput(message:String)->String?{
    print(message, terminator: ": ");
    return readLine()
}

func getInputInt(message:String)->Int?{
    if let inputString  = getInput(message: message){
        return Int(inputString)
    } else {
        return nil
    }
}

func showAllFruits(){
    if listFruits.isEmpty{
        print("Belum ada item di dalam daftar")
    }else{
        for(index, value) in listFruits.enumerated(){
            print("[\(index+1)]\(value)")
        }
    }
}

func insertFruits(){
    if let name = getInput(message: "Masukkan Nama buah"){
        listFruits.append(name)
    }else{
        insertFruits()
        print("Input tidak valid")
    }
}

func editFruit(){
    showAllFruits()
    print("----------------------------")
   if let position = getInputInt(message: "Pilih posisi buah yang akan diganti"), position<=listFruits.count && position>0, let name = getInput(message: "Masukkan nama buah") {
        listFruits[position-1] = name
    }else{
        editFruit()
        print("Input tidak valid")
    }
}

func deleteFruit(){
    showAllFruits()
    if let position = getInputInt(message: "Pilih posisi yang akan dihapus"),position<=listFruits.count && position>0{
        listFruits.remove(at: position-1)
    }else{
        deleteFruit()
        print("Input tidak valid")
    }
}

func showMenu(){
    print("Selamat Datang di Dicoding Market")
    print("-----------MENU------------------")
    print("[1] Tampilkan semua buah")
    print("[2] Tambah item buah")
    print("[3] Ubah item buah")
    print("[4] Hapus item buah")
    print("[5] Keluar")
    
    if let position  = getInputInt(message: "Silahkan pilih menu diatas"), position<=5 && position>0 {
            print("---------------------------")
        switch position {
        case 1:
            showAllFruits()
            break
        case 2:
            insertFruits()
            break
        case 3:
            editFruit()
            break
        case 4:
            deleteFruit()
            break
        case 5:
            isRunning = false
           print("terimakasih, silahkan datang kembali!")
            break
        default:
            print("Pilihan anda salah!")
        }
    }else {
        print("Item menu tidak valid")
    }
    print("-------------------------------")
}

while isRunning{
    showMenu()
}

