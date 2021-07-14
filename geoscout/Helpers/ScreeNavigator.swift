
import SwiftUI

enum Screens: String {
    case welcome
    case home
    case login
    case registration
    case activateAccount
    case scoutModel
    case tips
    case becomeModel
    case myScouting
    case profile
    case portrait
    case fullbody
    case smiling
}

final class ScreenNavigator: ObservableObject {
    @Published var pushedScreen: Screens?
}
