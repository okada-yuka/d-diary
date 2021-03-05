//
//  Constants.swift
//  d-diary
//
//  Created by Yuka Okada on 2021/03/05.
//

import Foundation
import AWSCognitoIdentityProvider

struct CognitoConstants {
    // UserPool の各情報をもとにそれぞれの値を設定する.
    /// ユーザープールを設定しているリージョン.
    static let IdentityUserPoolRegion: AWSRegionType = AWSRegionType.APNortheast1
    /// ユーザープールID.
    static let IdentityUserPoolId: String = "ap-northeast-1_eHYnnsVIo"
    /// アプリクライアントID.
    static let AppClientId: String = "17pqs1het0lsgrdb2ovhj67ktr"
    /// アプリクライアントのシークレットキー.
    static let AppClientSecret: String = "14qsdcnqkhm65s3g3p00coiihpjviuajv78oillc8vsqh47m146c"
    /// プロバイダキー. "UserPool" で良さそう.
    static let SignInProviderKey: String = "UserPool"
    
    /// インスタンス生成禁止.
    private init() {}
}
