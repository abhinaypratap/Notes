import SwiftUI

/// a view to represent a single list item
struct ListRow: View {
    @ObservedObject var note: Note
    var body: some View {

        return HStack(alignment: .center, spacing: 5.0) {

            // if there is an image, display it on the left
            if note.image != nil {
                note.image!
                    .resizable()
                    .frame(width: 50, height: 50)
            }

            // the right part is a vertical stack with the title and description
            VStack(alignment: .leading, spacing: 5.0) {
                Text(note.name)
                    .bold()

                if note.description != nil {
                    Text(note.description!)
                }
            }
        }
    }
}
