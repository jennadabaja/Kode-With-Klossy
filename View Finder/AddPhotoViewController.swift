//
//  AddPhotoViewController.swift
//  View Finder
//
//  Created by Apple on 8/13/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
        
    @IBAction func albumTapped(_ sender: Any) {
        imagePicker.sourceType = .savedPhotosAlbum
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func cameraTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func photoLibraryTapped(_ sender: Any) {
   imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    @IBOutlet weak var newImage: UIImageView!
    
    @IBOutlet weak var textField: UITextField!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage.image = selectedImage
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
    }
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


