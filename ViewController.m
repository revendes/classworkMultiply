//
//  ViewController.m
//  Multiply
//
//  Created by John Tan on 11/7/15.
//  Copyright (c) 2015 John Tan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;

@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)onCalculateButtonPressed:(UIButton *)sender {
    
    NSNumber *multiplierText = [NSNumber numberWithInt:[self.multiplierLabel.text intValue]];
    
         NSNumber *inputValue =[NSNumber numberWithInt:[self.numberTextField.text intValue]];
    
    NSNumber *finalValue = [[NSNumber alloc]init];
   
    
    if (self.operatorSegmentControl.selectedSegmentIndex == 0){
         finalValue = [NSNumber numberWithInt:[multiplierText intValue] * [inputValue intValue]];
    }
    else if (self.operatorSegmentControl.selectedSegmentIndex == 1){
        finalValue = [NSNumber numberWithInt:[inputValue intValue] /[multiplierText intValue] ];
    }
    
    self.answerLabel.text =  [finalValue stringValue];
    
    if ([finalValue intValue] >= 20){
       self.view.backgroundColor = [UIColor greenColor];
    }
        else {
          self.view.backgroundColor = [UIColor whiteColor];
    }
    
    if ([finalValue intValue] %3 ==0 && [finalValue intValue] %5==0) {
        self.answerLabel.text = @"fizzbuzz";
    }
        else if ([finalValue intValue] %3 ==0) {
        self.answerLabel.text = @"fizz";
        }
    else if ([finalValue intValue] %5 ==0 ) {
        self.answerLabel.text = @"buzz";
    }
    else {
        self.answerLabel.text =  [finalValue stringValue];
    }
    
//    self.uiSlider.value 
    
    
    
    [self.numberTextField resignFirstResponder];
}

- (IBAction)uiSlider:(UISlider *)sender {
    self.multiplierLabel.text = [NSString stringWithFormat:@"%.0f", sender.value];
}

- (IBAction)numberTextField:(UITextField *)sender {
//    NSNumber *inputValue =[NSNumber numberWithInt:[self.numberTextField.text intValue]];
//
//    int intEntered= [self.numberTextField.text intValue];
//    
//    inputValue = [NSNumber numberWithInt:intEntered];
}//    return [resignFirstResponder];


//-(NSNumber *)doCalculation:(UIButton *)sender{
//    [NSNumber numberWithInt:[self.numberTextField.text intValue]] * [NSNumber numberWithInt:[self.multiplierLabel.text intValue]];
//return
//}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
