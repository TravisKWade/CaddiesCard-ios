//
//  NewRoundViewController.swift
//  Caddies Card
//
//  Created by Travis Wade on 12/13/19.
//  Copyright © 2019 Branvis Software. All rights reserved.
//

import UIKit

class NewRoundViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var courseNameTextFiled: UITextField!
    @IBOutlet var addPlayerButton: UIButton!
    @IBOutlet var playersTable: UITableView!
    @IBOutlet var playerTextField: UITextField!
    @IBOutlet var startRoundButton: UIButton!
    
    var players: Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
    }
    
    // MARK: - setup
    
    func setupNavigation() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    // MARK: - button handlers
    
    @IBAction func addPlayerPressed(sender: UIButton) {
        if let player = playerTextField.text {
            players.append(player)
            playerTextField.text = ""
            
            playersTable.reloadData()
        }
    }
    
    @IBAction func startRoundPressed(sender: UIButton) {
        
    }
    
    // MARK: - table view
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.players[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            players.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } 
    }
}
