#import "MFSLauncher.h"
#import "MFSRootViewController.h"

UIViewController *MFSCreateController(void)
{
    MFSRootViewController *root = [[MFSRootViewController alloc] init];

    UINavigationController *nav =
        [[UINavigationController alloc] initWithRootViewController:root];

    return nav;
}
