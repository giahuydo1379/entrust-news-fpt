@extends('admin.layout.index')

@section('content')

 <div id="content-container">
        <!--Page Title-->
        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
        <div id="page-title">
            <h1 class="page-header text-overflow">Danh sách người dùng</h1>
        </div>
            <div id="page-content">

                <div class="panel">
                    <div class="panel-body">
                        <div class="row mar-top">

                        	@if ($message = Session::get('success'))
								<div class="alert alert-success">
									<p>{{ $message }}</p>
								</div>
							@endif

                    <!-- Row selection (single row) -->
					<!--===================================================-->
					<div class="panel">
					    <div class="panel-heading">
					       
					    </div>
					    <div class="panel-body">
					        <table id="demo-dt-selection" class="table table-striped table-bordered" cellspacing="0" width="100%">
					            <thead>
									<tr align="center">
													<tr>
									<th>STT</th>
									<th>Tên </th>				
									<th>Hòm thư</th>
									<th>Vai trò</th>
									<th width="280px">Thực hiện</th>
								</tr>
							</thead>
					            <tbody>
					        
							       @foreach ($users  as $key => $user)
										<tr>
											<td>{{ ++$i }}</td>
											<td>{{ $user->name }}</td>
											<td>{{ $user->email }}</td>
											<td>
												@if(!empty($user->roles))
													@foreach($user->roles as $v)
														<label class="btn btn-success">{{ $v->display_name }}</label>
													@endforeach
												@endif
											</td>
											<td>
											
												<a class="btn btn-primary" href="{{ route('users.edit',$user->id) }}">Edit</a>


												 {!! Form::open( ['method' => 'DELETE','route' => ['users.destroy', $user->id], 'style' => 'display: inline', 'onSubmit' => 'return confirm("Bạn có chắc chắn muốn xóa?")']) !!}
										 	<button type="submit" class="btn btn-danger">
										Xóa
										 	</button> 
											 {!! Form::close() !!} 
												
<!-- 											
                                        <input type="hidden" value="{{ $user->id }}">
                                        <a href="#" class="btn btn-danger abc" data-backdrop="static" data-keyboard="false" data-toggle="modal" data-target="#myModal{{$user->id}}"><i class="fa fa-trash-o  fa-fw"></i>Xóa</a>
                                        
                                        <div  id="myModal{{$user->id}}" class="modal fade" role="dialog">
                                            <div class="modal-dialog" role="document">

                                                <!-- Modal content-->
                                                <!-- <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title">Xác Nhận</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Bạn có chắc chắn muốn xóa Người Dùng: "{{$user->name}}" không?</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" data-casetype="user" class="btn btn-default btnConf">Có</button>
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Không</button>
                                                    </div>
                                                </div>

                                            </div> -->
                                        <!-- </div> --> 



									 
												<!-- {!! Form::open(['method' => 'DELETE','route' => ['users.destroy', $user->id],'style'=>'display:inline']) !!}
												{!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
												{!! Form::close() !!} -->
											</td>
										</tr>
						      	@endforeach
					        
					            </tbody>
					        </table>
					    </div>
					</div>
					<!--===================================================-->
					<!-- End Row selection (single row) -->
					{!! $users ->render() !!}

                </div>
                    </div>
                </div>  
     
   </div>  
</div>   

@endsection
<style>
#demo-dt-selection_paginate {
    display:none;
}
</style>