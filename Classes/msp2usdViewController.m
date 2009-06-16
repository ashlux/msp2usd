#import "msp2usdViewController.h"

@implementation msp2usdViewController

@synthesize pointsTextField;
@synthesize currencyTextField;
@synthesize pointsToCurrencyLabel;
@synthesize currencyToPointsLabel;
@synthesize convertToCurrencyButton;
@synthesize currencyLabel;

@synthesize selectedCurrency;

double rateCurrencyToPoints;
double ratePointsToCurrency;

-(void) setUiForCurrency:(NSString*)currency {
	[pointsToCurrencyLabel setText:[NSString stringWithFormat:@"Microsoft Points to %@", currency]];
	[currencyToPointsLabel setText:[NSString stringWithFormat:@"%@ to Microsoft Points", currency]];
	[convertToCurrencyButton setTitle:[NSString stringWithFormat:@"Convert to %@", currency] forState:UIControlStateNormal];
	[currencyLabel setText:[NSString stringWithFormat:@"%@:", currency]];
}

-(IBAction) selectAUD {
	selectedCurrency = @"AUD";
	rateCurrencyToPoints = 0.0165;
	ratePointsToCurrency = 60.606060;
	[self setUiForCurrency:selectedCurrency];
}

-(IBAction) selectCAD {
	selectedCurrency = @"CAD";
	rateCurrencyToPoints = 0.0142857143;
	ratePointsToCurrency =  70.0;
	[self setUiForCurrency:selectedCurrency];
}

-(IBAction) selectEUR {
	selectedCurrency = @"EUR";
	rateCurrencyToPoints = 0.0119047619;
	ratePointsToCurrency = 84.0;
	[self setUiForCurrency:selectedCurrency];
}

-(IBAction) selectGBP {
	selectedCurrency = @"GBP";
	rateCurrencyToPoints = 0.00833333333;
	ratePointsToCurrency = 120;
	[self setUiForCurrency:selectedCurrency];
}

-(IBAction) selectJPY {
	selectedCurrency = @"JPY";
	rateCurrencyToPoints = 1.87;
	ratePointsToCurrency = 0.534759358;
	[self setUiForCurrency:selectedCurrency];
}

-(IBAction) selectUSD {
	selectedCurrency = @"USD";
	rateCurrencyToPoints = 0.0125;
	ratePointsToCurrency = 80.0;
	[self setUiForCurrency:selectedCurrency];
}

- (void)viewWillAppear:(BOOL)animated {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSLog([defaults objectForKey:@"currency"]);
	
	selectedCurrency = [defaults objectForKey:@"currency"];
	if ([selectedCurrency isEqualToString:@"AUD"]) {
		[self selectAUD];
	} else if ([selectedCurrency isEqualToString:@"CAD"]) {
		[self selectCAD];
	} else if ([selectedCurrency isEqualToString:@"EUR"]) {
		[self selectEUR];
	} else if ([selectedCurrency isEqualToString:@"GBP"]) {
		[self selectGBP];
	} else if ([selectedCurrency isEqualToString:@"JPY"]) {
		[self selectJPY];
	} else if ([selectedCurrency isEqualToString:@"USD"]) {
		[self selectUSD];
	} else if (selectedCurrency == nil) { // default to USD
		[self selectUSD];
	}
	
	[super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	[defaults setObject:selectedCurrency forKey:@"currency"];
	[defaults synchronize];
	
	[super viewWillDisappear:animated];
}

-(IBAction) convertToPoints {
	double usd = [currencyTextField.text doubleValue];
	double points = usd * ratePointsToCurrency;
	
	NSString *title = [NSString stringWithFormat:@"%@ to Microsoft Points", selectedCurrency];
	NSString *message = [NSString stringWithFormat:@"%@ %@ = %0.2f Points", currencyTextField.text, selectedCurrency, points];
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
														message:message
													   delegate:nil
											  cancelButtonTitle:@"Okay" otherButtonTitles:nil];
    [alertView show];
    [alertView release];
}

-(IBAction) convertToCurrency {
	double points = [pointsTextField.text doubleValue];
	double currency = points * rateCurrencyToPoints;
	
	NSString *title = [NSString stringWithFormat:@"Microsoft Points to %@", selectedCurrency];
	NSString *message = [NSString stringWithFormat:@"%@ Points = %0.2f %@", pointsTextField.text, currency, selectedCurrency];
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
														message:message
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
	[currencyTextField release];
	[selectedCurrency release];
	[pointsToCurrencyLabel release];
	[currencyToPointsLabel release];
	[convertToCurrencyButton release];
	[currencyLabel release];
	
	
    [super dealloc];
}

@end
