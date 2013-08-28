//
//  ViewController.m
//  PesquisaTreinamentoLean
//
//  Created by Evandro Montenegro on 27/08/13.
//  Copyright (c) 2013 iTmSense. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


// ESCONDER BOTAO SALVAR

-(IBAction)escondeSalvar{
    botaoSalvar.enabled = NO;
}

// ---------------------------------------------------------------------------------------

// MOSTRA BOTAO SALVAR

-(IBAction)mostraSalvar{
    botaoSalvar.enabled = YES;
}

// ---------------------------------------------------------------------------------------

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // SOBE A VIEW QUANDO O TECLADO APARECE
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
  
}

- (void)keyboardDidShow:(NSNotification *)notification
{
    if ([[UIScreen mainScreen] bounds].size.height == 1024)
    {
        [self.view setFrame:CGRectMake(0,-180,768,1024)]; }
    else {
        [self.view setFrame:CGRectMake(0,-180,768,1024)]; } }

- (void)keyboardDidHide:(NSNotification *)notification
{
    if ([[UIScreen mainScreen] bounds].size.height == 1024)
    {
        [self.view setFrame:CGRectMake(0,0,768,1024)]; }
    else {
        [self.view setFrame:CGRectMake(0,0,768,1024)]; }
    
}
  //--------------------------------------------------------------


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// TIRA FOTO DA TELA E SALVA NA GALERIA DO DEVICE
- (IBAction)Screenshot {

    UIGraphicsBeginImageContext(self.view.bounds.size);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *screenshotimage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(screenshotimage, nil, nil, nil);

}

//--------------------------------------------------------------

// CAIXA DE ALERTA QUE FOI CONCLUIDA
-(IBAction)Alert
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"CONCLUÍDO" message:@"Obrigado por responder a pesquisa" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

//--------------------------------------------------------------

@end
