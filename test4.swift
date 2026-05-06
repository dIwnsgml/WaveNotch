import SwiftUI

struct TestView: View {
    var currentAngle: Double = 45.0
    var pivot = CGPoint(x: 100, y: 100)
    var armLength: CGFloat = 80
    var body: some View {
        ZStack(alignment: .center) {
            // Arm pole
            Capsule()
                .fill(Color(white: 0.8))
                .frame(width: 4, height: armLength)
                .offset(y: armLength / 2) // Move down so top is at pivot
            
            // Cartridge
            Rectangle()
                .frame(width: 10, height: 20)
                .offset(y: armLength)
        }
        .frame(width: 0, height: 0)
        .rotationEffect(.degrees(currentAngle), anchor: .center)
        .position(pivot)
    }
}
