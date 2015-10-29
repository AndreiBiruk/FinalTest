//
//  ViewController.m
//  Jokes
//
//  Created by fpmi on 29.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)perv:(id)sender {
    _current = _current - 1;
    if (_current < 0) {
        _current = 0;
    }
    [_joke setText:_jokes[_current]];
}
- (IBAction)next:(id)sender {
    _current = _current + 1;
    if (_current >= [_jokes count]) {
        _current = [_jokes count] - 1;
    }
    [_joke setText:_jokes[_current]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _jokes = @[@"xxx: Знаете примеры красивого php-кода?/nyyy: Исходники и архитектура Yii2\nzzz: Сейчас вас поклонники джумлы и битрикса заплюют))\nbbb: Битрикс просто божественен) обожаю его, это как грязевая ванна)",
               @"xxx: Знаете примеры красивого php-кода?\nyyy: Исходники и архитектура Yii2\nzzz: Сейчас вас поклонники джумлы и битрикса заплюют))\nbbb: Битрикс просто божественен) обожаю его, это как грязевая ванна)",
               @"Canakau: о, oтопление включили\nCanakau: батарея потекла\ndiamant: Ударят холода - замёрзнет и перестанет течь",
               @"Хуже сисадмина или безопасника, которым нечем заняться, может быть только директор, которому нечем заняться.",
               @"А ведь перфекционист не может быть оптимистом/пессимистом - стакан всегда наполнен нифига не наполовину"];
    
    _current = 0;
    
[_joke setText:_jokes[_current]];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
