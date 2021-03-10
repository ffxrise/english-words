<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/7
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>上传</title>
    <%@ include file="common.jsp" %>
</head>
<body>
<div style="padding: 20px;">
    <form id="main-form" method="post" enctype="multipart/form-data" novalidate>
        <%--<div style="margin-bottom: 20px">
            <label>
                <input class="easyui-filebox"
                       id="file"
                       name="file"
                       iconWidth="28"
                       prompt="请选择文件"
                       data-options="label:'文件:',required:true,accept:'image/jpeg,image/png,image/gif'"
                       missingMessage="不能为空"
                       style="width: 300px; height: 34px; padding: 10px;">
            </label>
        </div>--%>
            <div style="margin-bottom: 20px">
                <label>
                    <select name="level" id="level" type="text" class="easyui-combobox" data-options="label:'等级:',editable:false,valueField:'id', textField:'text'" style="width: 300px; height: 34px; padding: 10px;">

                    </select>
                </label>
            </div>
        <div style="margin-bottom: 20px">
            <label>
                <input class="easyui-textbox"
                       id="word"
                       name="word"
                       prompt="apple" iconWidth="28"
                       data-options="label:'单词:',required:true"
                       missingMessage="不能为空"
                       style="width: 300px; height: 34px; padding: 10px;">
            </label>
        </div>
        <div style="margin-bottom: 20px">
            <label>
                <input class="easyui-textbox"
                       id="mean"
                       name="mean"
                       prompt="苹果" iconWidth="28"
                       data-options="label:'系列:',required:true"
                       missingMessage="不能为空"
                       style="width: 300px; height: 34px; padding: 10px;">
            </label>
        </div>
        <div style="margin-bottom: 20px">
            <label>
                <input class="easyui-textbox"
                       id="apeech"
                       name="apeech"
                       prompt="adj." iconWidth="28"
                       data-options="label:'词性:',required:true"
                       missingMessage="不能为空"
                       style="width: 300px; height: 34px; padding: 10px;">
            </label>
        </div>
        <div style="margin-bottom: 20px">
            <label>
                <input class="easyui-textbox"
                       id="root"
                       name="root"
                       prompt="ful" iconWidth="28"
                       data-options="label:'词根词缀:'"
                       style="width: 300px; height: 34px; padding: 10px;">
            </label>
        </div>
        <div style="margin-bottom: 20px">

        </div>
        <div style="margin-bottom: 20px">

        </div>
    </form>
    <div style="text-align: center; padding: 5px 0">
        <a href="javascript:void(0)" id="submit-btn"
           class="easyui-linkbutton" style="width: 80px">提交</a>
        <a href="javascript:void(0)" id="reset-btn" class="easyui-linkbutton"
           onclick="clearForm()" style="width: 80px">重置</a>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $.ajax({
            url:'${pageContext.request.contextPath}/level/getAll',
            type:'get',
            success:function(res){
                if(res.code===0){
                    var options = res.data;
                    var data = [];
                    $.each(options,function (i,value) {
                        data.push({"text":value.levelName,"id":value.level});
                    });
                    $('#level').combobox("loadData",data);
                }else{
                    var showmsg = res.msg;
                    $.messager.show({
                        title: '提示',
                        msg: showmsg
                    });
                }
            }
        });

        $('#submit-btn').click(function () {
            var data = new FormData($("#main-form")[0]);

            if ($("#main-form").form('validate')) {
                MaskUtil.mask();
                $.ajax({
                    url: '${pageContext.request.contextPath}/doupload',
                    type: 'post',
                    cache: false,//cache设置为false，上传文件不需要缓存
                    processData: false,//processData设置为false。因为data值是FormData对象，不需要对数据做处理
                    contentType: false,//contentType设置为false。因为是由<form>表单构造的FormData对象，且已经声明了属性enctype="multipart/form-data"，所以这里设置为false
                    data: data,
                    error: function () {
                        MaskUtil.unmask();
                        $.messager.alert('提示', '请求失败!')
                    },
                    success: function (res) {
                        MaskUtil.unmask();
                        var showmsg = res.msg;
                        if (res.code === 0) {
                            $.messager.show({
                                title: '提示',
                                msg: showmsg
                            });
                            $('#main-form').form('clear');
                        } else {
                            $.messager.show({
                                title: '提示',
                                msg: showmsg
                            });
                        }
                    }
                });
            }
        });

        $('#reset-btn').click(function () {
            $('#main-form').form('clear');
        });
    });


</script>
</body>
</html>
