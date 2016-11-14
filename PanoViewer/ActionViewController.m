//
//  ActionViewController.m
//  PanoViewer
//
//  Created by Ortwin Gentz on 11.11.16.
//  Copyright © 2016 FutureTap. All rights reserved.
//

#import "ActionViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import <GoogleMaps/GoogleMaps.h>

@interface ActionViewController ()

@property(strong,nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ActionViewController

+ (void) load {
}

- (void)viewDidLoad {
    [super viewDidLoad];
	BOOL result = [GMSServices provideAPIKey:@"<my API key>"];
	NSLog(@"Google Maps %@ for %@: %d\n", [GMSServices SDKVersion], [[NSBundle mainBundle] bundleIdentifier], result);

	GMSPanoramaView *panoView = [[GMSPanoramaView alloc] initWithFrame:self.view.bounds];
	[self.view addSubview:panoView];
	[panoView moveToPanoramaID:@"yRiIQhOheWIl6gp_0EHHKw"];
	
	// try a map view instead of the pano view:
//	GMSMapView *mapView = [[GMSMapView alloc] initWithFrame:self.view.bounds];
//	[self.view addSubview:mapView];
	}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done {
    // Return any edited content to the host app.
    // This template doesn't do anything, so we just echo the passed in items.
    [self.extensionContext completeRequestReturningItems:self.extensionContext.inputItems completionHandler:nil];
}

@end
