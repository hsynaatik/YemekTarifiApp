//
//  DetailsViewController.swift
//  YemekTarifiApp
//
//  Created by Huseyin Atik on 5.02.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var Label2: UILabel!
    
    var secilenYemek:Yemek?
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text=secilenYemek?.isim
        Label2.text=secilenYemek?.aciklama
        ImageView.image=secilenYemek?.gorsel
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
