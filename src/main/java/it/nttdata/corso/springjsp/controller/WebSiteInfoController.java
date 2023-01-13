package it.nttdata.corso.springjsp.controller;

import it.nttdata.corso.springjsp.business.interfaces.WebSiteInfoBO;
import it.nttdata.corso.springjsp.model.WebSiteInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebSiteInfoController {

    @Autowired
    WebSiteInfoBO webSiteInfoBO;

    @GetMapping(path = {"/", "/index", "/home"})
    public ModelAndView home() throws Exception {
        WebSiteInfo webSiteInfo = webSiteInfoBO.getWebSiteInfo();
        return new ModelAndView("/jsp/index.jsp",
                "Info", webSiteInfo);
    }

    @GetMapping(path = {"/dettagli"})
    public ModelAndView dettagli() throws Exception {
        return new ModelAndView("/jsp/dettagli.jsp");
    }
}
