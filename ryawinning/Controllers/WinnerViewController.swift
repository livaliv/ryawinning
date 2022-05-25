//
//  WinnerViewController.swift
//  ryawinning
//
//  Created by livia on 19/05/22.
//

import UIKit

class WinnerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var lembrarWinner: UITableView!
    
    let winnerFrases:[String] = ["Eu te amo!", "Você é capaz!", "Você é uma máquina de vencer.", "Eu acredito em você!", "Tenho muito orgulho de você"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return winnerFrases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = lembrarWinner.dequeueReusableCell(withIdentifier: "yawinning", for: indexPath) as! yawinningTableViewCell
        
        cell.textLabel?.text = winnerFrases [indexPath.row]
//        cell.textLabel?.font = AppFont.bold.size(17.0)
        cell.textLabel?.textColor = UIColor(red: 29/255.0, green: 48/255.0, blue: 95/255.0, alpha: 1.0)
        
        return cell
        
    }

//    func printFonts() {
//       for familyName in UIFont.familyNames {
//           print("\n-- \(familyName) \n")
//           for fontName in UIFont.fontNames(forFamilyName: familyName) {
//               print(fontName)
//           }
//       }
//   }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(UIFont.familyNames)
//
//        printFonts()
        
        
        lembrarWinner.delegate = self
        lembrarWinner.dataSource = self
        // Do any additional setup after loading the view.
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
