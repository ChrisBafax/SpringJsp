package it.nttdata.corso.springjsp.business.interfaces;

import it.nttdata.corso.springjsp.model.WebSiteInfo;
import org.springframework.dao.DataAccessException;

public interface WebSiteInfoBO {

    WebSiteInfo getWebSiteInfo() throws DataAccessException;
}
