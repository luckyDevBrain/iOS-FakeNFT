final class ServicesAssembly {
    
    private let networkClient: NetworkClient
    private let nftStorage: NftStorage
    private let myNftStorage: MyNftStorage
    
    init(
        networkClient: NetworkClient,
        nftStorage: NftStorage,
        myNftStorage: MyNftStorage
    ) {
        self.networkClient = networkClient
        self.nftStorage = nftStorage
        self.myNftStorage = myNftStorage
    }
    
    lazy var nftService: NftService = {
        NftServiceImpl(
            networkClient: networkClient,
            storage: nftStorage
        )
    }()
    
    lazy var profileService: ProfileService = {
        ProfileServiceImpl(networkClient: networkClient)
    }()
    
    lazy var myNftService: MyNftService = {
        MyNftServiceImpl(
            networkClient: networkClient,
            storage: myNftStorage
        )
    }()
}
