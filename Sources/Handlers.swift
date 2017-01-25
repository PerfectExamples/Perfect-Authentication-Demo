//
//  Handlers.swift
//  Perfect-Authentication
//
//  Created by Jonathan Guthrie on 2017-01-23.
//
//

import PerfectHTTP
import TurnstileCrypto
import OAuth2
import PerfectSession

class Handlers {

	static func main(data: [String:Any]) throws -> RequestHandler {
		return {
			request, response in
			var context: [String : Any] = ["sessionID": request.session?.token ?? ""]

			if let i = request.session?.userid { context["userID"] = i }
			if let i = request.session?.data["loginType"] { context["loginType"] = i }
			if let i = request.session?.data["accessToken"] { context["accessToken"] = i }
			if let i = request.session?.data["firstName"] { context["firstName"] = i }
			if let i = request.session?.data["lastName"] { context["lastName"] = i }
			if let i = request.session?.data["picture"] { context["picture"] = i }

			response.render(template: "templates/index", context: context)
		}
	}

	public static func logout(data: [String:Any]) throws -> RequestHandler {
		return {
			request, response in
			MemorySessions.destroy(token: request.session?.token ?? "")
			request.session?.token = ""
			response.redirect(path: "/")
		}
	}

}
