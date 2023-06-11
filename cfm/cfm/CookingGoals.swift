import SwiftUI
import Combine

class CookingGoals: ObservableObject {
    @Published var cookingCount: Int = 0
}
