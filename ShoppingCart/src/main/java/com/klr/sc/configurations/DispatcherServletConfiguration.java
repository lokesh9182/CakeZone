package com.klr.sc.configurations;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServletConfiguration extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		Class[] configClasses= {ConfigurationClass.class};
		return configClasses;
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		String[] mappings= {"/sc.com/*"};
		System.out.println("Dispatcher Servlet");
		return mappings;
	}

}
