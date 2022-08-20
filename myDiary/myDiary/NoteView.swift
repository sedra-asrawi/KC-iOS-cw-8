//
//  NoteView.swift
//  myDiary
//
//  Created by Sedra Asrawi on 20/08/2022.
//

import SwiftUI

struct NoteView: View {
    @State var MyC = Color.white
    @State var MyT = ""
    var body: some View {
        ZStack{
            MyC
                .ignoresSafeArea()
            Text(MyT)
            
        }
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
