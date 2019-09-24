//
//  CarrerViewModel.swift
//  MyCV
//
//  Created by Carlos Rodriguez on 9/23/19.
//  Copyright © 2019 Carlos Rodriguez. All rights reserved.
//

import Foundation

class CarrerViewModel {
    
    var listOfJobs: [Job]
    init() {
        let job1 = Job(companyName: "Gusanito.com",
                       businessPosition: "Mobile developer",
                       carrerInfo: "\n•Development of the iOS application for the company using swift 1.2\n•Videogame development for the website using the Unity engine for the website\n•Creation of an image editor for mobile applications",
                       date: "Mar. 2014 – Jan. 2015",
                       imageUrl: "https://gusanito.com/v5img/img/logo.png",
                       companyURL: "https://gusanito.com/#!/postales/todas/todas")
        let job2 = Job(companyName: "AstronesSoft",
                       businessPosition: "iOS Developer",
                       carrerInfo: "•Development of custom mobile applications for IOS devices with Swift.\n•Development of mobile application for delivery of parcels nationwide (MovilPaquett)\n•Version management and control of mobile applications.",
                       date: "Jan. 2016 – Dec. 2016",
                       imageUrl: "https://media.licdn.com/dms/image/C510BAQFr5uoT8HpJQw/company-logo_200_200/0?e=2159024400&v=beta&t=QJIMNJD0sY28uJNlufILWq1w-kkCI5BcAod5XCKCfjA",
                       companyURL: "https://astronesoft.com")
        let job3 = Job(companyName: "Tejuino.mx",
                       businessPosition: "iOS Developer",
                       carrerInfo: "•Development of custom mobile applications for IOS devices with Swift (Junger and safo)\n•Migration of projects to new versions of swift etc\n•Support for applications developed in objc c and migration to swift 3.0",
                       date: "Jan. 2016 – Jan. 2017",
                       imageUrl: "https://cssdesignawards.com/cdasites/2013/201301/20130130133437.jpg",
                       companyURL: "https://tejuino.mx")
        
        let job4 = Job(companyName: "Favly",
                       businessPosition: "iOS Developer",
                       carrerInfo: "•Develop applications as a consultant in the area of mobile devices\n•Migration of projects from swift 2.1 to swift 4.0\n•Publication of the application in the app store\n•Work together with the mobil team from Pakistan, the United States and Mexico",
                       date: "Jan. 2017 – Jan. 2018",
                       imageUrl: "https://www.favly.com/theme-frontend/images/ic_launcher-web.png",
                       companyURL: "https://favly.com")
        
        
        listOfJobs = [job1,job2,job3,job4]
    }
}
