#import <UIKit/UIKit.h>

@interface AlertasViewController : UIViewController <UIAlertViewDelegate, UIActionSheetDelegate>

{
    UIAlertView * alerta;
    UIActionSheet * opciones;

}

- (IBAction)alertaSimple:(id)sender;
- (IBAction)alertaText:(id)sender;
- (IBAction)alertaPassword:(id)sender;
- (IBAction)menuOpciones:(id)sender;

@end
