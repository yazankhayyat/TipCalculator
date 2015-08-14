//
//  ViewController.m
//  TipCalculator
//
//  Created by Yazan Khayyat on 2015-08-14.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (nonatomic, assign) double billAmountDouble;
@property (nonatomic, assign) double tipAmountDouble;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipPercentageSlider;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tipPercentageSlider.value = 15;
    self.tipPercentageSlider.maximumValue = 100;
    self.tipPercentageSlider.minimumValue = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)tipCalculatorButton:(id)sender {
    self.billAmountDouble = [self.billAmountTextField.text doubleValue];
    
    self.tipAmountDouble = self.billAmountDouble * (self.tipPercentageSlider.value/100);
    NSString *myDoubleNumber = [NSString stringWithFormat:@"$%0.2f",self.tipAmountDouble];
    self.tipAmountLabel.text = myDoubleNumber;

    
    NSLog(@"%f",self.tipAmountDouble);
    
    
}
- (IBAction)percentageSlider:(id)sender {
    NSString *percentageSlider = [NSString stringWithFormat:@"%0.2f %%", self.tipPercentageSlider.value];
    self.tipPercentageLabel.text = percentageSlider;
    
    NSLog(@"%@", percentageSlider);
    
}

@end

