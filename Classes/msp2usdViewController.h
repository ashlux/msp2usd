#import <UIKit/UIKit.h>

@interface msp2usdViewController : UIViewController {
	IBOutlet UITextField *pointsTextField;
	IBOutlet UITextField *usdTextField;
}

@property (nonatomic, retain) IBOutlet UITextField *pointsTextField;
@property (nonatomic, retain) IBOutlet UITextField *usdTextField;

-(IBAction) convertToPoints;
-(IBAction) convertToDollars;

-(IBAction) sourceOnGitHub;

@end

