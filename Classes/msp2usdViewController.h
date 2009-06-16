#import <UIKit/UIKit.h>

@interface msp2usdViewController : UIViewController {
	IBOutlet UITextField *pointsTextField;
	IBOutlet UITextField *currencyTextField;
	
	IBOutlet UILabel *pointsToCurrencyLabel;
	IBOutlet UILabel *currencyToPointsLabel;
	IBOutlet UIButton *convertToCurrencyButton;
	IBOutlet UILabel *currencyLabel;
	
	NSString *selectedCurrency;
}

@property (nonatomic, retain) IBOutlet UITextField *pointsTextField;
@property (nonatomic, retain) IBOutlet UITextField *currencyTextField;

@property (nonatomic, retain) IBOutlet UILabel *pointsToCurrencyLabel;
@property (nonatomic, retain) IBOutlet UILabel *currencyToPointsLabel;
@property (nonatomic, retain) IBOutlet UIButton *convertToCurrencyButton;
@property (nonatomic, retain) IBOutlet UILabel *currencyLabel;

@property (nonatomic, retain) NSString *selectedCurrency;

-(IBAction) convertToPoints;
-(IBAction) convertToCurrency;

-(IBAction) selectAUD;
-(IBAction) selectCAD;
-(IBAction) selectEUR;
-(IBAction) selectGBP;
-(IBAction) selectJPY;
-(IBAction) selectUSD;

@end

