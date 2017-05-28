package mz.org.fgh.mentoring.core.tutortutored.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import mz.co.mozview.frameworks.core.exception.BusinessException;
import mz.co.mozview.frameworks.core.service.AbstractService;
import mz.co.mozview.frameworks.core.webservices.model.UserContext;
import mz.org.fgh.mentoring.core.tutortutored.dao.TutorTutoredDao;
import mz.org.fgh.mentoring.core.tutortutored.model.TutorTudored;

/**
 * @author Eusebio Jose Maposse
 *
 */
@Service(TutorTutoredService.NAME)
public class TutorTutoredServiceImpl extends AbstractService implements TutorTutoredService {

	@Inject
	private TutorTutoredDao tutotTutoredDao;

	@Override
	public TutorTudored createTutorTutored(UserContext userContext, TutorTudored tutorTudored)
			throws BusinessException {
		return tutotTutoredDao.create(userContext.getId(), tutorTudored);
	}

	@Override
	public TutorTudored updateTutorTutored(UserContext userContext, TutorTudored tutorTudored)
			throws BusinessException {
		return tutotTutoredDao.update(userContext.getId(), tutorTudored);
	}

}
