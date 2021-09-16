package com.laptrinhjavaweb.service.imp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.laptrinhjavaweb.constance.SystemContance;
import com.laptrinhjavaweb.service.ITokenAuthenticationService;
import com.laptrinhjavaweb.util.JWTUtil;

@Service
public class TokenAuthenticateService implements ITokenAuthenticationService {
	@Autowired
	JWTUtil JWTUtil;

	@Override
	public Authentication getAuthentication(HttpServletRequest request) {
		String token = this.getTokenFromHeader(request);
		String username = null;
		if (token != null) {
			username = this.JWTUtil.getUsernameFromToken(token);
			return username != null ? new PreAuthenticatedAuthenticationToken(username, "none") : null;
		}
		return null;
	}

	@Override
	public String getTokenFromHeader(HttpServletRequest request) {
		String headerValue = request.getHeader(SystemContance.AUTHORIZATION_KEY_IN_HEADER);
		if (headerValue != null) {
			// Token
			return StringUtils.trimAllWhitespace(headerValue.replace(SystemContance.TOKEN_PREFIX, ""));
		}
		return null;
	}

}
