import SwiftUI

@main
struct HomeView: View {
    @EnvironmentObject var cookingGoals: CookingGoals
    
    var body: some View {
        NavigationView {
            Text("自炊の目標回数: \(cookingGoals.cookingCount)")
                .navigationBarTitle("ホーム", displayMode: .inline)
        }
    }
}

struct RecordView: View {
    var body: some View {
        NavigationView {
            Text("記録の内容")
                .navigationBarTitle("記録", displayMode: .inline)
        }
    }
}

struct GoalView: View {
    @EnvironmentObject var cookingGoals: CookingGoals
    var body: some View {
        NavigationView {
            VStack {
                Text("自炊の目標回数: \(cookingGoals.cookingCount)")
                Button(action: {
                    self.cookingGoals.cookingCount += 1
                }) {
                    Text("目標回数を増やす")
                }
            }
            .navigationBarTitle("目標", displayMode: .inline)
        }
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("設定の内容")
                .navigationBarTitle("設定", displayMode: .inline)
        }
    }
}

