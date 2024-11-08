//
//  User.swift
//  SpotifyClone
//
//  Created by abdullah on 31.10.2024.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

// MARK: - User
struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName, maidenName: String
    let age: Int
    let email, phone, username, password: String
    let birthDate: String
    let image: String
    let bloodGroup: String
    let height, weight: Double
    let eyeColor: String
    let ip: String
    let macAddress, university: String
    let ein, ssn, userAgent: String
    
    var work: String {
        "iOS Developer"
    }
    
    var education: String {
        "Graduate Degree"
    }
    
    var aboutMe: String {
        "This is a sentence about me that will look good on my profile!"
    }
    
    var basics: [UserInterest] {
        [
            UserInterest(iconName: "ruler", emoji: nil, text: "\(height)"),
            UserInterest(iconName: "graduationcap", emoji: nil, text: "\(education)"),
            UserInterest(iconName: "wineglass", emoji: nil, text: "Socially"),
            UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Virgo")
        ]
    }
    
    var interests: [UserInterest] {
        [
            UserInterest(iconName: nil, emoji: "👟", text: "Running"),
            UserInterest(iconName: nil, emoji: "🏋️‍♀️", text: "Gym"),
            UserInterest(iconName: nil, emoji: "🎧", text: "Music"),
            UserInterest(iconName: nil, emoji: "🥘", text: "Cooking")
        ]
    }
    
    
    var distanceFromMe: Int {
        return 10
    }
    
    var images:[String] {
        ["https://images.unsplash.com/photo-1595326947594-d0074652a181?q=80&w=1473&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D","https://images.unsplash.com/photo-1675045578062-7539d488c25e?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", "https://images.unsplash.com/photo-1713284060723-5be78613225f?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"]
    }
    
    var location: String {
        return "Lives in Türkiye, Adana"
    }
    
    var locationFlag:String {
        return "🇹🇷"
    }
    
}

extension User {
    
