package com.kukoo.project.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kukoo.project.model.ProjectModel;


/**
 * 项目信息Mapper
 * 对应表名tt_project
 * @author sizhongyuan
 * @since 2018-03-25 20:57:06
 * */
public interface ProjectMapper {
	
	/**
	 * 根据id获取项目信息对象
	 * @param id 项目信息主键ID
	 * @return ProjectModel 项目信息对象
	 */
	public ProjectModel queryProjectModelById(@Param("id") String id);

	/**
	 * 保存项目信息对象
	 * @param projectModel 项目信息对象
	 */
	public void saveProjectModel(ProjectModel projectModel);
	
	/**
	 * 根据 条件 查询项目信息对象
	 * @param conditions 查询条件sql
	 * @return List<ProjectModel> 项目信息对象集合
	 */
	public List<ProjectModel> queryProjectModel(String conditions);
	
	/**
	 * 根据id删除项目信息对象
	 * @param id 项目信息主键ID
	 */
	public void deleteProjectModel(String id); 
	
}
