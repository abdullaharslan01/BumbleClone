//
//  User.swift
//  SpotifyClone
//
//  Created by abdullah on 31.10.2024.
//

import Foundation
struct User: Identifiable {
    var id: Int
    let firstName: String
    let age: Int
    let email: String
    let phone: String
    let username: String
    let password: String
    let birthDate: String
    let bloodType: String
    let height: Int
    let weight: Int
    let eyeColor: String
    let ipAddress: String
    let macAddress: String
    let university: String
    let city: String
    let profession: String
    let distanceFromAdana: Int
    let distanceFromMe: Int
    let profileImage: String
    let otherImages: [String]
    let aboutMe: String
    let basics: [UserInterest]
    let interests: [UserInterest]
}

extension User {
    static let users = [
        User(
           
            id: 0, firstName: "Ceyda", age: 25, email: "ceyda.yildiz@gmail.com", phone: "0501-123-4567",
            username: "ceyda25", password: "Ceyda2024!", birthDate: "1999-05-15", bloodType: "A+",
            height: 165, weight: 55, eyeColor: "Kahverengi", ipAddress: "192.168.1.1", macAddress: "00:14:22:01:23:45",
            university: "Çukurova Üniversitesi", city: "Adana", profession: "Software Developer", distanceFromAdana: 800,
            distanceFromMe: 1,
            profileImage:"https://images.unsplash.com/photo-1534008757030-27299c4371b6?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3",
            otherImages: [
                "https://images.pexels.com/photos/620074/pexels-photo-620074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                "https://images.unsplash.com/photo-1530816735136-2ea32281ba3f?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3",
                "https://images.unsplash.com/photo-1595326947594-d0074652a181?q=80&w=1473&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
            aboutMe: "I am a passionate developer who loves to create innovative solutions. I enjoy learning new technologies and building apps that make life easier.",
            basics: [
                UserInterest(iconName: "ruler", emoji: nil, text: "\(165)"),
                UserInterest(iconName: "graduationcap", emoji: nil, text: "Çukurova Üniversitesi"),
                UserInterest(iconName: "wineglass", emoji: nil, text: "Socially"),
                UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Virgo")
            ],
            interests: [
                UserInterest(iconName: nil, emoji: "👟", text: "Running"),
                UserInterest(iconName: nil, emoji: "🏋️‍♀️", text: "Gym"),
                UserInterest(iconName: nil, emoji: "🎧", text: "Music"),
                UserInterest(iconName: nil, emoji: "🥘", text: "Cooking")
            ]
        ),
        
        User(
            id: 1, firstName: "Zeynep", age: 24, email: "zeynep.celik@gmail.com", phone: "0532-456-7890",
            username: "zeynep24", password: "Zeynep2024!", birthDate: "2000-11-25", bloodType: "AB+",
            height: 160, weight: 50, eyeColor: "Kahverengi", ipAddress: "192.168.0.1", macAddress: "00:22:33:44:55:66",
            university: "Hacettepe Üniversitesi", city: "Ankara", profession: "Graphic Designer", distanceFromAdana: 750,
            distanceFromMe: 200,
            profileImage: "https://images.unsplash.com/photo-1675045578062-7539d488c25e?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            otherImages: [
                "https://images.pexels.com/photos/1321909/pexels-photo-1321909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                "https://images.pexels.com/photos/1468379/pexels-photo-1468379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                "https://images.pexels.com/photos/36469/woman-person-flowers-wreaths.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
            ],
            aboutMe: "A creative soul with a passion for designing impactful visuals. I believe every project tells a story, and my goal is to bring that story to life.",
            basics: [
                UserInterest(iconName: "ruler", emoji: nil, text: "\(160)"),
                UserInterest(iconName: "graduationcap", emoji: nil, text: "Hacettepe Üniversitesi"),
                UserInterest(iconName: "wineglass", emoji: nil, text: "Socially"),
                UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Scorpio")
            ],
            interests: [
                UserInterest(iconName: nil, emoji: "🎨", text: "Art"),
                UserInterest(iconName: nil, emoji: "📚", text: "Reading"),
                UserInterest(iconName: nil, emoji: "🎧", text: "Music"),
                UserInterest(iconName: nil, emoji: "🖥️", text: "Technology")
            ]
        ),
        
        // Additional users with unique profileImage URLs and relevant fields filled in similarly
        User(
            id: 2, firstName: "Ayşe", age: 26, email: "ayse.yilmaz@hotmail.com", phone: "0501-987-6543",
            username: "ayse26", password: "Ayşe2024!", birthDate: "1998-09-14", bloodType: "O-",
            height: 168, weight: 60, eyeColor: "Yeşil", ipAddress: "192.168.1.2", macAddress: "00:33:44:55:66:77",
            university: "İstanbul Teknik Üniversitesi", city: "İstanbul", profession: "Product Manager", distanceFromAdana: 850,
            distanceFromMe: 250,
            profileImage: "https://images.unsplash.com/photo-1713284060723-5be78613225f?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            otherImages: [
                "https://images.unsplash.com/photo-1534008757030-27299c4371b6?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3",
                "https://images.pexels.com/photos/620074/pexels-photo-620074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                "https://images.pexels.com/photos/36469/woman-person-flowers-wreaths.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
            ],
            aboutMe: "Passionate about delivering user-centered products. I strive to blend creativity with practicality in every project I work on.",
            basics: [
                UserInterest(iconName: "ruler", emoji: nil, text: "\(168)"),
                UserInterest(iconName: "graduationcap", emoji: nil, text: "İstanbul Teknik Üniversitesi"),
                UserInterest(iconName: "wineglass", emoji: nil, text: "Socially"),
                UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Sagittarius")
            ],
            interests: [
                UserInterest(iconName: nil, emoji: "🍕", text: "Foodie"),
                UserInterest(iconName: nil, emoji: "🎮", text: "Gaming"),
                UserInterest(iconName: nil, emoji: "🎤", text: "Singing"),
                UserInterest(iconName: nil, emoji: "🏄‍♀️", text: "Surfing")
            ]
        ) , User(
            id: 3, firstName: "Ebru", age: 27, email: "ebru.kaplan@gmail.com", phone: "0534-112-2345",
            username: "ebru27", password: "Ebru2024!", birthDate: "1997-04-21", bloodType: "B+",
            height: 172, weight: 65, eyeColor: "Mavi", ipAddress: "192.168.1.5", macAddress: "00:55:66:77:88:99",
            university: "Marmara Üniversitesi", city: "İstanbul", profession: "Interior Designer", distanceFromAdana: 850,
            distanceFromMe: 320,
            profileImage: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            otherImages: [
                "https://images.unsplash.com/photo-1534008757030-27299c4371b6?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3",
                "https://images.pexels.com/photos/36469/woman-person-flowers-wreaths.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                "https://images.unsplash.com/photo-1540316264016-aeb7538f4d6f?q=80&w=1378&auto=format&fit=crop&ixlib=rb-4.0.3"
            ],
            aboutMe: "Passionate about creating beautiful, functional spaces. Design is where I feel most connected to my creativity.",
            basics: [
                UserInterest(iconName: "ruler", emoji: nil, text: "\(172)"),
                UserInterest(iconName: "graduationcap", emoji: nil, text: "Marmara Üniversitesi"),
                UserInterest(iconName: "wineglass", emoji: nil, text: "Occasionally"),
                UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Taurus")
            ],
            interests: [
                UserInterest(iconName: nil, emoji: "🏡", text: "Home Decor"),
                UserInterest(iconName: nil, emoji: "🎨", text: "Painting"),
                UserInterest(iconName: nil, emoji: "📚", text: "Books"),
                UserInterest(iconName: nil, emoji: "🌿", text: "Gardening")
            ]
        ),

