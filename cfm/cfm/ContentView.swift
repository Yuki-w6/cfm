import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @StateObject private var cookingGoals = CookingGoals()

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .environmentObject(cookingGoals)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("ホーム")
                }.tag(0)

            RecordView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("記録")
                }.tag(1)

            GoalView()
                .environmentObject(cookingGoals)
                .tabItem {
                    Image(systemName: "target")
                    Text("目標")
                }.tag(2)

            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("設定")
                }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
