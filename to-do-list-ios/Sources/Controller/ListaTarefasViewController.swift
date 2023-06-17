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
        self.registrerNib()
    }
    
    //MARK: Private/Public Func
    
    private func registrerNib() {
        self.tableView.register(UINib(nibName: "VazioTableCell", bundle: nil), forCellReuseIdentifier: "VazioTableCell")
    }
    
    
    
    
    //MARK: Action
    @IBAction func criarNovaTarefa(_ sender: Any) {
        self.performSegue(withIdentifier: "criarNovaTarefaSegue", sender: nil)
    }
    
    
}

//MARK: UITableViewDataSource, UITableViewDelegate
extension ListaTarefasViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        //numero de linhas que a tableview vai gerenciar.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell: VazioTableCell = tableView.dequeueReusableCell(withIdentifier: "VazioTableCell", for: indexPath) as! VazioTableCell
        let cell: TarefaTableCell = tableView.dequeueReusableCell(withIdentifier: "cellTarefa", for: indexPath) as! TarefaTableCell
        
        return cell
        //função responsavel por colocar a celula na tela
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        //121
        //141
        return 121
        //tamanho da celula da tabela
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath row: \(indexPath.row)")
    }
        
    
}
