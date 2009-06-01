#import "msp2usdViewController.h"

@implementation msp2usdViewController

@synthesize pointsTextField;
@synthesize usdTextField;


-(IBAction) sourceOnGitHub {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://github.com/ashlux/msp2usd/tree/master"]];
}

-(IBAction) convertToPoints {
	double usd = [usdTextField.text doubleValue];
	// TODO: ROUND!
	double points = usd * 80.0; // 80 points per dollar 
	
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"USD to Points"
														message:[NSString stringWithFormat:@"$%@ = %0.2f points", usdTextField.text, points]
													   delegate:nil
											  cancelButtonTitle:@"Okay" otherButtonTitles:nil];
    [alertView show];
    [alertView release];
}

-(IBAction) convertToDollars {
	double points = [pointsTextField.text doubleValue];
	// TODO: ROUND!
	double usd = points * 0.0125; // 1 point = 0.0125 dollars
	
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Points to USD"
														message:[NSString stringWithFormat:@"%@ points = $%0.2f", pointsTextField.text, usd]
													   delegate:nil
											  cancelButtonTitle:@"Okay" otherButtonTitles:nil];
    [alertView show];
    [alertView release];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return YES;
}

- (void)dealloc {
	[pointsTextField release];
	[usdTextField release];
	
    [super dealloc];
}

@end
