//
//  ChapterListViewModel.swift
//  FunnyFm
//
//  Created by Duke on 2018/12/7.
//  Copyright © 2018 Duke. All rights reserved.
//

import UIKit

class ChapterListViewModel: NSObject {
    
    var podId: Int = 0
    
    var pageNum: Int = 1
    
    var isNoMore = false
    
    lazy var chapterList : [Episode] = {
        return []
    }()
    
    weak var delegate : ViewModelDelegate?
    
    init(_ podId: Int) {
        super.init()
        self.podId = podId
        self.first()
    }
    
    func first(){
        self.pageNum = 1
        self.getChapters()
    }
    
    func next(){
        self.pageNum = self.pageNum + 1
        self.getChapters()
    }
    
    fileprivate func getChapters() {
	
    }
    
}
