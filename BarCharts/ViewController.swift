//
//  ViewController.swift
//  BarCharts
//
//  Created by iHub on 18/11/19.
//  Copyright © 2019 iHubTechnologiesPvtLtd. All rights reserved.
//

import UIKit
import CoreCharts

class ViewController: UIViewController,CoreChartViewDataSource {

    @IBOutlet weak var barChart: VCoreBarChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barChart.dataSource = self
        
        barChart.displayConfig.barWidth = 40
        barChart.displayConfig.barSpace = 40
        barChart.displayConfig.titleFontSize = 15
        
    }

    func loadCoreChartData() -> [CoreChartEntry] {
        
        var allCityData = [CoreChartEntry]()
        
        let cityNames = ["Istanbul","Antalya","Ankara","Trabzon"]
        
        let plateNumber = [50,70,6,61]
        
        let colors = [UIColor.red,UIColor.blue,UIColor.orange,UIColor.green]
        
        for index in 0..<cityNames.count {
            
            let newEntry = CoreChartEntry(id: "\(plateNumber[index])",
                barTitle: cityNames[index],
                barHeight: Double(plateNumber[index]),
                barColor: colors[index])
            
            allCityData.append(newEntry)
        
        }
        
        return allCityData
        
    }
    
}

