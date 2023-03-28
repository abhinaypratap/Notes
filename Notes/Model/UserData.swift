import SwiftUI

/// singleton object to store user data
class UserData: ObservableObject {
    private init() {}
    static let shared = UserData()

    @Published var notes: [Note] = []
    @Published var isSignedIn: Bool = false
}

/// this is a test data set to preview the UI in Xcode
@discardableResult
func prepareTestData() -> UserData {
    let userData = UserData.shared
    userData.isSignedIn = true
    let desc = "this is a very long description that should fit on multiiple lines.\nit even has a line break\nor two."
    let noteOne = Note(id: "01", name: "Hello world", description: desc, image: "mic")
    let noteTwo = Note(id: "02", name: "A new note", description: desc, image: "phone")

    noteOne.image = Image(systemName: noteOne.imageName!)
    noteTwo.image = Image(systemName: noteTwo.imageName!)

    userData.notes = [noteOne, noteTwo]

    return userData
}
