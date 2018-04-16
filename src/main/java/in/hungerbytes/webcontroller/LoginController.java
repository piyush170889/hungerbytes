package in.hungerbytes.webcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginController {

		@RequestMapping(value = {"/home", "/"}, method = RequestMethod.GET)
		public ModelAndView login(
				@RequestParam(value = "error", required = false) String error,
				@RequestParam(value = "logout", required = false) String logout,
				HttpServletRequest request) {

			ModelAndView model = new ModelAndView();
			if (error != null) {
				model.addObject("error",
						getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
			}

			if (logout != null) {
				model.addObject("msg", "You've been logged out successfully.");
			}
			
//			model.addObject("uploadFileModel", new UploadFileWrapper());
			
			model.setViewName("login/login");

			return model;
		}
		
		
		/*@RequestMapping(value="/upload-file", method=RequestMethod.POST)
		public String uploadFile(@ModelAttribute("uploadFileModel") UploadFileWrapper request) {
			
			System.out.println("Email - " + request.getEmail());
			System.out.println("FileName - " + request.getUploadFile().getOriginalFilename());
			return "redirect:home";
		}*/
		
		
		// customize the error message
		private String getErrorMessage(HttpServletRequest request, String key) {

			Exception exception = (Exception) request.getSession()
					.getAttribute(key);

			String error = "";
			if (exception instanceof BadCredentialsException) {
				error = "Invalid username and password!";
			} else if (exception instanceof LockedException) {
				error = exception.getMessage();
			} else {
				error = "Invalid username and password!";
			}

			return error;
		}
		
		
		// for 403 access denied page
		@RequestMapping(value = "/403", method = RequestMethod.GET)
		public ModelAndView accesssDenied() {

			ModelAndView model = new ModelAndView();

			// check if user is login
			Authentication auth = SecurityContextHolder.getContext()
					.getAuthentication();
			if (!(auth instanceof AnonymousAuthenticationToken)) {
				UserDetails userDetail = (UserDetails) auth.getPrincipal();
				System.out.println(userDetail);

				model.addObject("username", userDetail.getUsername());

			}

			model.setViewName("error/403");
			return model;

		}
		
		
		@RequestMapping(value="/logout", method = RequestMethod.GET)
		public ModelAndView logoutPage (HttpServletRequest request, HttpServletResponse response) {
			ModelAndView model = new ModelAndView();
			
	
		    Authentication auth = SecurityContextHolder.getContext().getAuthentication();	
			model.addObject("username", auth.getName().toString());
		    if (auth != null){    
		        new SecurityContextLogoutHandler().logout(request, response, auth);
		    }
		    model.setViewName("login/login");
		    return  model;
		}
		
}
