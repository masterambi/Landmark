//
//  DummyLandmarks.swift
//  Landmark
//
//  Created by Ramzy Rashaun Arief on 21/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

var filteredLandmarks: [Landmark] = []

var landmarks = [
    Landmark(image: UIImage(named: "borobudur")!, name: "Borobudur Temple", location: "Borobudur, Magelang, Indonesia", description: "Borobudur Temple Compounds This famous Buddhist temple, dating from the 8th and 9th centuries, is located in central Java. It was built in three tiers: a pyramidal base with five concentric square terraces, the trunk of a cone with three circular platforms and, at the top, a monumental stupa. The walls and balustrades are decorated with fine low reliefs, covering a total surface area of 2,500 m2. Around the circular platforms are 72 openwork stupas, each containing a statue of the Buddha. The monument was restored with UNESCO's help in the 1970s."),
    Landmark(image: UIImage(named: "colosseum")!, name: "Colosseum", location: "Piazza del Colosseo, 00184 Rome Italy", description: "Perhaps the best-preserved of the monuments of ancient Rome, this huge marble structure was built to hold more than 50,000 spectators to witness bloody contests of might and the slaughter of wild beasts."),
    Landmark(image: UIImage(named: "big_ben")!, name: "Big Ben", location: "Parliament Sqaure Elizabeth Tower - Houses of Parliament, Westminster, London SW1A 0AA England", description: "Elizabeth Tower is the name of the famous clock tower which stands at the Houses of Parliament. The name Big Ben is often used to describe the tower, the clock and the bell but the name was first given to the Great Bell. The Elizabeth Tower was completed in 1859 and the Great Clock started on 31 May. The Great Bell's strikes were heard for the first time on 11 July and the quarter bells first chimed on 7 September. All visits to Big Ben and the Elizabeth Tower tours are now suspended due to refurbishment with the last tour having taken place on 16 December 2016. Tours are scheduled to resume in early 2020 once the work is complete. Visitors can still book tickets for a number of other tours at the Houses of Parliament which take place on Saturdays throughout the year and on weekdays during Parliamentary recesses."),
    Landmark(image: UIImage(named: "opera_house")!, name: "Sydney Opera House", location: "Sydney Opera House, 2 Circular Quay E, Sydney NSW 2000, Australia", description: "One of the most iconic buildings in the world – the Sydney Opera House is an architectural masterpiece and vibrant performance space. It's a place where the past shapes the future, where conventions are challenged and cultures are celebrated. Step inside and discover the stories that make the Opera House so inspiring. Whether you’re a local or a tourist, a first-timer or an aficionado, the Sydney Opera House has something for everyone."),
    Landmark(image: UIImage(named: "eiffel")!, name: "Eiffel Tower", location: "5 Avenue Anatole France, 75007 Paris France", description: "Completed in 1889, this colossal landmark, although initially hated by many Parisians, is now a famous symbol of French civic pride."),
    Landmark(image: UIImage(named: "osaka_castle")!, name: "Osaka Castle", location: "1-1 Osakajo Chuo-Ku, Osaka, Osaka, Japan", description: "Once the largest castle in Japan when originally built in the 1580s, this castle has an observation platform with city views and a history museum that uses holograms, 3D pictures and other technologies to describe the history of the castle and the period during which it was built."),
    Landmark(image: UIImage(named: "pisa_tower")!, name: "Pisa Tower", location: "Leaning Tower of Pisa, Piazza del Duomo 28 56126 Pisa, Province of Pisa, Italy", description: "It is called the Leaning Tower or the Tower of Pisa but actually it was never used for defending the city; it is part of the religious complex in the Duomo Square and acts as its bell tower. It played an active role in both human and divine timekeeping with its seven bells – one for each musical note – the largest of which, cast in 1655, weighs a full three and a half tonnes! It is known throughout the world for the beauty of its architecture, for its extraordinary tilt, which makes it an authentic miracle of statics, and for the fact that it stands in the universally renowned Piazza dei Miracoli, of which it is certainly the prize jewel. And this is why it is one of the 7 Wonders of the World."),
    Landmark(image: UIImage(named: "arc_de_triomphe")!, name: "Arc de Triomphe", location: "Place Charles de Gaulle, 75008 Paris France", description: "The Arc de triomphe was begun in 1806, on the orders of Napoleon I to honour the victories of his Grande Armée. Inspired by the great arches of antiquity, the monument combines the commemorative with the symbolic and it has always played a major role in the national republican consciousness. Every evening, the flame is lit on the tomb of the Unknown Soldier from the Great War. An exhibition portrays the history and explains its symbolic importance, nationally as well as internationally. The terrace provides superb views both by day and night across the city and its great sweeping avenues."),
    Landmark(image: UIImage(named: "taj_mahal")!, name: "Taj Mahal", location: "Taj Mahal, Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India", description: "The Indo-Islamic architecture is full of symmetry, but the building complex of the tomb sits at the northern end of the garden, close to the river and not in the center. The location is intended to intensify the impression of greatness. The domed centerpiece of the monument is the building that contains the tomb of Mumtaz Mahal. The multi-chambered cube with chamfered corners is made of a brick masonry structure (lakhauri) and clad with white marble, adorned with intricate marquetry (stone inlays or parchinkari). Four 40 m tall minarets at each corner complete the shrine. The whole structure stands on a square pedestal. It is a UNESCO World Heritage since 1983."),
    Landmark(image: UIImage(named: "angkor_wat")!, name: "Angkor Wat", location: "Siem Reap, Cambodia", description: "Angkor is one of the most important archaeological sites in South-East Asia. Stretching over some 400 km2, including forested area, Angkor Archaeological Park contains the magnificent remains of the different capitals of the Khmer Empire, from the 9th to the 15th century. They include the famous Temple of Angkor Wat and, at Angkor Thom, the Bayon Temple with its countless sculptural decorations. UNESCO has set up a wide-ranging programme to safeguard this symbolic site and its surroundings."),
]