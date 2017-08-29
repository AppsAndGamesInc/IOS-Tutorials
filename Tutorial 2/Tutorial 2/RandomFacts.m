//
//  RandomFacts.m
//  Tutorial 2
//
//  Created by Marwan Harb on 8/29/17.
//  Copyright © 2017 Apps & Games. All rights reserved.
//

#import "RandomFacts.h"

@interface RandomFacts ()

@end

@implementation RandomFacts

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	[self.factsLabel.layer setCornerRadius:20.0];
	self.factsLabel.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)factsButton:(id)sender {
	NSArray *facts = @[@"A man spent 5 months in prison, Unaware that his bail was $2.00",@"A kick in the nuts is above 9000 del (units) of pain which is similar to giving birth to 160 kids and breaking up to 3200 bones at a time. In the human body, the same neuropeptide responsible for itching, NPPB, also helps control sodium levels and blood pressure.",@"In a 2008 survey, 58% of British teens thought Sherlock Holmes was a real guy , while 20% thought Winston Churchil was not.",@"In 1873 Colgate started the mass production of toothpaste in jars. Colgate introduced its toothpaste in a tube similar to a modern day toothpaste tubes only in the 1890’s", @"Banging your head against a wall burns 150 calories an hour", @"29th May is offically put a pillow on your fridge day "];
	int randomGene = arc4random() % facts.count;
	
	self.factsLabel.text = facts[randomGene];
}
@end
