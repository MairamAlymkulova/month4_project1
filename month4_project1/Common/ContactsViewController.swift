
import UIKit

class ContactsViewController: UIViewController {

    private let cellID = "cell"
    private let topLabel = MakeView.shared.makeLabel(text: "My Contacts", textColor: .black, font: .boldSystemFont(ofSize: 16))
    private let tableView = UITableView()
    private var contacts: [Contacts] = []
    override func viewDidLoad() {
        view.backgroundColor = Colors.background
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initUI()
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        initData()
    }
    

    private func initUI(){
        topLBLConfig()
        
        TVconfig()
    }
    
    private func topLBLConfig(){
        view.addSubview(topLabel)
        
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 66),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    private func TVconfig(){
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        let heigh = UIScreen.main.bounds.height
        let width = UIScreen.main.bounds.width
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topLabel.topAnchor, constant: 30),
            tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tableView.heightAnchor.constraint(equalToConstant: heigh),
            tableView.widthAnchor.constraint(equalToConstant: width)

        ])
                
    }
    private func initData(){
        contacts = [Contacts(name: "Jane Cooper", phoneNumber: "(270) 555-0117", image: "JCooper"),
                    Contacts(name: "Devon Lane", phoneNumber: "(308) 555-0121", image: "DLane1"),
                    Contacts(name: "Darrell Steward", phoneNumber: "(684) 555-0102", image: "DSteward"),
                    Contacts(name: "Devon Lane", phoneNumber: "(704) 555-0127", image: "DLane2"),
                    Contacts(name: "Courtney Henry", phoneNumber: "(505) 555-0125", image: "CHenry"),
                    Contacts(name: "Wade Warren", phoneNumber: "(225) 555-0118", image: "WWarren"),
                    Contacts(name: "Bessie Cooper", phoneNumber: "(406) 555-0120", image: "BCooper"),
                    Contacts(name: "Robert Fox", phoneNumber: "(480) 555-0103", image: "RFox"),
                    Contacts(name: "Jacob Jones", phoneNumber: "(702) 555-0122", image: "JJones"),
                    Contacts(name: "Jenny Wilson", phoneNumber: "(239) 555-0108", image: "JWilson")
        ]}

}

extension ContactsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumber
        let image = contacts[indexPath.row].image
        cell.imageView?.image = UIImage(named: image)
        
        return cell
    }
    
    
}
