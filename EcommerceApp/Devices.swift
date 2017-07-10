//
//  Devices.swift
//  EcommerceApp
//
//  Created by Shalu Scaria on 2017-03-17.
//  Copyright © 2017 Shalu Scaria. All rights reserved.
//

import Foundation

public class Devices {
    
    var device_category : String
    var device_type : String
    var device_image : String
    var device_price : Float
    var device_quantity : Int
    var device_description : String
    
    init(){
        device_category = ""
        device_type = ""
        device_image = ""
        device_price = 0
        device_quantity = 0
        device_description = ""
    }
    
    
    func addToDevices() -> [Devices]{
        
        var array_Devices = [Devices]()
        
        let obj_devices1 = Devices()
        obj_devices1.device_category = "Cell Phones"
        obj_devices1.device_type = "Apple iPhone 6s- Gold"
        obj_devices1.device_image = "iphone6s_gold.jpeg"
        obj_devices1.device_quantity = 90
        obj_devices1.device_price = 569.0
        obj_devices1.device_description = "The iPhone 6s features a 4.7-inch Retina HD display with 3D Touch. An A9 chip with 64-bit desktop-class architecture. 12MP camera with Live Photos. Touch ID. Fast LTE and Wi-Fi. Long battery life. And iOS 10 and iCloud. All in a smooth, continuous unibody design."

        array_Devices.append(obj_devices1)
        
        
        let obj_devices2 = Devices()
        obj_devices2.device_category = "Cell Phones"
        obj_devices2.device_type = "Apple iPhone 7 - Black"
        obj_devices2.device_image = "iphone7_black.jpeg"
        obj_devices2.device_quantity = 20
        obj_devices2.device_price = 899.0
        obj_devices2.device_description = "An entirely new camera system. The brightest, most colourful iPhone display ever. The fastest performance and best battery life in an iPhone. Water- and splash-resistant. And stereo speakers. Every bit as powerful as it looks -- this is iPhone 7."
        
        array_Devices.append(obj_devices2)
        
        
        let obj_devices3 = Devices()
        obj_devices3.device_category = "Cell Phones"
        obj_devices3.device_type = "Apple iPhone 7 - Silver"
        obj_devices3.device_image = "iphone7_silver.jpg"
        obj_devices3.device_quantity = 9
        obj_devices3.device_price = 1309.0
        obj_devices3.device_description = "An entirely new camera system. The brightest, most colourful iPhone display ever. The fastest performance and best battery life in an iPhone. Water- and splash-resistant. And stereo speakers. Every bit as powerful as it looks -- this is iPhone 7."
        
        array_Devices.append(obj_devices3)
        
        let obj_devices4 = Devices()
        obj_devices4.device_category = "Cell Phones"
        obj_devices4.device_type = "Galaxy S7- Black"
        obj_devices4.device_image = "samsungs7_black.jpg"
        obj_devices4.device_quantity = 10
        obj_devices4.device_price = 780.0
        obj_devices4.device_description = "The Samsung Galaxy S7 knows no limits. Watch videos in crisp clarity on the 5.1 Quad HD Super AMOLED display and enjoy PC-quality gaming thanks to Vulkan API support. The curved back design fits perfectly in your hand, while IP68-rated protection keeps the phone safe from water and dust. The microSD slot also lets you add an extra 200GB of memory."
        
        array_Devices.append(obj_devices4)
        
        let obj_devices5 = Devices()
        obj_devices5.device_category = "Cell Phones"
        obj_devices5.device_type = "LG G5 - Silver "
        obj_devices5.device_image = "lgg5_silver.jpg"
        obj_devices5.device_quantity = 4
        obj_devices5.device_price = 689.0
        obj_devices5.device_description = "With a sleek metal design, the LG G5 is the perfect combination of smart innovation and premium style. Three integrated cameras including an impressive 16MP rear camera and a secondary 8MP camera with a wide angle lens capture moments with pristine clarity. The modular functionality lets you combine your phone with numerous LG Friends accessories."
        
        array_Devices.append(obj_devices5)
        
        
        let obj_devices6 = Devices()
        obj_devices6.device_category = "Computers"
        obj_devices6.device_type = "MacBookPro "
        obj_devices6.device_image = "mac_space_grey.jpg"
        obj_devices6.device_quantity = 45
        obj_devices6.device_price = 2230.89
        obj_devices6.device_description = "The new MacBook Pro is faster and more powerful than before, yet remarkably thinner and lighter. It has the brightest, most colourful Mac notebook display ever. And it introduces the revolutionary Touch Bar -- a Multi-Touch-enabled strip of glass built into the keyboard for instant access to what you want to do, when you want to do it. The new MacBook Pro is built on groundbreaking ideas. And it's ready for yours."
        
        array_Devices.append(obj_devices6)
        
        
        let obj_devices7 = Devices()
        obj_devices7.device_category = "Computers"
        obj_devices7.device_type = "HP 15.6 N3710"
        obj_devices7.device_image = "hp_black.jpg"
        obj_devices7.device_quantity = 23
        obj_devices7.device_price = 450.89
        obj_devices7.device_description = "Tackle all of your daily digital tasks easily and effortlessly with this versatile laptop from HP. It features a 1.6GHz Intel Pentium processor, 8GB of RAM, and a massive 1TB hard drive so you can keep every file just a quick click away. The 15.6 \" WLED display presents content in bright and clear detail."
        
        array_Devices.append(obj_devices7)
        
        let obj_devices8 = Devices()
        obj_devices8.device_category = "Computers"
        obj_devices8.device_type = "Acer Swift - Silver"
        obj_devices8.device_image = "Acer_silver.jpg"
        obj_devices8.device_quantity = 67
        obj_devices8.device_price = 800.89
        obj_devices8.device_description = "Built to perform, this Acer Swift 15-ay138ca is designed for smooth everyday multitasking. It boasts an Intel Core i5 processor with 8GB of RAM, a 1TB hard drive, and Windows 10 to help you breeze through work, errands, and more. The 15-ay138ca sports a vibrant touchscreen so you can intuitively navigate applications and internet with ease."
        
        array_Devices.append(obj_devices8)

        
        let obj_devices9 = Devices()
        obj_devices9.device_category = "Computers"
        obj_devices9.device_type = "HP 15-AY138CA - Silver "
        obj_devices9.device_image = "hp_silver.jpg"
        obj_devices9.device_quantity = 8
        obj_devices9.device_price = 650.89
        obj_devices9.device_description = "2.5GHz 7th generation Intel Core i5-7200U dual-core processor and 8GB RAM deliver solid and reliable performance for everyday activities and smooth multitasking.1TB hard drive gives you lots and lots of storage space to keep all of your files well organized and just a few short clicks away"
        
        array_Devices.append(obj_devices9)

        
        let obj_devices10 = Devices()
        obj_devices10.device_category = "Computers"
        obj_devices10.device_type = "MacBookPro 13.3\""
        obj_devices10.device_image = "macbookpro_spacegrey.jpg"
        obj_devices10.device_quantity = 17
        obj_devices10.device_price = 1830.89
        obj_devices10.device_description = "The new MacBook Pro is faster and more powerful than before, yet remarkably thinner and lighter. It has the brightest, most colourful display ever on a Mac notebook. And it features up to 10 hours of battery life. It's a notebook built for the work you do every day. Ready to go anywhere a great idea takes you."
        
        array_Devices.append(obj_devices10)

        return array_Devices
        
    }
}
