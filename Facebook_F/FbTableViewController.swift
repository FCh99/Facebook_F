//
//  FbTableViewController.swift
//  Facebook_F
//
//  Created by Fausto Checa on 28/12/17.
//  Copyright © 2017 Fausto Checa. All rights reserved.
//

import UIKit

class FbTableViewController: UITableViewController, UISearchBarDelegate{
    
    
    var numberOfRows = 50
    
    var fotosFriends = [
        "foto1", "", "foto1", "", "foto2", "", "foto3", "", "foto4", "", "foto1"
    ]
    
    var nombresFriends = [
        "", "", "Fausto Checa", "", "Francisco Pérez", "", "Amaya García", "", "Paula Sánchez","", "Fausto Checa"
    ]
    
    var fotoPrincipalArray = [
        "", "", "", "", "realMadrid", "", "barcelona", "", "valencia", "", "wanda"
    ]
    
    var pieDeFotoArray = [
        "", "", "", "", "Real Madrid", "", "Barcelona FC", "", "Valencia FC", "", "Atlético de Madrid"
    
    ]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    
        
        
        
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        /*
        let searchBar = UISearchBar()
        navigationItem.titleView = searchBar
        searchBar.backgroundColor = UIColor(red: 79/255, green: 113/255, blue: 185/255,
                alpha: 1)
        */
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        
        let frame = CGRect(x: 0, y: 0, width: 300, height: 30)
        let titleView = UIView(frame: frame)
        
        //searchController.searchBar.backgroundColor = UIColor(red: 79/255, green: 113/255, blue: 185/255,                                                           alpha: 1)
        searchController.searchBar.frame = frame
        titleView.addSubview(searchController.searchBar)
        navigationItem.titleView = titleView
        
        
        
        self.navigationController?.navigationBar.barTintColor =  UIColor(red: 79/255, green: 113/255, blue: 185/255,                                                           alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        searchController.searchBar.tintColor = UIColor(red: 79/255, green: 113/255, blue: 185/255,                                                           alpha: 1)
        
        searchController.searchBar.barStyle = .blackOpaque
        
        
        
    // Cambiando los colores de los elementos del searchBar
        
        let colorTextFb =  UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1)
        
        let textFieldInsideSearchBar = searchController.searchBar.value(forKey: "searchField") as? UITextField
        textFieldInsideSearchBar?.textColor = colorTextFb
      
        
        let textFieldInsideSearchBarLabel = textFieldInsideSearchBar!.value(forKey: "placeholderLabel") as? UILabel
        textFieldInsideSearchBarLabel?.textColor = colorTextFb
        //textFieldInsideSearchBarLabel?.textAlignment = .center
       
       
        let glassIconView = textFieldInsideSearchBar?.leftView as! UIImageView
        glassIconView.image = glassIconView.image?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        glassIconView.tintColor = colorTextFb
        
        
        
    // Poniendo los iconos en una view a la izquierda de la searchBar, ¿en un barbutton? sería mejor para la acción pero se deforma....  NO FUNCIONA AHORA ????????????
        
         // Left
        let button = UIButton(type: .custom)
        let imageCamera = UIImage(named: "logo-camera")
        let imageViewCamera = UIImageView(image: imageCamera)
        imageViewCamera.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        button.addSubview(imageViewCamera)
        //button.frame = CGRect(x: 0, y: 0, width: 60, height: 45)
        //button.backgroundColor = UIColor.white
       
        button.contentMode = .scaleAspectFit
        
        self.navigationItem.leftBarButtonItem =  UIBarButtonItem(customView: button)
        
        
        
          // right
        let button2 = UIButton(type: .custom)
        let imageCamera2 = UIImage(named: "messenger")
        let imageViewCamera2 = UIImageView(image: imageCamera2)
        imageViewCamera2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        button2.addSubview(imageViewCamera2)
        //button2.frame = CGRect(x: 0, y: 0, width: 55, height: 55)
        //button.backgroundColor = UIColor.white
        
        button2.contentMode = .scaleAspectFit
        
        self.navigationItem.rightBarButtonItem =  UIBarButtonItem(customView: button2)
        
        
        // usar addTarget y selectors para habilitar los botones
        
        
        
        button.addTarget(self, action: #selector(printX), for: .touchUpInside)
        button2.addTarget(self, action: #selector(printY), for: .touchUpInside)
        
        
        
    }
    @objc func printX() {
        print("--> left / button / camera")
    }
    @objc func printY() {
        print("--> right / button2 / messenger")
    }
    
    
    
   
    
    
        
    /*
     Alturas / ids:
     0 120   id historias
     1 25    id gris
     2 120   id quePensando
     
     3 25    id gris
     4 600   id post
     5 25    id gris
     6 600   id post
     7 25    id gris
      */
    

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch  indexPath.row {
        case 0, 2:
            return 120
        case 1, 3, 5, 7, 9:
            return 18
        case 4, 6, 8, 10:
            return 550
        default:
            return 0
        }
        
        
        
    }
   

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numberOfRows
    }

    /*
     Alturas / ids:
     0 120   id historias
     1 25    id gris
     2 120   id quePensando
     
     3 25    id gris
     4 600   id post
     5 25    id gris
     6 600   id post
     7 25    id gris
     */
    
    // Cambiar a un switch, va por id, distinto del anterior
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "historias", for: indexPath) as! HistoriasTableViewCell
            
            cell.masIcon.layer.cornerRadius = 30
            cell.masIcon.clipsToBounds = true
            
            cell.fotoIcon.layer.cornerRadius = 30
            cell.fotoIcon.clipsToBounds = true
            
            return cell
            
        case 1, 3, 5, 7, 9, 11:
            let cell = tableView.dequeueReusableCell(withIdentifier: "gris", for: indexPath) as! GrisTableViewCell
            //cell.backgroundColor = UIColor.gray
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "quePensando", for: indexPath) as! QuePensandoTableViewCell
           
            cell.fotoName.layer.cornerRadius = 30
            cell.fotoName.clipsToBounds = true
            
            
            
            return cell
        
        case 4, 6, 8, 10:
            let cell = tableView.dequeueReusableCell(withIdentifier: "post", for: indexPath) as! PostTableViewCell
            
            cell.fotoName.layer.cornerRadius = 30
            cell.fotoName.clipsToBounds = true
            
            cell.fotoName.image = UIImage(named: fotosFriends[indexPath.row])
            cell.nameLabel.text = nombresFriends[indexPath.row]
            cell.fotoPrincipal.image = UIImage(named: fotoPrincipalArray[indexPath.row])
            cell.pieDeFotoLabel.text = pieDeFotoArray[indexPath.row]
            
            
            // >>>>>>>>>>> llamar a los botones Actions ¡¡¡¡
            
            
            
            
            return cell
            
        default:
            return UITableViewCell()
        
        }
        
        
        
    }
    
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
