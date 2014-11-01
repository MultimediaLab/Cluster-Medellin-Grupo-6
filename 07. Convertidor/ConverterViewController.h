
#import <UIKit/UIKit.h>
#import "Converter.h"
#import "ConfigViewController.h"

@interface ConverterViewController : UIViewController<ConfigDelegate> {
    
    Converter * converter;
}

@property (strong, nonatomic) IBOutlet UILabel *hello;

@property (strong, nonatomic) IBOutlet UITextField *dolars;
@property (strong, nonatomic) IBOutlet UISlider *slider;

- (IBAction)coverDolar:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *minTxt;
@property (strong, nonatomic) IBOutlet UILabel *currentTxt;

@property (strong, nonatomic) IBOutlet UILabel *maxTxt;
@property (strong, nonatomic) IBOutlet UILabel *result;

- (IBAction)exit:(id)sender;

@property NSString * data;


@end
