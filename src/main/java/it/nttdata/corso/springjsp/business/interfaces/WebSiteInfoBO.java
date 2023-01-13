package it.nttdata.corso.springjsp.business.interfaces;

import it.nttdata.corso.springjsp.model.WebSiteInfo;
import org.springframework.dao.DataAccessException;

import java.util.List;

public interface WebSiteInfoBO {

    WebSiteInfo getWebSiteInfo() throws DataAccessException;

    List<WebSiteInfo> getAllWebSiteInfo() throws DataAccessException;

    void insertWebSiteInfo(WebSiteInfo webSiteInfo) throws DataAccessException;

    void deleteWebSiteInfo(long id) throws DataAccessException;

    void updateWebSiteInfo(WebSiteInfo webSiteInfo) throws DataAccessException;
}
