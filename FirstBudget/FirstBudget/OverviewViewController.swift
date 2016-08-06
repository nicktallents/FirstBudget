//
//  OverviewViewController.swift
//  FirstBudget
//
//  Created by Nicholas Tallents on 4/9/16.
//  Copyright © 2016 Nicholas Tallents. All rights reserved.
//

import UIKit

class OverviewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var monthOrOverallSegmentedControl: UISegmentedControl!
    @IBOutlet weak var fundsAvailableValueLabel: UILabel!
    @IBOutlet weak var fundsAvailableLabelLabel: UILabel!
    @IBOutlet weak var categoriesTableView: UITableView!
    
    var monthBudget   : Budget?
    var overallBudget : Budget?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        

        do {
            try monthBudget = BudgetRepository.getCurrentMonthBudget()
            //fundsAvailableValueLabel.text = "$\(monthBudget."
        } catch BudgetError.NotFound {
            fundsAvailableValueLabel.text = "No Budget Made"
            fundsAvailableValueLabel.textColor = UIColor.blackColor()
            fundsAvailableLabelLabel.textColor = UIColor.blackColor()
        } catch {
            fundsAvailableValueLabel.text = "ERROR"
            fundsAvailableValueLabel.textColor = UIColor.redColor()
            fundsAvailableLabelLabel.textColor = UIColor.blackColor()
            NSLog("Error in: getCurrentMonthBudget")
        }
        
        do {
            try overallBudget = BudgetRepository.getMasterBudget()
        } catch BudgetError.NotFound {
            fundsAvailableValueLabel.text = "No Budget Made"
            fundsAvailableValueLabel.textColor = UIColor.blackColor()
            fundsAvailableLabelLabel.textColor = UIColor.blackColor()
        } catch {
            fundsAvailableValueLabel.text = "ERROR"
            fundsAvailableValueLabel.textColor = UIColor.redColor()
            fundsAvailableLabelLabel.textColor = UIColor.blackColor()
            NSLog("Error in: getCurrentMonthBudget")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = BudgetCategoryTableViewCell()
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
