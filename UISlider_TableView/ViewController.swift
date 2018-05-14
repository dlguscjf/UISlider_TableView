//
//  ViewController.swift
//  UISlider_TableView
//
//  Created by D7703_06 on 2018. 5. 14..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 101;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indentifier = "re"
        //임시 저장 장소 생성
        let cell = tableview.dequeueReusableCell(withIdentifier: indentifier, for: indexPath)
        cell.textLabel?.text = String(indexPath.row)
        //cell에 0부터 row최대 값까지 출력
        return cell
    }
    @IBAction func sliderMoved(_ sender: Any) {
       text.text = String(Int(Slider.value))
        let a = IndexPath(row: Int(Slider.value), section:0)
        //row 값을 현재 slider의 값으로 변경
        tableview.scrollToRow(at: a, at: UITableViewScrollPosition.top, animated: true)
        //tableview의 row값을 현재 a 값이랑 같은 위치로 이동
    }
    

}

