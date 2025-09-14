import UIKit

class TranscobingTableViewCell: UITableViewCell {
    
    let idLabel = UILabel()
    let titleLabel = UILabel()
    let heightLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(){
        idLabel.font = UIFont.systemFont(ofSize: 14)
        idLabel.textColor = .label
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(idLabel)
        
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        titleLabel.textColor = .label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        
        
        heightLabel.font = UIFont.systemFont(ofSize: 14)
        heightLabel.textColor = .secondaryLabel
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(heightLabel)
        
        NSLayoutConstraint.activate([
            idLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            idLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            idLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            titleLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 4),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            heightLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            heightLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
        ])
    }
    
    func configure(with transcobing: Transcobing) {
        idLabel.text = "ID: \(transcobing.id ?? "0")"
        titleLabel.text = transcobing.title
        heightLabel.text = "Height: \(transcobing.height ?? 0)"
    }
}
