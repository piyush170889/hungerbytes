package in.hungerbytes.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class BaseModuleInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		
		return new Class[] { BaseModuleConfiguration.class};
	}
	
	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		return null;
	}
	
	@Override
	protected String[] getServletMappings() {
		
		return new String[] { "/"};
	}
	
}
