//
//  ToDoListPresenter.swift
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


/// протокол презентера экрана пользовательских задач
protocol ToDoListPresentationLogic {
	/// отрисовать таблицу задач
	/// - Parameter responce: ответ от интерактора содержащий данные для отображения
	func presentTable(responce: ToDoList.Response)
	/// отрисовать экран после того как на ячейку нажали
	/// - Parameter responce: ответ от интерактора содержащий данные для отображения
	func renderAfterCellChecked(responce: ToDoList.TapResponse)
}


/// презентер экрана пользовательских задач
class ToDoListPresenter: ToDoListPresentationLogic {
	/// контроллер экрана пользоватесльких задач
	weak var viewController: IToDoListViewConroller?

	func presentTable(responce: ToDoList.Response) {
		viewController?.render(viewData: responce.response)
	}

	func renderAfterCellChecked(responce: ToDoList.TapResponse) {
		viewController?.render(viewData: responce.response)
	}
}
