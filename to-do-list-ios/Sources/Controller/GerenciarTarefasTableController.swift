//
//  GerenciarTarefasTableController.swift
//  to-do-list-ios
//
//  Created by Marcel Leite de Farias on 12/06/23.
//

import UIKit

class GerenciarTarefasTableController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        //numeros de sessoes
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        //numero de linhas
    }


}
