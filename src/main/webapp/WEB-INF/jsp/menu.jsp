<%@include file="header.jsp"%>
        <!-- page content -->
<div class="right_col" role="main">
          <div class="">
            <div class="page-title">


              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" title="请输入单号,客户,编号"  placeholder="请输入......">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">搜素</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>



            <div class="clearfix"></div>

            <div class="row">

              <div class="clearfix"></div>

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>菜单列表 <span style="display: inline-block;margin-left: 15%;" >
                      <button type="button" class="btn btn-primary">添加</button>
                      <button type="button" class="btn btn-primary">删除</button>
                      <button type="button" class="btn btn-primary">审核</button>
                      <button type="button" class="btn btn-primary">反审</button>
                      <button type="button" class="btn btn-primary">导出</button>
                    </span></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                        <tr class="headings">
                          <th>
                            <input type="checkbox" id="check-all">
                          </th>
                          <th class="column-title">编号 </th>
                          <th class="column-title">日期 </th>
                          <th class="column-title">单号 </th>
                          <th class="column-title">用户 </th>
                          <th class="column-title">状态 </th>
                          <th class="column-title">金额 </th>
                          <th class="column-title no-link last"><span class="nobr">产品名称</span>
                          </th>
                          <th class="bulk-actions" colspan="7">
                            <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                          </th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr class="even pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000040</td>
                          <td class=" ">May 23, 2014 11:47:56 PM </td>
                          <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i></td>
                          <td class=" ">John Blank L</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$7.45</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>
                        <tr class="odd pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000039</td>
                          <td class=" ">May 23, 2014 11:30:12 PM</td>
                          <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                          </td>
                          <td class=" ">John Blank L</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$741.20</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>
                        <tr class="even pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000038</td>
                          <td class=" ">May 24, 2014 10:55:33 PM</td>
                          <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                          </td>
                          <td class=" ">Mike Smith</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$432.26</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>
                        <tr class="odd pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000037</td>
                          <td class=" ">May 24, 2014 10:52:44 PM</td>
                          <td class=" ">121000204</td>
                          <td class=" ">Mike Smith</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$333.21</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>
                        <tr class="even pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000040</td>
                          <td class=" ">May 24, 2014 11:47:56 PM </td>
                          <td class=" ">121000210</td>
                          <td class=" ">John Blank L</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$7.45</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>
                        <tr class="odd pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000039</td>
                          <td class=" ">May 26, 2014 11:30:12 PM</td>
                          <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                          </td>
                          <td class=" ">John Blank L</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$741.20</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>
                        <tr class="even pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000038</td>
                          <td class=" ">May 26, 2014 10:55:33 PM</td>
                          <td class=" ">121000203</td>
                          <td class=" ">Mike Smith</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$432.26</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>
                        <tr class="odd pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000037</td>
                          <td class=" ">May 26, 2014 10:52:44 PM</td>
                          <td class=" ">121000204</td>
                          <td class=" ">Mike Smith</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$333.21</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>

                        <tr class="even pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000040</td>
                          <td class=" ">May 27, 2014 11:47:56 PM </td>
                          <td class=" ">121000210</td>
                          <td class=" ">John Blank L</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$7.45</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>
                        <tr class="odd pointer">
                          <td class="a-center ">
                            <input type="checkbox" name="table_records">
                          </td>
                          <td class=" ">121000039</td>
                          <td class=" ">May 28, 2014 11:30:12 PM</td>
                          <td class=" ">121000208</td>
                          <td class=" ">John Blank L</td>
                          <td class=" ">Paid</td>
                          <td class="a-right a-right ">$741.20</td>
                          <td class=" last"><a href="#">View</a>
                          </td>
                        </tr>
                        </tbody>
                      </table>
                      <div style="display: inline-block;">
                        <span><a href="#">首页</a></span>
                        <span><a href="#">下页</a></span>
                        <span><a href="#">上页</a></span>
                        <span><a href="#">末页</a></span>
                      </div>
                      <audio controls="controls" loop autoplay="autoplay" >
                        <source src="${pageContext.request.contextPath}/mp3/myesp.mp3" type="audio/mp3">
                        <source src="${pageContext.request.contextPath}/mp3/myesp.mp3" type="audio/ogg">
                      </audio>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

<%@include file="footer.jsp"%>
<script src="../static/js/public.js"></script>
<script type="text/javascript" charset="UTF-8">

    /*$(document).ready(function(){

    });*/
    var vm = new Vue({
        el:'#showDate',
        data:{
            active:'NULL',
            items:{
            },
        },
        methods: {
            makeActive: function(item, index){
                this.active = item.NODE_NAME;
                for(var i=0; i<this.items.length;i++){
                    this.items[i].active = false;
                }
                this.items[index].active = true;
            }
        },
        mounted: function () {
            this.$nextTick(function () {
                var self = this;
                axios.get('http://localhost:8080/login.html/getvue')
                    .then(function(res){
                        alert(res.data);
                        console.log(res.data);
                        for(var i=0;i<res.data.XML.result_Select_data.Data.Row.length;i++){
                            res.data.XML.result_Select_data.Data.Row[i].active = false;
                        };
                        //this.$set(this, 'itms', res.data.XML.result_Select_data.Data.Row)
                        self.items = res.data.XML.result_Select_data.Data.Row
                    })
                    .catch(function(err){

                        console.log(err);
                    })
            });
        }

    });
</script>
