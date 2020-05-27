package org.jeecg.modules.system.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.jeecg.modules.system.entity.SysCategory;
import org.jeecg.modules.system.model.TreeSelectModel;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * 分类字典
 */
public interface SysCategoryMapper extends BaseMapper<SysCategory> {
	
	/**
	 * 根据父级ID查询树节点数据
	 */
	public List<TreeSelectModel> queryListByPid(@Param("pid")  String pid,@Param("query") Map<String, String> query);

	@Select("SELECT ID FROM sys_category WHERE CODE = #{code,jdbcType=VARCHAR}")
	public String queryIdByCode(@Param("code")  String code);
	

}
