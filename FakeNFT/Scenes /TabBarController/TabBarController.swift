import UIKit

final class TabBarController: UITabBarController {
    
    private let servicesAssembly = ServicesAssembly(
        networkClient: DefaultNetworkClient(),
        nftStorage: NftStorageImpl(),
        myNftStorage: MyNftStorageImpl()
    )
    
    private let profileTabBarItem = UITabBarItem(
        title: "Профиль",
        image: UIImage(named: "Profile"),
        tag: 0
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileViewController = ProfileViewController(servicesAssembly: servicesAssembly)
        profileViewController.tabBarItem = profileTabBarItem
        let profileNavController = UINavigationController(rootViewController: profileViewController)
        
        viewControllers = [profileNavController]
        view.backgroundColor = .systemBackground
    }
}
