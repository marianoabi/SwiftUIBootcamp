//
//  ShapesModule.swift
//  SwiftUIBootcamp
//
//  Created by Abi M on 5/19/24.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

struct ShapesModule: View {
    var body: some View {
//        Circle()
        Ellipse()
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10]))
//            .foregroundStyle(.purple)
//            .frame(width: 50, height: 50)
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 10)

        Rectangle()
            .stroke(Color.green, lineWidth: 4)
            .frame(width: 100, height: 100)

        RoundedRectangle(cornerRadius: 25, style: .continuous)
//            .stroke(Color.orange, lineWidth: 3)
            .foregroundStyle(.orange)
            .frame(width: 150, height: 100)

        Ellipse()
            .stroke(Color.purple, lineWidth: 2)
            .frame(width: 200, height: 100)

        CustomShape()
            .stroke(Color.red, lineWidth: 3)
            .frame(width: 100, height: 100)

        Capsule()
            .foregroundStyle(.cyan)
            .frame(width: 150, height: 50)
    }
}

#Preview {
    ShapesModule()
}
