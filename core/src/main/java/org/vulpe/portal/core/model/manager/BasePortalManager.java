package org.vulpe.portal.core.model.manager;

import org.vulpe.model.annotations.SkipManager;
import org.vulpe.model.services.manager.impl.VulpeBaseManager;
import org.vulpe.portal.core.model.dao.BasePortalDAO;
import org.vulpe.portal.core.model.entity.BasePortal;

/**
 * Manager implementation of BasePortal
 */
@SkipManager
public class BasePortalManager<ENTITY extends BasePortal, DAO extends BasePortalDAO<ENTITY>> extends VulpeBaseManager<ENTITY, java.lang.Long, DAO> {

}
