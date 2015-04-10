//
//  CCTableViewController.m
//  UITableViewController
//
//  Created by Kutty, Arun (US - Mumbai) on 3/31/15.
//  Copyright (c) 2015 Deloitte. All rights reserved.
//

#import "CCTableViewController.h"

@implementation CCTableViewController


// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *cellIdentifier =@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if(indexPath.section==0){
        cell.textLabel.text =@"i am in section 0";
    }else if(indexPath.section==1){
        
        cell.textLabel.text =@"Another section";
        
    }
    else{
        
        cell.textLabel.text = [NSString stringWithFormat:@"Cell %i",indexPath.row];
    }
    return cell;
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if(section == 0){
        return 2;
    }else if(section == 1){
        
        return 1;
    }else{
        
        return 3;
    }
}




@end
