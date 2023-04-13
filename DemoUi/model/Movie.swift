//
//  Movie.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 06/04/2023.
//

import UIKit

struct Movie {
    let title: String
    let image: String
    
}

let movies: [Movie] = [
    Movie(title: "Hightown", image: "hightown"),
        Movie(title: "Penny Dreadful", image: "pennyDreadful"),
        Movie(title: "The Bold Type", image: "boldType"),
        Movie(title: "Blindspot", image: "blindspot"),
        Movie(title: "In the Dark", image: "inTheDark"),
        Movie(title: "Doom Patrol", image: "doomPatrol"),
        Movie(title: "Agents of S.H.I.E.L.D", image: "agentsOfShield"),
        Movie(title: "The 100", image: "theHundred"),
        Movie(title: "DC Legends of Tomorrow", image: "dcLegendsOfShield"),
        Movie(title: "Siren", image: "siren")
]
struct ImageLoccal {
    static let hightown = UIImage(named: "hightown")
    static let pennyDreadful = UIImage(named: "pennyDreadful")

}
