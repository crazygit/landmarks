//
//  CircleImage.swift
//  Landmarks
//
//  Created by Crazygit on 2022/8/7.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            // 添加一个圆形的遮罩
            .clipShape(Circle())
            // 添加一个白色的边框
            .overlay(Circle().stroke(.white, lineWidth: 4))
            // 添加背部阴影
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
