//
//  ToDoListModels.swift
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


/// модель для vip цикла экрана пользовательских задач
enum ToDoList {
	/// запрос с экрана в момент загрузки экрана
	struct Request {
		/// загрузился ли экран
		let isLoaded: Bool
	}
	/// запрос с экрана в момент тапа по ячейке с задачей
	struct TapRequest {
		/// индекс ячейки с задачей
		let indexPath: IndexPath
	}
	/// ответ интерактора на загрузку экрана
	struct Response {
		/// содержит просчитаные данные для отображения презентером
		let response: ViewModel.ViewData
	}
	/// ответ интерактора на тап по ячейке с задачей
	struct TapResponse {
		/// содержит просчитаные данные для отображения презентером
		let response: ViewModel.ViewData
	}
	/// модель для отображения данных
	struct ViewModel {
		/// данные необходимые для отображения на экране пользовательских задач
		struct ViewData {
			/// обычные задачи без приоретов и дедлайна
			struct RegularTask {
				/// имя задачи
				let name: String
				/// статус выполнености задачи
				let isDone: Bool
			}
			/// важные задачи с приоритетом и дедлайном
			struct ImportantTask {
				/// имя задачи
				let name: String
				/// статус выполнености задачи
				let isDone: Bool
				/// просрочен ли срок выполнения задачи
				let isOverdue: Bool
				/// срок до которого должна быть выполнена задача
				let deadLine: String
				/// приоритет задачи
				let priority: String
			}
			/// перечисление возможных типов задач
			enum Task {
				case regularTask(RegularTask)
				case importantTask(ImportantTask)
			}
			/// Модель данных для секции задач
			struct Section {
				/// имя секции
				let title: String
				/// задачи находящиеся в секции
				let tasks: [Task]
			}
			/// задачи разбитые по секциям
			let tasksBySections: [Section]
		}
	}
}
