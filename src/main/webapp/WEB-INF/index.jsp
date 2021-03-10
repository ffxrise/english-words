<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/7
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <%@ include file="common.jsp" %>
    <style>
        a {color: #d8ffff}
    </style>
</head>
<body class="easyui-layout"
      style="background:url('${pageContext.request.contextPath }/img/ssmbackground.jpg') no-repeat;background-size: 100%;">
<div style="margin:10px 0;"></div>
<div class="easyui-layout" style="width:90%;height:95%;margin:auto;">
    <div data-options="region:'north'" style="height:50px"></div>
    <div data-options="region:'south',split:true" style="height:50px;"></div>

    <div data-options="region:'west',split:true" title="导航" style="width:200px;">
        <div class="easyui-accordion" data-options="fit:true,border:false">
            <div title="资源管理" style="padding:10px;">
                <ul id="tt" class="easyui-tree">
                    <li>
                        <a id="upload" href="javascript:void(0)">上传</a>
                    </li>
<%--                    <li>--%>
<%--                        <a id="show" href="javascript:void(0)">图片列表</a>--%>
<%--                    </li>--%>
                </ul>
            </div>
        </div>
    </div>
    <div data-options="region:'center',title:'主面板区域',iconCls:'icon-ok'">
        <div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
        </div>
    </div>
</div>


</body>
<script type="text/javascript">
    $(function () {
        $('a').click(function () {
            var title = this.innerHTML;
            if ($('.easyui-tabs').tabs('exists', title))
                $('.easyui-tabs').tabs('select', title);
            else $('.easyui-tabs').tabs('add', {
                title: this.innerHTML,
                href: '${pageContext.request.contextPath}/' + $(this).attr('id'),
                closable: true
            });
        });
    });
</script>
</html>
