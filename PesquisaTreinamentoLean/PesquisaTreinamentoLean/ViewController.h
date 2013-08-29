//
//  ViewController.h
//  PesquisaTreinamentoLean
//
//  Created by Evandro Montenegro on 27/08/13.
//  Copyright (c) 2013 iTmSense. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuartzCore/QuartzCore.h"


  
@interface ViewController : UIViewController {
    

  
    
    IBOutlet UIButton *botaoSalvar;
    IBOutlet UISegmentedControl *resposta02;
    IBOutlet UISegmentedControl *resposta03;
    IBOutlet UISegmentedControl *resposta04;
    IBOutlet UISegmentedControl *resposta05;
    IBOutlet UISegmentedControl *resposta06;
    IBOutlet UISegmentedControl *resposta07;
    IBOutlet UISegmentedControl *resposta08;
    IBOutlet UISegmentedControl *resposta09;
    
}

    
- (IBAction)Screenshot;
- (IBAction)Alert;

- (IBAction)escondeSalvar;
- (IBAction)mostraSalvar;

- (IBAction)habilitaResposta02;
- (IBAction)habilitaResposta03;
- (IBAction)habilitaResposta04;
- (IBAction)habilitaResposta05;
- (IBAction)habilitaResposta06;
- (IBAction)habilitaResposta07;
- (IBAction)habilitaResposta08;
- (IBAction)habilitaResposta09;


@end
