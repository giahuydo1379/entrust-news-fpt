<footer>
            <!DOCTYPE html>
<div class="col-md-12 footer_top">
    <div class="container">
        <div class="col-md-12 row box-bottom">
            <div class="col-md-6">
                                        <div class="col-md-4 col-xs-4 bottom-item">
                            <span class="bottom-title">chính sách</span>
                                                            <ul>
                                                                            <li class="item-chinhsachbaomat">
                                            <a target="_self" href="/quy-dinh/chinh-sach-bao-mat-thong-tin--12.html">Chính sách bảo mật</a>
                                        </li>
                                                                            <li class="item-dieukhoansudung">
                                            <a target="_self" href="/quy-dinh/dieu-khoan-su-dung-1.html">Điều khoản sử dụng</a>
                                        </li>
                                                                    </ul>
                                                        </div>
                                                <div class="col-md-4 col-xs-4 bottom-item">
                            <span class="bottom-title">Hỗ trợ</span>
                                                            <ul>
                                                                            <li class="item-hotrokythuat">
                                            <a target="_self" href="/ho-tro-ky-thuat.html">hỗ trợ kỹ thuật</a>
                                        </li>
                                                                            <li class="item-hoidap">
                                            <a target="_self" href="/hoi-dap.html">hỏi đáp</a>
                                        </li>
                                                                            <li class="item-huongdanthanhtoan">
                                            <a target="_blank" href="/hoi-dap/huong-dan-thanh-toan/huong-dan-thanh-toan-116.html">Hướng dẫn thanh toán</a>
                                        </li>
                                                                    </ul>
                                                        </div>
                                                <div class="col-md-4 col-xs-4 bottom-item">
                            <span class="bottom-title">Connect</span>
                                                            <ul>
                                                                            <li class="item-twitter">
                                            <a target="_blank" href="https://twitter.com/">Twitter</a>
                                        </li>
                                                                            <li class="item-facebook">
                                            <a target="_blank" href="https://www.facebook.com/">Facebook</a>
                                        </li>
                                                                            <li class="item-googleplus">
                                            <a target="_blank" href="https://plus.google.com/">google plus</a>
                                        </li>
                                                                            <li class="item-youtube">
                                            <a target="_blank" href="https://www.youtube.com/">Youtube</a>
                                        </li>
                                                                    </ul>
                                                        </div>
                                    </div>
            <div class="col-md-6 col-xs-12 bottom-item bottom-item-quote require_price">
                <span class="bottom-title">YÊU CẦU BÁO GIÁ</span>
                <div class="row item-quote">
                    <!--<form  name="quote"> -->
                        <div class="col-md-12 col-xs-12">
                            <div class="col-md-7 col-xs-7">
                                <input id="text-sendprice" value="" type="text" class="input-quote"  placeholder="Email"/>
                            </div>
                            <div class="col-md-5 col-xs-5">
                                <input class="input-resize fix-margin-input send_mail" id="btn-sendmail" type="button" value="SEND" />
                            </div>
                        </div>
                    <!--</form>-->
                </div>
				<div class="modal fade" id="Modal_Successful" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                <h4 class="modal-title" id="Successful_Title">Thông báo</h4>
            </div>
            <div id="Successful_Body" class="modal-body" style="font-size: 15px; text-transform: none;">

            </div>
            <div class="modal-footer">
                <button id="Successful_Onclick" data-dismiss="modal" type="button" class="btn btn-primary"> Xác nhận </button>
            </div>
        </div>
    </div>
</div>
<div style="z-index: 1055;" id="Modal_Loading" data-backdrop="static" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 296px;">
        <img src="/themes/frontend/img/loading.gif">
    </div>
</div>
<script type="text/javascript">
    function centerModal() {
        $(this).css('display', 'block');
        var $dialog = $(this).find(".modal-dialog");
        var offset = ($(window).height() - $dialog.height()) / 2;
        $dialog.css("margin-top", offset);
    }
    $('.modal').on('show.bs.modal', centerModal);
    $("#text-sendprice").keyup(function (event) {
        if (event.keyCode == 13) {
            sendmail();
        }
    });
    $('#btn-sendmail').click(function () {
        sendmail();
    });
    function sendmail() {
        var email = $('#text-sendprice').val();
        var reg = /^[0-9A-Za-z]+[.0-9A-Za-z_]*@[\w\d.]+(\.\w{2,})$/;
        if (email == "")
        {
            $('#Successful_Body').html('Vui lòng nhập email trước khi send!');
            $('#Modal_Successful').modal("show");
        } else {
            if (!reg.test(email)) {
                $('#Successful_Body').html('Email không đúng định dạng');
                $('#Modal_Successful').modal("show");
            } else {
                //send mail cho khách hàng
                $('#Modal_Loading').modal("show");
                $.ajax({
                    type: "POST",
                    url: "/SendMail/SendPrice.html",
                    data: "email=" + email + "&&+csrf_token=ddbd967a5ade43e909ecb8417d1ef52ee79c070c",
                    dataType: "json",
                    success: function (data) {
                        if (data.state) {
                            $('#text-sendprice').val('');
                            $('#Modal_Loading').modal("hide");
                            $('#Successful_Body').html('Chúng tôi đã gửi thông tin bảng giá cho bạn, Vui lòng kiểm tra email.');
                            $('#Modal_Successful').modal("show");
                        } else {
                            $('#Modal_Loading').modal("hide");
                            if (data.error.code == 2) {
                                //$('#text-sendprice').val('');
                                $('#Successful_Body').html('Bạn đã thực hiện tích năng này quá nhiều lần, Vui lòng chờ đến lượt kế tiếp.');
                            } else {
                                $('#Successful_Body').html('Hệ thống đang bận vui lòng thử lại sau hoặc liên hệ bộ phận hỗ trợ.');
                            }
                            $('#Modal_Successful').modal("show");
                        }
                    }
                }).fail(function (e, textStatus, errorThrown) {
                    $('#Modal_Loading').modal("hide");
                    $('#Successful_Body').html('Hệ thống đang bận vui lòng thử lại sau hoặc liên hệ bộ phận hỗ trợ.');
                    $('#Modal_Successful').modal("show");
                });
            }
        }

    }
</script>
            </div>
        </div>
    </div>   
</div>
<div class="col-xs-12 footer_bottom">
    <div class="container">
        <div class="col-xs-2  col-md-2 logo-footer ">
        </div>
        <div class="col-xs-6 col-md-6 info-text">
            <p>Cơ quan chủ quản: Công ty Cổ Phần Viễn Thông FPT</p>
            <p>Trụ sở: Tầng 1, Tòa nhà FPT, phố Duy Tân, P.Dịch Vọng, Q.Cầu Giấy, TP Hà Nội</p>
            <p>Tel: (84-4) 7300 2222 Fax: (84-4)73008889</p>
            <p>Giấy phép số: 267/GP-TTĐT cấp ngày 23/01/2013</p>
            <p>Chịu trách nhiệm: P.TGĐ Vũ Thị Mai Hương</p>
        </div> 
        <div class="col-xs-4 col-md-4 copyright-text pull-right">
            <p>Copyright 2015 Bản quyền thuộc về FPT Telecom</p>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(window).load(function(){
        $("div#is-homepage").each(function(){
            $("#top_menu>li:first-child>a").addClass("active");
        });
    });
</script>        </footer>