        User(
            id: 4, firstName: "Elif", age: 29, email: "elif.altun@hotmail.com", phone: "0501-223-4567",
            username: "elif29", password: "elif2024!", birthDate: "1995-06-15", bloodType: "O+",
            height: 167, weight: 63, eyeColor: "Ela", ipAddress: "192.168.1.6", macAddress: "00:66:77:88:99:AA",
            university: "İstanbul Üniversitesi", city: "İstanbul", profession: "Marketing Specialist", distanceFromAdana: 870,
            distanceFromMe: 210,
            profileImage: "https://images.unsplash.com/photo-1693498875154-a9307a5b2227?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            otherImages: [
                "https://images.unsplash.com/photo-1693498874386-3124b3c60d44?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "https://images.unsplash.com/photo-1693498875364-86b31d05b63e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "https://images.unsplash.com/photo-1693498875341-51aced1b0bd5?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
            aboutMe: "Driven marketing professional who loves storytelling. I'm passionate about helping brands connect with people.",
            basics: [
                UserInterest(iconName: "ruler", emoji: nil, text: "\(167)"),
                UserInterest(iconName: "graduationcap", emoji: nil, text: "İstanbul Üniversitesi"),
                UserInterest(iconName: "wineglass", emoji: nil, text: "Socially"),
                UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Gemini")
            ],
            interests: [
                UserInterest(iconName: nil, emoji: "📈", text: "Marketing"),
                UserInterest(iconName: nil, emoji: "🖌️", text: "Drawing"),
                UserInterest(iconName: nil, emoji: "🎶", text: "Concerts"),
                UserInterest(iconName: nil, emoji: "🍫", text: "Baking")
            ]
        ),

