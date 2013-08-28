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
    
}

    
- (IBAction)Screenshot;
- (IBAction)Alert;

- (IBAction)escondeSalvar;
- (IBAction)mostraSalvar;

@end
