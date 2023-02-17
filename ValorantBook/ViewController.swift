//
//  ViewController.swift
//  ValorantBook
//
//  Created by Murat Çelik on 17.02.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myPersons = [Valorant]()
    var chosenValorant : Valorant?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Valorant Object
        let jett = Valorant(personName: "JETT", personDuty: "Duelist, from South Korea.", personImage: UIImage(named: "jett")!)
        let raze = Valorant(personName: "RAZE", personDuty: "Duelist, from Brazil.", personImage: UIImage(named: "raze")!)
        let breach = Valorant(personName: "BREACH", personDuty: "Initiator, Swedish.", personImage: UIImage(named: "breach")!)
        let omen = Valorant(personName: "OMEN", personDuty: "Controller.", personImage: UIImage(named: "omen")!)
        let brimstone = Valorant(personName: "BRİMSTONE", personDuty: "Controller, from the USA.", personImage: UIImage(named: "brimstone")!)
        let phoenix = Valorant(personName: "PHOENİX", personDuty: "Duelist, from the U.K.", personImage: UIImage(named: "phoenix")!)
        let sage = Valorant(personName: "SAGE", personDuty: "Sentinel, The from China.", personImage: UIImage(named: "sage")!)
        let sova = Valorant(personName: "SOVA", personDuty: "Iniator, from Russia.", personImage: UIImage(named: "sova")!)
        let viper = Valorant(personName: "VIPER", personDuty: "Controller, from America", personImage: UIImage(named: "viper")!)
        let cypher = Valorant(personName: "CYPHER", personDuty: "Sentinel.", personImage: UIImage(named: "cypher")!)
        let reyna = Valorant(personName: "REYNA", personDuty: "Duelist, from Mexico.", personImage: UIImage(named: "reyna")!)
        let killjoy = Valorant(personName: "KILLJOY", personDuty: "Sentinel, from Germany.", personImage: UIImage(named: "killjoy")!)
        let skye = Valorant(personName: "SKYE", personDuty: "Initiator, from Australia.", personImage: UIImage(named: "skye")!)
        let yoru = Valorant(personName: "YORU", personDuty: "Duelist, from Japanese.", personImage: UIImage(named: "yoru")!)
        let astra = Valorant(personName: "ASTRA", personDuty: "Controller, Ghanaian.", personImage: UIImage(named: "astra")!)
        let kayo = Valorant(personName: "KAY/O", personDuty: "Initiator.", personImage: UIImage(named: "kayo")!)
        let chamber = Valorant(personName: "CHAMBER", personDuty: "Sentinel, French.", personImage: UIImage(named: "chamber")!)
        let neon = Valorant(personName: "NEON", personDuty: "Duelist, Filipino.", personImage: UIImage(named: "neon")!)
        let fade = Valorant(personName: "FADE", personDuty: "Initiator, Turkish.", personImage: UIImage(named: "fade")!)
        let harbor = Valorant(personName: "HARBOR", personDuty: "Controller, from India.", personImage: UIImage(named: "harbor")!)
        
        myPersons.append(jett)
        myPersons.append(raze)
        myPersons.append(breach)
        myPersons.append(omen)
        myPersons.append(brimstone)
        myPersons.append(phoenix)
        myPersons.append(sage)
        myPersons.append(sova)
        myPersons.append(viper)
        myPersons.append(cypher)
        myPersons.append(reyna)
        myPersons.append(killjoy)
        myPersons.append(skye)
        myPersons.append(yoru)
        myPersons.append(astra)
        myPersons.append(kayo)
        myPersons.append(chamber)
        myPersons.append(neon)
        myPersons.append(fade)
        myPersons.append(harbor)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPersons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myPersons[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenValorant = myPersons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! toDetailsVC
            destinationVC.selectedValorant = chosenValorant
        }
    }

}









