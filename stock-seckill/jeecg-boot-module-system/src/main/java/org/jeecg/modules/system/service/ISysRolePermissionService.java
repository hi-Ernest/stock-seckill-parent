package org.jeecg.modules.system.service;

import org.jeecg.modules.system.entity.SysRolePermission;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 角色权限表 服务类
 */
public interface ISysRolePermissionService extends IService<SysRolePermission> {
	
	/**
	 * 保存授权/先删后增
	 */
	void saveRolePermission(String roleId,String permissionIds);
	
	/**
	 * 保存授权 将上次的权限和这次作比较 差异处理提高效率
	 */
	void saveRolePermission(String roleId,String permissionIds,String lastPermissionIds);

}
