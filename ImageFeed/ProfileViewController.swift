
import UIKit

final class ProfileViewController: UIViewController {
    
    private var profileView: UIImageView?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        addProfileImage()
        addLogoutButton()
        addLabels()
    }
    
    private func addProfileImage(){
        let image = UIImage(named: "mock_user_pick")
        let imageView = UIImageView(image: image)
        profileView = imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
    }
    
    private func addLogoutButton(){
        let button = UIButton.systemButton(with: UIImage(named: "Exit")!, target: self, action: nil)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = UIColor(red: 245.0/255.0, green: 107.0/255.0, blue: 108.0/255.0, alpha: 1.0)
        view.addSubview(button)
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        button.centerYAnchor.constraint(equalTo: profileView!.centerYAnchor).isActive = true
    }
    
    private func addLabels(){
        
        let name_label = UILabel()
        name_label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        name_label.text = "Екатерина Новикова"
        name_label.textColor = .white
        name_label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(name_label)
        name_label.topAnchor.constraint(equalTo: profileView!.bottomAnchor, constant: 8).isActive = true
        name_label.leadingAnchor.constraint(equalTo: profileView!.leadingAnchor).isActive = true
        
        let font = UIFont.systemFont(ofSize: 13)
        let user_name_label = UILabel()
        user_name_label.font = font
        user_name_label.text = "@ekaterina_nov"
        user_name_label.textColor = UIColor(red: 174.0/255.0, green: 175.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        user_name_label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(user_name_label)
        user_name_label.topAnchor.constraint(equalTo: name_label.bottomAnchor, constant: 8).isActive = true
        user_name_label.leadingAnchor.constraint(equalTo: name_label.leadingAnchor).isActive = true
        
        
        let description_label = UILabel()
        description_label.font = font
        description_label.text = "Hello, world!"
        description_label.textColor = .white
        description_label.font = font
        description_label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(description_label)
        description_label.topAnchor.constraint(equalTo: user_name_label.bottomAnchor, constant: 8).isActive = true
        description_label.leadingAnchor.constraint(equalTo: name_label.leadingAnchor).isActive = true
        
    }
    
}
