package cn.t.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.t.dao.PositionMapper;
import cn.t.entity.Position;
import cn.t.serviceI.PositionServiceI;

@Service("PositionService")
public class PositionServiceImpl implements PositionServiceI {
	
	public PositionMapper positionmapper;
	
	
	public PositionMapper getPositionmapper() {
		return positionmapper;
	}
	@Autowired
	public void setPositionmapper(PositionMapper positionmapper) {
		this.positionmapper = positionmapper;
	}

	@Override
	public Position getPosByPosname(String posname) {
		return null;
	}

	@Override
	public List<Position> getAllPos() {
		
		return positionmapper.selectAllPos();
	}

	@Override
	public List<Position> getPosByCom() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Position> getPosByDept() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Position> getPosByPlace() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Position> getByPosnameOrCompanyOrDeptOrPlace(Map param) {
		return positionmapper.selectByPosnameOrCompanyOrDeptOrPlace(param);
	}
	@Override
	public int insertPos(Position pos) {
		
		return positionmapper.insertSelective(pos);
	}
	@Override
	public int delPos(String posnum) {
		return positionmapper.deleteByPrimaryKey(posnum);
	}
	@Override
	public int editPos(Position pos) {
		return positionmapper.updateByPrimaryKeySelective(pos);
	}
	@Override
	public Position getPosByPosnum(String posnum) {
		return positionmapper.selectByPrimaryKey(posnum);
	}

}
