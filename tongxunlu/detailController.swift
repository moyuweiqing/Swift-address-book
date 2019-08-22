//
//  detailController.swift
//  hellow
//
//  Created by Apple on 2018/11/6.
//  Copyright © 2018年 nucle. All rights reserved.
//

import UIKit

class detailController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
  
    var mailForEdit: mail?
    @IBOutlet weak var mailText: UITextField!
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var photo: UIImageView!
    @IBAction func camera(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated:true , completion:nil)
        
    }
    @IBAction func tapImage(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated:true , completion:nil)
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        navigationItem.title = mailForEdit?.name
        nameText.text = mailForEdit?.name
        mailText.text = mailForEdit?.mail
        photo.image=mailForEdit?.photo
             // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as!UIImage
        self.photo.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "save"
        {
            print ("save")
            mailForEdit=mail(inputName: self.nameText.text, inputMail:self.mailText.text  ,inputImage:self.photo.image)
        }
        if segue.identifier == "cancel"
        {
            print ("cancel")
           
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
}