    static let users: [User] = [
        User(id: 1, firstName: "Elif", lastName: "Yıldız", maidenName: "Kaya", age: 25, email: "elif.yildiz@gmail.com", phone: "0501-123-4567", username: "elif25", password: "Elif2024!", birthDate: "1999-05-15", image: "https://images.unsplash.com/photo-1595326947594-d0074652a181?q=80&w=1473&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", bloodGroup: "A+", height: 165, weight: 55, eyeColor: "Kahverengi", ip: "192.168.1.1", macAddress: "00:14:22:01:23:45", university: "İstanbul Üniversitesi", ein: "123456789", ssn: "123-45-6789", userAgent: "Mozilla/5.0"),
        
        User(id: 2, firstName: "Zeynep", lastName: "Çelik", maidenName: "", age: 24, email: "zeynep.celik@gmail.com", phone: "0532-456-7890", username: "zeynep24", password: "Zeynep2024!", birthDate: "2000-11-25", image: "https://images.unsplash.com/photo-1675045578062-7539d488c25e?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", bloodGroup: "AB+", height: 160, weight: 50, eyeColor: "Kahverengi", ip: "192.168.0.1", macAddress: "00:22:33:44:55:66", university: "Hacettepe Üniversitesi", ein: "112233445", ssn: "321-45-6789", userAgent: "Mozilla/5.0"),
        
        User(id: 3, firstName: "Merve", lastName: "Şahin", maidenName: "", age: 23, email: "merve.sahin@gmail.com", phone: "0546-234-5678", username: "merve23", password: "Merve2024!", birthDate: "2001-03-30", image: "https://images.unsplash.com/photo-1713284060723-5be78613225f?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", bloodGroup: "B+", height: 162, weight: 57, eyeColor: "Yeşil", ip: "192.168.1.3", macAddress: "00:44:55:66:77:88", university: "İzmir Ekonomi Üniversitesi", ein: "223344556", ssn: "223-45-6789", userAgent: "Mozilla/5.0"),
        
        User(id: 4, firstName: "Ayşe", lastName: "Yılmaz", maidenName: "", age: 26, email: "ayse.yilmaz@hotmail.com", phone: "0501-987-6543", username: "ayse26", password: "Ayşe2024!", birthDate: "1998-09-14", image: "https://images.unsplash.com/photo-1726047336766-d2f4c678a75a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", bloodGroup: "O-", height: 168, weight: 60, eyeColor: "Yeşil", ip: "192.168.1.2", macAddress: "00:33:44:55:66:77", university: "İstanbul Teknik Üniversitesi", ein: "334455667", ssn: "334-56-7890", userAgent: "Mozilla/5.0"),
        
        User(id: 5, firstName: "Nisanur", lastName: "Aksoy", maidenName: "", age: 22, email: "nisanur.aksoy@gmail.com", phone: "0507-987-6543", username: "nisanur22", password: "Nisanur2024!", birthDate: "2002-10-11", image: "https://images.pexels.com/photos/1468379/pexels-photo-1468379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", bloodGroup: "O+", height: 159, weight: 50, eyeColor: "Kahverengi", ip: "192.168.0.4", macAddress: "12:65:43:21:09:87", university: "Anadolu Üniversitesi", ein: "998877665", ssn: "445-56-7890", userAgent: "Mozilla/5.0"),
        
        User(id: 6, firstName: "Elif", lastName: "Kara", maidenName: "", age: 29, email: "elif.kara@gmail.com", phone: "0542-567-8901", username: "elif29", password: "Elif2024!", birthDate: "1995-07-18", image: "https://images.pexels.com/photos/1321909/pexels-photo-1321909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", bloodGroup: "AB-", height: 167, weight: 58, eyeColor: "Kahverengi", ip: "192.168.0.5", macAddress: "12:34:56:78:90:CD", university: "Boğaziçi Üniversitesi", ein: "123987654", ssn: "567-89-1234", userAgent: "Mozilla/5.0"),
        
        User(id: 7, firstName: "Derya", lastName: "Büyüker", maidenName: "", age: 28, email: "derya.b@gmail.com", phone: "0532-654-9876", username: "derya28", password: "Derya2024!", birthDate: "1996-02-10", image: "https://images.pexels.com/photos/620074/pexels-photo-620074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", bloodGroup: "A-", height: 170, weight: 62, eyeColor: "Yeşil", ip: "192.168.1.6", macAddress: "98:76:54:32:10:BC", university: "Sabancı Üniversitesi", ein: "756432987", ssn: "654-32-1098", userAgent: "Mozilla/5.0"),
        
        User(id: 8, firstName: "Büşra", lastName: "Yıldırım", maidenName: "", age: 27, email: "busra.yildirim@outlook.com", phone: "0503-987-1234", username: "busra27", password: "Büşra2024!", birthDate: "1997-05-20", image: "https://images.pexels.com/photos/36469/woman-person-flowers-wreaths.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", bloodGroup: "O-", height: 164, weight: 59, eyeColor: "Siyah", ip: "192.168.2.3", macAddress: "87:65:43:21:09:AB", university: "Koç Üniversitesi", ein: "765432189", ssn: "765-43-2109", userAgent: "Mozilla/5.0"),
        
        User(id: 9, firstName: "İrem", lastName: "Güler", maidenName: "", age: 23, email: "irem.guler@gmail.com", phone: "0546-123-9876", username: "irem23", password: "İrem2024!", birthDate: "2001-08-14", image: "https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", bloodGroup: "B-", height: 166, weight: 53, eyeColor: "Mavi", ip: "192.168.2.4", macAddress: "56:78:90:12:34:DE", university: "Gazi Üniversitesi", ein: "214365879", ssn: "543-21-6789", userAgent: "Mozilla/5.0"),
        
        User(id: 10, firstName: "Aylin", lastName: "Çelik", maidenName: "", age: 25, email: "aylin.celik@gmail.com", phone: "0534-987-6543", username: "aylin25", password: "Aylin2024!", birthDate: "1999-12-03", image: "https://images.unsplash.com/photo-1724710152067-f5cda1ed9820?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", bloodGroup: "AB+", height: 161, weight: 54, eyeColor: "Kahverengi", ip: "192.168.2.5", macAddress: "76:54:32:10:98:BC", university: "İstanbul Teknik Üniversitesi", ein: "364825179", ssn: "321-65-4321", userAgent: "Mozilla/5.0")
    ]
}
