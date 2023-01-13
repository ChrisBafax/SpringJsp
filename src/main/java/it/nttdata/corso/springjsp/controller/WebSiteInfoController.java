package it.nttdata.corso.springjsp.controller;

import it.nttdata.corso.springjsp.business.interfaces.WebSiteInfoBO;
import it.nttdata.corso.springjsp.model.WebSiteInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class WebSiteInfoController {

    @Autowired
    WebSiteInfoBO webSiteInfoBO;

    @GetMapping(path = {"/", "/index", "/home"})
    public ModelAndView home() {
        WebSiteInfo webSiteInfo = webSiteInfoBO.getWebSiteInfo();
        return new ModelAndView("/jsp/index.jsp",
                "Info", webSiteInfo);
    }

    @GetMapping("/dettagli")
    public ModelAndView dettagli() {
        List<WebSiteInfo> webSiteInfos = webSiteInfoBO.getAllWebSiteInfo();
        return new ModelAndView("/jsp/dettagli.jsp",
                "Infos", webSiteInfos);
    }

    @GetMapping("/createInfo")
    public ModelAndView createInfo() {
        return new ModelAndView("/jsp/createInfo.jsp");
    }

    @PostMapping("/createInfo")
    public ModelAndView insertInfo(@RequestParam String name, @RequestParam String description) {
        WebSiteInfo webSiteInfo = new WebSiteInfo();
        webSiteInfo.setName(name);
        webSiteInfo.setDescription(description);
        webSiteInfoBO.insertWebSiteInfo(webSiteInfo);
        return new ModelAndView("/jsp/createInfo.jsp", "operation", true);
    }

    @GetMapping("/deleteInfo")
    public ModelAndView deleteInfo() {
        return new ModelAndView("/jsp/deleteInfo.jsp");
    }

    @PostMapping("/deleteInfo")
    public ModelAndView deleteInfo(@RequestParam String id) {
        if(!id.isEmpty()) {
            try {
                long idL = Long.parseLong(id);
                webSiteInfoBO.deleteWebSiteInfo(idL);
                return new ModelAndView("/jsp/deleteInfo.jsp", "operation", true);
            }  catch (DataAccessException e) {
                return new ModelAndView("/jsp/deleteInfo.jsp", "operation", false);
            }
        } else {
            return new ModelAndView("/jsp/deleteInfo.jsp", "nullId", true);
        }
    }

    @GetMapping("/updateInfo")
    public ModelAndView updateInfo() {
        return new ModelAndView("/jsp/updateInfo.jsp");
    }

    @PostMapping("/updateInfo")
    public ModelAndView updateInfo(@RequestParam String id) {
        return new ModelAndView("/jsp/updateInfo.jsp");
    }
}
