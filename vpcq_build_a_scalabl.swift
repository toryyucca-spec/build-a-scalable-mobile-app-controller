// vpcq_build_a_scalabl.swift

import Foundation

// Data Model for Scalable Mobile App Controller

// MARK: - AppSettings
struct AppSettings {
    let appId: String
    let apiToken: String
    let environment: Environment
}

// MARK: - Environment
enum Environment: String, CaseIterable {
    case development
    case staging
    case production
}

// MARK: - Screen
struct Screen {
    let id: Int
    let name: String
    let viewType: ViewType
}

// MARK: - ViewType
enum ViewType: String, CaseIterable {
    case login
    case dashboard
    case settings
    case unknown
}

// MARK: - AppFeature
struct AppFeature {
    let id: Int
    let name: String
    let isEnabled: Bool
}

// MARK: - User
struct User {
    let id: Int
    let username: String
    let email: String
    let features: [AppFeature]
}

// MARK: - AppController
class AppController {
    let appSettings: AppSettings
    let currentUser: User?
    let screens: [Screen]
    
    init(appSettings: AppSettings, currentUser: User? = nil, screens: [Screen]) {
        self.appSettings = appSettings
        self.currentUser = currentUser
        self.screens = screens
    }
}