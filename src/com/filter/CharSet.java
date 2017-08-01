package com.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/**
 * Created by euyer on 2017/4/13.
 */
public class CharSet implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req=(HttpServletRequest)request;
        HttpServletResponse resp=(HttpServletResponse)response;
        resp.setContentType("text/html;charset=utf-8");
        if("get".equals(req.getMethod())){
            req=new Requests(req);
        }else{
            req.setCharacterEncoding("utf-8");
        }
        chain.doFilter(request, response);
    }

    class Requests extends HttpServletRequestWrapper {

        public Requests(HttpServletRequest request) {
            super(request);
        }

        @Override
        public String getParameter(String name) {

            String value=super.getParameter(name);
            if(!"".equals(value) && value!=null){
                try {
                    value=new String(value.getBytes("ISO-8859-1"),"UTF-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
            return value;
        }

    }

    @Override
    public void destroy() {

    }
}
