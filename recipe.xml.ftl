<?xml version="1.0"?>
<recipe>
	<#if typeCls == "Dao">
		<instantiate from="src/app_package/db/Dao.kt.ftl"
					 to="${escapeXmlAttribute(srcOut)}/${className}Dao.kt" />
	</#if>
	<#if typeCls == "BaseDao">
		<instantiate from="src/app_package/db/BaseDao.kt.ftl"
					 to="${escapeXmlAttribute(srcOut)}/BaseDao.kt" />
<#--		<#if !(hasDependency('androidx.paging:paging-runtime-ktx:2.1.1'))>-->
<#--			<dependency mavenUrl="androidx.paging:paging-runtime-ktx:+"/>-->
<#--		</#if>-->
	</#if>
	<#if typeCls == "ViewModel">
		<instantiate from="src/app_package/ViewModel.kt.ftl"
					 to="${escapeXmlAttribute(srcOut)}/${className}ViewModel.kt" />
	</#if>
	<#if typeCls == "MainDB">
		<instantiate from="src/app_package/db/MainDB.kt.ftl"
					 to="${escapeXmlAttribute(srcOut)}/MainDB.kt" />
	</#if>
	<#if typeCls == "MainDB">
		<instantiate from="src/app_package/db/Executors.kt.ftl"
					 to="${escapeXmlAttribute(srcOut)}/Executors.kt" />
	</#if>
	<#if typeCls == "Model">
		<instantiate from="src/app_package/Model.kt.ftl"
					 to="${escapeXmlAttribute(srcOut)}/${className}.kt" />
	</#if>
	<#if typeCls == "PagedListAdapter">
		<instantiate from="src/app_package/PagedListAdapter.kt.ftl"
					 to="${escapeXmlAttribute(srcOut)}/${className}Adapter.kt" />
		<instantiate from="src/app_package/ViewHolder.kt.ftl"
	                   to="${escapeXmlAttribute(srcOut)}/${className}ViewHolder.kt" />
        </#if>

    </recipe>

    <#--	<instantiate from="src/app_package/Model.kt.ftl"-->
<#--                   to="${escapeXmlAttribute(srcOut)}/${className}.kt" />-->
<#--	<instantiate from="src/app_package/PagedListAdapter.kt.ftl"-->
<#--                   to="${escapeXmlAttribute(srcOut)}/${className}Adapter.kt" />-->
<#--	<instantiate from="src/app_package/ViewHolder.kt.ftl"-->
<#--                   to="${escapeXmlAttribute(srcOut)}/${className}ViewHolder.kt" />-->
<#--	<instantiate from="src/app_package/ViewModel.kt.ftl"-