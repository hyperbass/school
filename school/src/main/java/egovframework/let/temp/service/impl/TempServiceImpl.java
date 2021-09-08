package egovframework.let.temp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.let.temp.service.TempService;
import egovframework.let.temp.service.TempVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;

@Service("tempService")
public class TempServiceImpl extends EgovAbstractServiceImpl implements TempService {

	@Resource(name = "propertiesService")
	protected EgovPropertyService propertyService;
	
	/* ibatis 
	@Resource(name = "tempDAO")
	private TempDAO tempDAO;
	
	@Override
	public TempVO selectTemp(TempVO vo) throws Exception {
		return tempDAO.selectTemp(vo);
	}
	*/
	
	// mybatis
	@Resource(name = "tempMapper")
	private TempMapper tempMapper;
		
	@Override
	public TempVO selectTemp(TempVO vo) throws Exception {
		return tempMapper.selectTemp(vo);
	}
	
	//insert 하면서 추가한거
	@Resource(name = "egovTempIdGnrService")
	private EgovIdGnrService idgenService;
	
	public String insertTemp(TempVO vo) throws Exception {
		String id = idgenService.getNextStringId();
		vo.setTempId(id);
		tempMapper.insertTemp(vo);
		
		return id;
	}
	
	//list
	public List<TempVO> listTemp() throws Exception {
		return tempMapper.listTemp();
	}
	
}
