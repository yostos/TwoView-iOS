//
//  SecondViewController.swift
//  TwoView-iOS
//
//  Created by Toshiyuki Yoshida on 2015/03/11.
//  Copyright (c) 2015年 Toshiyuki Yoshida. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var texts = ["Hello", "やあ","ニーハオ","Good Day","こんにちは","おっす","Hi","Yeah"]
    var texts2 = ["英語", "日本語","中国語","ドイツ語","日本語","日本語","米国語","英語"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int  {
        return texts.count
    }
    func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath:NSIndexPath!) -> UITableViewCell! {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = texts[indexPath.row]
        cell.accessoryType = UITableViewCellAccessoryType.DetailDisclosureButton
        cell.detailTextLabel?.text = texts2[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView?, didSelectRowAtIndexPath indexPath:NSIndexPath!) {
        var text: String = texts[indexPath.row]
        println(text)
        performSegueWithIdentifier("next2",sender: nil)
        
    }
}
