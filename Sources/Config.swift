//
//  Config.swift
//  Perfect-Authentication
//
//  Created by Jonathan Guthrie on 2017-01-23.
//
//

import PerfectLib
import JSONConfig
import OAuth2


struct AppCredentials {
	var clientid = ""
	var clientsecret = ""
}

func config() {
	if let configData = JSONConfig(name: "./config/ApplicationConfiguration.json") {
		if let dict = configData.getValues() {

			if let i = dict["facebookAppID"] { FacebookConfig.appid = i as! String }
			if let i = dict["facebookSecret"] { FacebookConfig.secret = i as! String }
			if let i = dict["facebookEndpointAfterAuth"] { FacebookConfig.endpointAfterAuth = i as! String }
			if let i = dict["facebookRedirectAfterAuth"] { FacebookConfig.redirectAfterAuth = i as! String }

			if let i = dict["githubKey"] { GitHubConfig.appid = i as! String }
			if let i = dict["githubSecret"] { GitHubConfig.secret = i as! String }
			if let i = dict["githubEndpointAfterAuth"] { GitHubConfig.endpointAfterAuth = i as! String }
			if let i = dict["githubRedirectAfterAuth"] { GitHubConfig.redirectAfterAuth = i as! String }

			if let i = dict["googleKey"] { GoogleConfig.appid = i as! String }
			if let i = dict["googleSecret"] { GoogleConfig.secret = i as! String }
			if let i = dict["googleEndpointAfterAuth"] { GoogleConfig.endpointAfterAuth = i as! String }
			if let i = dict["googleRedirectAfterAuth"] { GoogleConfig.redirectAfterAuth = i as! String }

			if let i = dict["linkedinKey"] { LinkedinConfig.appid = i as! String }
			if let i = dict["linkedinSecret"] { LinkedinConfig.secret = i as! String }
			if let i = dict["linkedinEndpointAfterAuth"] { LinkedinConfig.endpointAfterAuth = i as! String }
			if let i = dict["linkedinRedirectAfterAuth"] { LinkedinConfig.redirectAfterAuth = i as! String }

		}
	} else {
		print("Unable to get Configuration")
	}

}
