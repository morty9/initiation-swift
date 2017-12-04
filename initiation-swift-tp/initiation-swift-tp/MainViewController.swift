//
//  MainViewController.swift
//  initiation-swift-tp
//
//  Created by Bérangère La Touche on 17/11/2017.
//  Copyright © 2017 Bérangère La Touche. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arrayName = ["Nicolas Dennu", "Bérangère La Touche", "Nam Nguyen", "Jeyaksan Rajaratnam", "Ahmed Hachemi", "Nicolas Poincet", "Kevin Konrad", "Maxime Boinet", "Alexandre Menielle", "Yohan Briancourt", "Hervé Coignard", "Vincent Offroy", "Fodé Guirassy", "Thomas Pain-Surget", "Moncef Lonkili"]
    
    var arrayClass = ["4MOC", "4MOC", "4SRC", "4IW", "4SRC", "4IW", "4DJV", "4DJV", "3MOC", "2I", "1I", "5MOC", "3SRC", "4MOC", "2I"]
    
    var arrayImg = ["nicolas_dennu.jpeg", "berangere_la_touche.jpeg", "nam_nguyen.jpeg", "jayaksan_rajaratnam.jpeg", "ahmed_hachemi.jpeg", "nicolas_poincet.jpeg", "kevin_konrad.jpeg", "maxime_boinnet.jpeg", "alexandre_menielle.jpeg", "yoann_briancourt.jpeg", "herve_coignard.jpeg", "vincent_offroy.jpeg", "fode_guirassy.jpeg", "thomas_pain_surget.jpeg", "moncef_loukili.jpeg"]
    
    var arrayObj : [Student] = [
        Student(lastname: "Dennu", firstname: "Nicolas", classes: "4MOC", img: UIImage(named: "nicolas_dennu.jpeg")!),
        Student(lastname: "La Touche", firstname: "Bérangère", classes: "4MOC", img: UIImage(named: "berangere_la_touche.jpeg")!),
        Student(lastname: "Nguyen", firstname: "Nam", classes: "4SRC", img: UIImage(named: "nam_nguyen.jpeg")!),
        Student(lastname: "Rajaratnam", firstname: "Jeyaksan", classes: "4IW", img: UIImage(named: "jayaksan_rajaratnam.jpeg")!),
        Student(lastname: "Hachemi", firstname: "Ahmed", classes: "4IW", img: UIImage(named: "ahmed_hachemi.jpeg")!),
        Student(lastname: "Poincet", firstname: "Nicolas", classes: "4DJV", img: UIImage(named: "nicolas_poincet.jpeg")!),
        Student(lastname: "Konrad", firstname: "Kevin", classes: "2I", img: UIImage(named: "kevin_konrad.jpeg")!)
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Liste d'élèves"
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "Cell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return arrayName.count
        return arrayObj.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? Cell{
//            cell.labelName.text = arrayName[indexPath.row]
//            cell.labelClass.text = arrayClass[indexPath.row]
//            cell.img.image = UIImage(named: arrayImg[indexPath.row])
            let firstname = arrayObj[indexPath.row].firstname
            let lastname = arrayObj[indexPath.row].lastname
            cell.labelName.text = firstname + " " + lastname
            cell.labelClass.text = arrayObj[indexPath.row].classes
            cell.img.image = arrayObj[indexPath.row].img
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let details = DetailsViewController()
        details.student = arrayObj[indexPath.row]
        
//        details.name = arrayName[indexPath.row]
//        details.classes = arrayClass[indexPath.row]
//        details.img = UIImage(named: arrayImg[indexPath.row])
        
        self.present(UINavigationController(rootViewController: details), animated: true, completion: nil)
    }
    
}

