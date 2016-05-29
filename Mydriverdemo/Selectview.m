//
//  Selectview.m
//  Mydriverdemo
//
//  Created by Delin on 16/5/29.
//  Copyright © 2016年 Delin-Zhang. All rights reserved.
//

#import "Selectview.h"

@implementation Selectview
{
    UIButton * _button;
}

-(instancetype)initWithFrame:(CGRect)frame andBtn:(UIButton *)btn{
    self = [ super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.7];
        [self createBtn];
        _button = btn;
        
    }
    return self;
}
-(void)createBtn{
    for (int i=0; i<4; i++) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
        btn.frame = CGRectMake(self.frame.size.width/4*i+self
                        .frame.size.width/4/2-30, self.frame.size.height-80, 60, 60);
        [btn setBackgroundImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i+1]] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
    }
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha=0;
    }];
    
}
-(void)click:(UIButton *)btn {
    [_button setImage:[btn backgroundImageForState:UIControlStateNormal] forState:UIControlStateNormal];
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha=0;
    }];
    
}

@end
