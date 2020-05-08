//
//  main.swift
//  MenghitungBalok
//
//  Created by angga nugraha on 08/05/20.
//  Copyright © 2020 angga nugraha. All rights reserved.
//

import Foundation
//Kita akan membuat form menghitung balok
print("Selamat Datang di Dicoding Acaedmy")
//Kode ini digunakan untuk memasukkan input dari pengguna
print("Masukkan lebar balok : "); let widthInput = readLine()
print("Masukkan tinggi balok : ");let heightInput = readLine()
print("Masukkan panjang balok : ");let lengthInput = readLine()


//Mengubah dari String ke Double
if let length = Double(lengthInput ?? "0"), let height = Double(heightInput ?? "0"), let width = Double(widthInput ?? "0"){
            //Ini adalah proses penghitungan yang dilakukan dari program yang Anda buat
            let volume  = length * height * width
            let surfaceArea = 2*((width * length)+(width * height)+(height * length))
            let circumference = 4 * (width + length + height)
    
    print("----------------------------------------")
    //Ini adalah output  dari pemrograman yang Anda buat
    print("Anda memiliki sebuah blok dengan: ")
    print("Lebarnya adalah \(width) cm ")
    print("Tingginya adalah \(height) cm ")
    print("Panjangnya adalah \(length) cm ")
    print("Volumenya adalah \(volume) cm3 ")
    print("Luas Permukaannya adalah \(surfaceArea) cm2 ")
    print("Kelilingnya adalah \(circumference) cm2 ")
    print("----------------------------------------")
} else {
    //Ketika input tidak valid
     print("----------------------------------------")
     print("Input Tidak valid")
     print("----------------------------------------")
}



