<%-- 
  Date: 2016/06/26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <TITLE>结算页面</TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8"/>
    <link href="style1.css" rel="stylesheet" type="text/css"/>
    <link href="by_car.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="jquery1.4.2.min.js"></script>
    <script type="text/javascript" src="MyCart.js"></script>
    <script>
        var totalMoney = 0;
    </script>

</HEAD>

<BODY>
<div class="b_main">
    <div class="b_nav b_nav2">
        <ul>
            <li><a href="javascript://">1.查看购物车</a></li>
            <li><a href="javascript://">2.填写信息/提交订单</a></li>
            <li><a href="javascript://">3.成功提交订单</a></li>
        </ul>
    </div>
    <div class="tx_main">
        <div class="tx_mian_ji">
            <div class="tx_main_list">收货人信息：</div>
            <div id="souhuo" class="tx_xinxi">
                <table cellspacing="0" cellpadding="0" width="100%">
                    <tbody>
                    <tr>
                        <td width="110px" class="tx_left"><span>*</span>收货人：</td>
                        <td width="620px"><input type="text" style="width:100px;height:22px;" class="textbox"
                                                 id="receiverName"></td>
                    </tr>
                    <tr>
                        <td width="110px" class="tx_left"><span>*</span>收货地址：</td>
                        <td width="620px"><input type="text" style="width:385px;height:22px;" title="详细地址：西二101"
                                                 value="" class="textbox" id="address"></td>
                    </tr>
                    <tr>
                        <td width="110px" class="tx_left"><span>*</span>手机：</td>
                        <td width="620px"><input type="text" style="width:136px;height:22px;" class="textbox"
                                                 id="mobile"></td>
                    </tr>

                    <tr>
                        <td class="tx_left" width="110px"></td>
                        <td width="620px"><input name="" type="button" class="tx_botton1" onclick="saveAddress()"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <script>
                MyCart.getAddress();
            </script>
        </div>


        <div class="tx_mian_ou">
            <div class="tx_main_list">付款方式：<span></span></div>
            <div class="tx_fukuan">

                <p>网上银行及信用卡支付&mdash;&mdash;支持以下银行：(网上银行支付限额列表&gt;&gt;信用卡大额支付限额列表&gt;&gt;)</p>

                <div class="tx_zhifu">
                    <ul>
                        <li>
                            <dl>
                                <dt>
                                    <input type="radio" checked="" value="1" name="payType">
                                </dt>
                                <dd><img width="100" height="38" src="images/5.jpg"></dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt>
                                    <input type="radio" value="2" name="payType">
                                </dt>
                                <dd><img width="120" height="50" src="images/7.jpg"></dd>
                            </dl>
                        </li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="tx_mian_ji">
            <div class="tx_main_list">商品清单：</div>
            <div class="tx_shangdan">
                <table cellspacing="0" cellpadding="0" width="889px">
                    <tbody>
                    <tr>
                        <th width="13%">商品</th>
                        <th width="28%">名称</th>
                        <th width="13%">单价（元）</th>
                        <th width="10%">数量</th>
                        <th width="14%">小计（元）</th>
                    </tr>

                    <tr>

                        <td><a class="blue" target="_blank" href="productDetail.html"><img width="74" height="74"
                                                                                           src="images/noimg.gif"></a>&nbsp;
                        </td>
                        <td><span><a class="blue" target="_blank" href="productDetail.html">纤丝鸟棉薄款内衣</a></span></td>
                        <td>￥28</td>
                        <td>1</td>
                        <td>
                            <script>var sumPrice = accMul(28, 1);
                            document.write("￥" + sumPrice);
                            totalMoney = accAdd(totalMoney, sumPrice);</script>
                        </td>
                    </tr>
                    <tr>

                        <td><a class="blue" target="_blank" href="productDetail.html"><img width="74" height="74"
                                                                                           src="images/noimg.gif"></a>&nbsp;
                        </td>
                        <td><span><a class="blue" target="_blank" href="productDetail.html">纤丝鸟棉薄款内衣</a></span></td>
                        <td>￥28</td>
                        <td>2</td>
                        <td>
                            <script>var sumPrice = accMul(28, 2);
                            document.write("￥" + sumPrice);
                            totalMoney = accAdd(totalMoney, sumPrice);</script>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="6" style="text-align:right;height:30px;padding-right:10px;"><a
                                href="car.html"><font color="green">返回修改购物车</font></a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>


        <div class="tx_mian_ou">
            <div class="tx_main_list">订单备注：<span></span></div>
            <div class="tx_beizhu">
                <p>声明：备注中有关收货人信息、支付方式、配送方式、发票信息等购买要求一律以上面的选择为准，备注无效。</p>
                <textarea style="height:60px;width:800px;margin:0" rows="3" cols="60" id="fuyan"></textarea>
            </div>
        </div>

        <div class="tx_mian_ji">
            <div class="tx_main_list2">结算信息：</div>
            <div class="tx_jiesuan">
                <!--
                <div class="tx_jiesuan_01" style=""><span id="money1">商品金额：0.00元-优惠：0元+运费：0元</span></div>
                -->
                <div class="tx_jiesuan_02"><p>应付总额：<span id="totalMoney">¥0.00</span></p></div>
                <div class="tx_question"><font class="hongline">请输入计算结果(阿拉伯数字如0123)</font>&nbsp;</div>

                <div class="tx_question">
                    <p>
                        提问：<img id="vrimage" style="vertical-align:middle" src="images/vrImage.jpg?ptype=cal"><span><a
                            onclick="javascript:genBuyCode();" href="javascript:void(0)">换一题</a></span> 回答：<input
                            type="text" style="width:36px;" class="textbox" maxlength="3" id="scode"><font
                            color="red">*</font>
                    </p>
                </div>
            </div>
        </div>

        <div>
            <input type="hidden" id="addressId">

            <p style="padding-left:99px;"><span style="color:green" id="suc"></span></p>

            <div id="btnDiv" class="tx_jiesuan_03"><a href="zhifu.html"><input type="button" value="支付"
                                                                               onclick="submitOrder()" name=""></a>
            </div>
        </div>
    </div>
</div>
</BODY>
</HTML>
<script type="text/javascript">
    $("#money1").html('商品金额：' + totalMoney + '元-优惠：0元+运费：0元');
    $("#totalMoney").html('&yen;' + totalMoney);
    function submitOrder() {
        MyCart.createOrder();
    }

    function chgProvinces(sp, sc, sa) {
        getCitys(sc, sp);
        getAreas(sa, sc);
        var p = $('#province option:selected').text();
        var c = $('#city option:selected').text();
        var a = $('#district option:selected').text();
        $('#addr').html(p + c + a);
    }

    function chgCitys(sc, sa) {
        getAreas(sa, sc);
        var p = $('#province option:selected').text();
        var c = $('#city option:selected').text();
        var a = $('#district option:selected').text();
        $('#addr').html(p + c + a);
    }

    function setAddr() {
        var p = $('#province option:selected').text();
        var c = $('#city option:selected').text();
        var a = $('#district option:selected').text();
        $('#addr').html(p + c + a);
    }

    function unitName(type) {
        if (type == 1) {
            $("#unitName").css("display", "none");
        } else if (type == 2) {
            $("#unitName").css("display", "");
        }
    }
</script>
