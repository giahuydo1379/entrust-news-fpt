@extends('admin.layout.index')

@section('content')
 <div id="content-container">
        <!--Page Title-->
        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
        <div id="page-title">
          
        </div>
            <div id="page-content">

                <div class="panel">
                    <div class="panel-body">
                        <div class="row mar-top">


              

					<h1>Hello anh ky thuat heheh</h1>
				
					@if ($message = Session::get('success'))
							<div class="alert alert-success">
								<p>{{ $message }}</p>
							</div>
						@endif
			
                </div>
                    </div>
                </div>  
     
   </div>     
</div>   
@endsection