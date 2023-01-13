package it.nttdata.corso.springjsp.business.impl;

import it.nttdata.corso.springjsp.business.interfaces.WebSiteInfoBO;
import it.nttdata.corso.springjsp.model.WebSiteInfo;
import it.nttdata.corso.springjsp.repository.WebSiteInfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WebSiteInfoBOImpl implements WebSiteInfoBO {

    @Autowired
    WebSiteInfoRepository webSiteInfoRepository;

    @Override
    public WebSiteInfo getWebSiteInfo() throws DataAccessException {
        return webSiteInfoRepository.findFirstByOrderByIdDesc();
    }

    @Override
    public List<WebSiteInfo> getAllWebSiteInfo() throws DataAccessException {
        return webSiteInfoRepository.findAll();
    }

    @Override
    public void insertWebSiteInfo(WebSiteInfo webSiteInfo) throws DataAccessException {
        webSiteInfoRepository.save(webSiteInfo);
    }

    @Override
    public void deleteWebSiteInfo(long id) throws DataAccessException {
        webSiteInfoRepository.deleteById(id);
    }

    public void updateWebSiteInfo(WebSiteInfo webSiteInfo) throws DataAccessException {
        // work in progress
    }
}
