//
//  TelaAtividadesViewController.swift
//  ryawinning
//
//  Created by livia on 19/05/22.
//

import UIKit

class TelaAtividadesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    @IBOutlet var titulaoFixo: UILabel!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    
    }
    
    let cards:[cartitas] = [cartitas(imagem:"escola", atividade:"Escola", diaHora:"07:00 - segunda à sexta"),
        cartitas(imagem:"natacao", atividade:"Natação", diaHora: "15:00 - segunda e quarta"),
        cartitas(imagem: "violao", atividade: "Violão", diaHora: "16:00 - terça e quinta")
    ]
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CartinhasCollectionView.dequeueReusableCell(withReuseIdentifier: "funcionaCollection", for: indexPath) as! CartinhasCollectionViewCell
        let card = cards[indexPath.row]
        cell.Fotinha.image = UIImage(named: card.imagem)
        cell.atividade.text = card.atividade
        cell.diaHora.text = card.diaHora
        
        return cell
    }
    
    @IBOutlet var CartinhasCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
