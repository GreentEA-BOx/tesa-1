package tesa.palace.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import tesa.palace.bean.Pa_Worker;
import tesa.palace.dao.PalaceDao;

@Service
public class PalaceService {

	@Inject
	private PalaceDao dao;
	
	 public List<Map<String, Object>> sel_worker() {
		 return dao.sel_worker();
	 }
	 
	 public List<Map<String, Object>> sel_reserv(){
		 return dao.sel_reserv();
	 }
	 }
