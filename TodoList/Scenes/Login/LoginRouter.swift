//
//  LoginRouter.swift
//  TodoList
//
//  Created by Mac on 21.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit


/// протокол роутера экрана логина
protocol LoginRoutingLogic {
	/// отправиться на экран с пользовательскими задачами
	/// - Parameters:
	///   - source: откуда
	///   - destination: куда
	func navigateToToDoList(source: LoginViewController, destination: IToDoListViewConroller)
}

/// роутер экрана логина
class LoginRouter: NSObject, LoginRoutingLogic {
	/// контроллер с которого происходит переход
	weak var viewController: LoginViewController?

	func navigateToToDoList(source: LoginViewController, destination: IToDoListViewConroller) {
		source.show(destination as! UIViewController, sender: nil)
	}
}