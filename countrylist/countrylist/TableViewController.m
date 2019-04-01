
#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
NSMutableArray *arr;
NSMutableArray *arrPh;
NSMutableArray *arrCurrencyCode;
NSMutableArray *arrCountryyCode;
NSMutableArray *arrCountryImage;

- (void)viewDidLoad {
    [super viewDidLoad];

    NSDictionary *countryDict = [self JSONFromFile];
    
    arr=[NSMutableArray array];
    arrPh = [NSMutableArray array];
    arrCurrencyCode = [NSMutableArray array];
    arrCountryyCode = [NSMutableArray array];
    arrCountryImage = [NSMutableArray array];
    
   
    for(NSDictionary *dict in countryDict ){
        
        NSString *name  = [dict objectForKey:@"name"];
        NSString *Ph = [dict objectForKey:@"phoneCode"];
        NSString *CurrencyCode = [dict objectForKey:@"currencyCode"];
        NSString *CountryCode = [dict objectForKey:@"countryCode"];
        NSString *strEncoded = [dict objectForKey:@"media"];
        UIImage  *image  =  [self decodeBase64ToImage:strEncoded];
  
        [arr addObject:name];
        [arrPh addObject:Ph];
        [arrCountryyCode addObject:CountryCode];
        [arrCurrencyCode addObject:CurrencyCode];
        [arrCountryImage addObject:image];
        
    }
    
}
- (UIImage *)decodeBase64ToImage:(NSString *)strEncodeData {
    NSData *data = [[NSData alloc]initWithBase64EncodedString:strEncodeData options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [UIImage imageWithData:data];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return arr.count;
}

- (NSDictionary *)JSONFromFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"countrylist" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    cell.countryName.text = [arr objectAtIndex:indexPath.row];
    cell.phoneCode.text = [arrPh objectAtIndex:indexPath.row];
    cell.CurrencyCode.text = [arrCurrencyCode objectAtIndex:indexPath.row];
    cell.countryCode.text = [arrCountryyCode objectAtIndex:indexPath.row];
    cell.countryImage.image = [arrCountryImage objectAtIndex:indexPath.row];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