        User(
            id: 5, firstName: "Derya", age: 26, email: "derya.erdem@gmail.com", phone: "0545-768-2341",
            username: "derya26", password: "Derya2024!", birthDate: "1998-12-02", bloodType: "A-",
            height: 170, weight: 62, eyeColor: "Yeşil", ipAddress: "192.168.1.7", macAddress: "00:77:88:99:AA:BB",
            university: "Ege Üniversitesi", city: "İzmir", profession: "Architect", distanceFromAdana: 620,
            distanceFromMe: 500,
            profileImage: "https://images.unsplash.com/photo-1726047336766-d2f4c678a75a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3",
            otherImages: [
                "https://images.unsplash.com/photo-1534008757030-27299c4371b6?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3",
                "https://images.pexels.com/photos/620074/pexels-photo-620074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                "https://images.unsplash.com/photo-1540316264016-aeb7538f4d6f?q=80&w=1378&auto=format&fit=crop&ixlib=rb-4.0.3"
            ],
            aboutMe: "An architect by day, an artist by night. Love to explore spaces and experiment with light and materials.",
            basics: [
                UserInterest(iconName: "ruler", emoji: nil, text: "\(170)"),
                UserInterest(iconName: "graduationcap", emoji: nil, text: "Ege Üniversitesi"),
                UserInterest(iconName: "wineglass", emoji: nil, text: "Occasionally"),
                UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Sagittarius")
            ],
            interests: [
                UserInterest(iconName: nil, emoji: "🏛️", text: "Architecture"),
                UserInterest(iconName: nil, emoji: "🧱", text: "Construction"),
                UserInterest(iconName: nil, emoji: "📐", text: "Design"),
                UserInterest(iconName: nil, emoji: "🖌️", text: "Sketching")
            ]
        ),

        User(
            id: 6, firstName: "Funda", age: 30, email: "funda.tuncer@yahoo.com", phone: "0530-333-2233",
            username: "funda30", password: "Funda2024!", birthDate: "1994-11-05", bloodType: "AB+",
            height: 168, weight: 64, eyeColor: "Ela", ipAddress: "192.168.1.8", macAddress: "00:88:99:AA:BB:CC",
            university: "Ankara Üniversitesi", city: "Ankara", profession: "Psychologist", distanceFromAdana: 720,
            distanceFromMe: 250,
            profileImage: "https://images.pexels.com/photos/1321909/pexels-photo-1321909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            otherImages: [
                "https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                "https://images.pexels.com/photos/1468379/pexels-photo-1468379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                "https://images.unsplash.com/photo-1525299374597-911581e1bdef?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3"
            ],
            aboutMe: "Empathetic psychologist who loves to listen and help. Passionate about mental health and personal growth.",
            basics: [
                UserInterest(iconName: "ruler", emoji: nil, text: "\(168)"),
                UserInterest(iconName: "graduationcap", emoji: nil, text: "Ankara Üniversitesi"),
                UserInterest(iconName: "wineglass", emoji: nil, text: "Rarely"),
                UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Scorpio")
            ],
            interests: [
                UserInterest(iconName: nil, emoji: "📖", text: "Psychology"),
                UserInterest(iconName: nil, emoji: "🌱", text: "Mindfulness"),
                UserInterest(iconName: nil, emoji: "🎨", text: "Art Therapy"),
                UserInterest(iconName: nil, emoji: "🧘", text: "Yoga")
            ]
        )
        
    ]
}

