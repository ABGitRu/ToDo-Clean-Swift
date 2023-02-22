//
//  LoginWorker.swift
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


/// Работник для экрана логина
class LoginWorker {
	
	/// открыть ли доступ
	/// - Parameter data: полученый от интерактора запрос
	/// - Returns: открыть или нет
	func isAllowed(data :Login.Request) -> Bool {
		if data.login == "Admin" && data.password == "pa$$32!" {
			return true
		} else {
			return false
		}
	}
}
