import UIKit

final class TabBarController: UITabBarController {

    var servicesAssembly: ServicesAssembly!
    
    private let profileTabBarItem = UITabBarItem(
        title: "Профиль",
        image: UIImage(named: "Profile"),
        tag: 0
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileViewController = ProfileViewController(servicesAssembly: servicesAssembly)
        profileViewController.tabBarItem = profileTabBarItem

        viewControllers = [profileViewController]

        view.backgroundColor = .systemBackground
    }
}
