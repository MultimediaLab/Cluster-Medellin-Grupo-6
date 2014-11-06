

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

//Picker
@property (strong, nonatomic) IBOutlet UIPickerView *pickerPaises;

//Fecha
- (IBAction)dateChange:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textDate;

//Animacion
@property (strong, nonatomic) IBOutlet UIView *containerView;
- (IBAction)controlOption:(id)sender;




@end

