//
//  ViewController.swift
//  MemoApp2021
//
//  Created by 金野利哉 on 2021/10/31.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //
        textView.delegate = self
        // SceneDelegateが持っている前回の内容を呼び出してTextViewに表示されるようにします。
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        textView.text = sceneDelegate.lastText
    }
    // TextViewに何か入力されたら動作します。
     func textViewDidChange(_ textView: UITextView) {
        // SceneDelegateを呼び出して変数に格納します。
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate

        // SceneDelegateに記述した"lastText"に入力されている内容を格納します。
        sceneDelegate.lastText = textView.text
     }
    
    
    
}

