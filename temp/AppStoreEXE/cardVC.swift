//
//  cardVC.swift
//  temp
//
//  Created by Thinkwik 27 on 08/08/23.
//

import Cards
import UIKit

class cardVC: UIViewController, CardDelegate {
    
    @IBOutlet weak var viewBG: UIView!
    
    @IBOutlet weak var view2: CardHighlight!
    
    private let card: CardHighlight = {
        let card = CardHighlight(frame: .zero)
//        card.backgroundImage = UIImage(named: "placeholder")
        card.icon = UIImage(named: "white")
        card.title = "Hello \nThere!!!"
        card.itemTitle = "Click here to know more"
        card.itemSubtitle = "NOWWWW!!!!"
        card.buttonText = "click here"
        card.titleSize = 32
        card.shadowBlur = 20
        card.itemTitleSize = 14
        card.backgroundColor = Colors.color_purple
        card.shadowColor = Colors.color_yellow
        card.textColor = Colors.color_white
        card.cardRadius = 10
        card.hasParallax = false
        return card
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.aboutCard()
        card.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        card.frame = CGRect(x: 10, y: 20,
                            width: view.frame.size.width - 20 ,
                            height: 300)
    }
    
    func cardDidTapInside(card: Card) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OpenedCardVC") as? OpenedCardVC
        card.shouldPresent(vc!, from: self , fullscreen: true)
    }
        
    func cardHighlightDidTapButton(card: CardHighlight, button: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CollectionViewVC") as? CollectionViewVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func aboutCard() {
        viewBG.addSubview(card)
        view2.buttonText = ">>".uppercased()
    }

}
