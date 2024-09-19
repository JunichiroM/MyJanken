//
//  ContentView.swift
//  MyJanken
//
//  Created by apple on 2024/09/14.
//

import SwiftUI

struct ContentView: View {
    
    //じゃんけんの結果を格納する変数（０＝初期画面、１＝グー、２＝チョキ、３＝パー
    @State var answerNumber = 0
    var body: some View {
        
        VStack {
            //スペースを追加
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            }else if answerNumber == 1 {
                //グー画像を指定
                // グー画像を指定
                Image("gu")
                // リサイズを指定
                    .resizable()
                // アスペクト比を維持する指定
                    .scaledToFit()
                //スペースを追加
                Spacer()
                // じゃんけんの種類を指定
                Text("グー")
                    .padding(.bottom)
            }else if answerNumber == 2 {
                //チョキ画像を指定
                Image("choki")
                // リサイズを指定
                    .resizable()
                // アスペクト比を維持する指定
                    .scaledToFit()
                //スペースを追加
                Spacer()
                
                Text("チョキ")
                    .padding(.bottom)
            }else{
                //パー画像を指定
                Image("pa")
                // リサイズを指定
                    .resizable()
                // アスペクト比を維持する指定
                    .scaledToFit()
                //スペースを追加
                Spacer()
                
                Text("パー")
                    .padding(.bottom)
            }
            
            Button {
                //次のじゃんけんへ
                answerNumber = Int.random(in: 1...3)
                
                //新しいじゃんけんの結果を一時的に格納する変数
                var newAnswerNumber = 0
                
                //repeatは繰り返しを意味する
                repeat{
                    newAnswerNumber = Int.random(in: 1...3)
                }while answerNumber == newAnswerNumber
                
                //新しいじゃんけんの結果を格納
                answerNumber = newAnswerNumber
                
            } label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }

        }
    }
}

#Preview {
    ContentView()
}
