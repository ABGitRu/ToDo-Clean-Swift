//
//  SceneDelegate.swift


import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
	
	var window: UIWindow?
	
	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let scene = (scene as? UIWindowScene) else { return }
		let window = UIWindow(windowScene: scene)
		
		window.rootViewController = assembly()
		window.makeKeyAndVisible()
		
		self.window = window
	}
	
	private func assembly() -> UIViewController {
		
		let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
		
		guard let viewController = storyboard.instantiateViewController(withIdentifier: "NavigationController")
				as? UINavigationController
		else {
			fatalError("Нет на Main.storyboard UINavigationController!")
		}
		return viewController
	}
}
