import Foundation
import SwiftUI

struct OffsetReader: View {
    var onChange: (CGFloat) -> ()

    public var body: some View {
        GeometryReader { geometry in
            Spacer(minLength: 0)
                .onChange(of: geometry.frame(in: .global)) { value in
                    DispatchQueue.main.async {
                        onChange(value.minY)
                    }
                }
        }
    }
}
