//
//  ListaTarefasViewController.swift
//  to-do-list-ios
//
//  Created by Marcel Leite de Farias on 13/06/23.
//

import UIKit

class ListaTarefasViewController: UIViewController {

    
    //MARK: @IBOutlet
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnAdd: UIButton!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    //MARK: Action
    @IBAction func criarNovaTarefa(_ sender: Any) {
        
    }
    
    
}

//MARK: UITableViewDataSource, UITableViewDelegate
extension ListaTarefasViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        //numero de linhas que a tableview vai gerenciar.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TarefaTableCell = tableView.dequeueReusableCell(withIdentifier: "cellTarefa", for: indexPath) as! TarefaTableCell
        
        return cell
        //função responsavel por colocar a celula na tela
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 121
        //tamanho da celula da tabela
    }
        
    
}
