//
//  ViewController.m
//  Camara
//
//  Created by Profesor on 15/11/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        _camaraButton.enabled = NO;
        
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"No tiene camara disponible" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil] show];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takePhoto:(id)sender {
    UIImagePickerController * camara = [[UIImagePickerController alloc] init];
    camara.delegate = self;
    camara.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [camara setCameraDevice:UIImagePickerControllerCameraDeviceRear];
    
    [self presentViewController:camara animated:YES completion:nil];
}

- (IBAction)takePhotoAlbum:(id)sender {
    UIImagePickerController * galeria = [[UIImagePickerController alloc] init];
    galeria.delegate = self;
    galeria.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:galeria animated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage * imagenCapturada = info[UIImagePickerControllerOriginalImage];
//    UIImage * imagenCapturada = info[UIImagePickerControllerQualityType640x480];
    _imageView.image = imagenCapturada;
    
    if (picker.sourceType == UIImagePickerControllerSourceTypeCamera) {
        UIImageWriteToSavedPhotosAlbum(imagenCapturada, nil, nil, nil);
    }
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
