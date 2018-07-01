@extends('admin.layout.index')
 @section('content')
 <script src="admin_asset/dist/js/extra.js"></script>
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	<div id="page-head">

		<!--Page Title-->
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<div id="page-title">
			<h1 class="page-header text-overflow">Trang chủ</h1>
		</div>
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<!--End page title-->


		<!--Breadcrumb-->
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<!--End breadcrumb-->

	</div>


	<!--Fixedbar-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->

	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End Fixedbar-->

	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
				
					
								<h1>Chào {{ Auth::user()->name }}</h1>
								<div class="panel panel-bordered panel-primary">
					                <div class="panel-heading">
									
					                    <h3 class="panel-title">Lịch</h3>
					                </div>
					                <div class="panel-body">
					                    <p>Hôm nay là: {{ getWeekDay() }}, Ngày {{ date('d/m/Y') }}.</p>
											<p>Thời gian hiện tại: <span id="timestamp"></span></p>
					                </div>
					            </div>
								
								<div class="clearfix"></div>
						


	</div>
	<!--===================================================-->
	<!--End page content-->

</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->

<script>
$(document).ready(function(){
	function timestamp(){
		$.ajax({
			url: 'timestamp',
			type: 'GET',
			success:function(data){
				$('#timestamp').html(data);
			}
		});
	}
}
</script>
@endsection