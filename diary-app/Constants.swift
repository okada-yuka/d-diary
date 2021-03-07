//
//  Constants.swift
//  diary-app
//
//  Created by Yuka Okada on 2021/03/08.
//

import Foundation
import AWSCognitoIdentityProvider

struct CognitoConstants {
    // UserPool の各情報をもとにそれぞれの値を設定する.
    /// ユーザープールを設定しているリージョン.
    static let IdentityUserPoolRegion: AWSRegionType = AWSRegionType.APNortheast1
    /// ユーザープールID.
    static let IdentityUserPoolId: String = "ap-northeast-1_JagCUUqAN"
    /// アプリクライアントID.
    static let AppClientId: String = "k1gvh0hroii19sr4rj035jd2i"
    /// アプリクライアントのシークレットキー.
    static let AppClientSecret: String = ""
    /// プロバイダキー. "UserPool" で良さそう.
    static let SignInProviderKey: String = "UserPool"
    
    /// インスタンス生成禁止.
    private init() {}
}
