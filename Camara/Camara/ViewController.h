#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:(id)sender;
- (IBAction)takePhotoAlbum:(id)sender;



@property (strong, nonatomic) IBOutlet UIBarButtonItem *camaraButton;

@end

