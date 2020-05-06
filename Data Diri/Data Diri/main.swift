//
//  main.swift
//  DataDiri
//
//  Created by angga nugraha on 06/05/20.
//  Copyright © 2020 angga nugraha. All rights reserved.
//

import Foundation

//Kita akan membuat form data diri
print("Selamat Datang di Dicoding Academy")
print("----------------------------------")

//Kode ini digunakan untuk memasukkan input dari pengguna
print("Masukkan nama depan Anda : "); let firstName = readLine()!
print("Masukkan nama belakang Anda :"); let lastName = readLine()!
print("Masukkan umur Anda :"); let age = readLine()!
print("Masukkan alamat Anda :"); let address = readLine()!
print("Masukkan pekerjaan Anda :"); let job = readLine()!

let fullname = firstName+" "+lastName

print("------------------------------------------------")
//Ini Adalah output dari program yang Anda buat
print("Apakah kalian tahu \(fullname)?")
print("\(firstName) adalah seorang \(job)")
print("Saat ini dia berumur \(age) dan bertempat tinggal di \(address)")
print("------------------------------------------------")

