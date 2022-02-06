//
//  ViewController.swift
//  YemekTarifiApp
//
//  Created by Huseyin Atik on 5.02.2022.
//

import UIKit

class ViewController:UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var yemekDizisi=[Yemek]()
    var kullaniciSecimi:Yemek?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        
        
        //Yemekler
        let peynirliPide=Yemek(isim: "Peynirli Pide", aciklama:"Peynirli Pide Cok Lezzetli", gorsel: UIImage(named: "peynirliPide")!)
        
        let tavukKanatı=Yemek(isim: "Kremalı Baharatlı Tavuk Kanatı", aciklama:"Kremalı Baharatlı Tavuk Kanatı Cok Lezzetli", gorsel: UIImage(named: "tavukKanatı")!)
        
        let enginar=Yemek(isim: "Enginar Yatağında Arapsaçı", aciklama:"Enginar Yatağında Arapsaçı Cok Lezzetli", gorsel: UIImage(named: "enginar")!)
        
        let mısırEkmegi=Yemek(isim: "Mısır Ekmegi", aciklama:"Mısır Ekmeği Cok Lezzetli", gorsel: UIImage(named: "mısırEkmegi")!)
        
       
       yemekDizisi=[peynirliPide,tavukKanatı,enginar,mısırEkmegi]
        
        
    }
    //numberOfRowsInSection -> kaç tane row olacak
    // cellForRow atIndexPath -> hücrenin içerisinde neler gösterilecek
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemekDizisi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text=yemekDizisi[indexPath.row].isim
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi=yemekDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toDetailsVC"
        {
            let destinationVC=segue.destination as! DetailsViewController
            destinationVC.secilenYemek=kullaniciSecimi
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        yemekDizisi.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
    }


}

