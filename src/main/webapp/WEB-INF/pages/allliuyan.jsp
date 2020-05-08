<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>查看所有留言</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<body>
<div class="layui-fluid" style="margin-top: 40px;">
    <fieldset class="layui-elem-field layui-field-title">
        <legend style="font-size: 26px">所有留言信息</legend>
    </fieldset>
    <table id="allUser" lay-filter="user"></table>
</div>
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script>
    layui.use(['element', 'table'], function () {
        var element = layui.element,
            $ = layui.jquery,
            table = layui.table;

        var dt = table.render({
            elem: "#allUser",
            url: "/HouseRentalSystem/AllLiuyans",
            page: true,
            cols: [[
                {field: 'id', title: 'id', align: 'center'},
                {field: 'username', title: '用户名', align: 'center'},
                {field: 'content', title: '密码', align: 'center'},
                {field: 'createtime', title: '留言时间', align: 'center'},
                {title: '操作', align: 'center', toolbar: "#tools"}
            ]]
        });

        table.on('tool(user)', function (obj) {
            var data = obj.data;
            var layEvent = obj.event;
            var tr = obj.tr;
            var currPage = dt.config.page.curr;

            if (layEvent === 'delete') {
                layer.confirm('确认删除当前数据吗？', {icon: 5, shade: 0.1}, function (index) {
                    $.post("deleteLiuyan", {id: data.id}, function (success) {
                        if (success == "OK") {
                            obj.del();
                            dt.reload({
                                page: {curr: 1}
                            });
                            layer.msg("删除成功");
                        }
                    })
                });
            }
        });
    });
</script>
<script type="text/html" id="tools">
    <a class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">删除</a>
</script>
</body>
</html>