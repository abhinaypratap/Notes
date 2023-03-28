import SwiftUI

/// This is the main view of our app,
/// It is made of a Table with one line per Note
struct ContentView: View {
    @ObservedObject private var userData: UserData = .shared

    var body: some View {
        List {
            ForEach(userData.notes) { note in
                ListRow(note: note)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        prepareTestData()
        return ContentView()
    }
}
