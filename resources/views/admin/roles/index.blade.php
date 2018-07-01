@extends('admin.layout.index')
@section('content')
<div id="content-container">
   <!--Page Title-->
   <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
   <div id="page-title">
      <h1 class="page-header text-overflow">Danh sách vai trò</h1>
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
                           <tr>
                              <th>STT</th>
                              <th>Tên</th>
                              <th>Miêu tả</th>
                              <th width="280px">Thực hiện</th>
                           </tr>
                        </thead>
                        <tbody>
                           @foreach ($roles as $key => $role)
                           <tr>
                              <td>{{ ++$i }}</td>
                              <td>{{ $role->display_name }}</td>
                              <td>{{ $role->description }}</td>
                              <td>
                                 <a class="btn btn-info" href="{{ route('roles.show',$role->id) }}">Show</a>
                                 @permission('role-edit')
                                 <a class="btn btn-primary" href="{{ route('roles.edit',$role->id) }}">Edit</a>
                                 @endpermission
                                 @permission('role-delete')
                                 {!! Form::open( ['method' => 'DELETE','route' => ['roles.destroy', $role->id], 'style' => 'display: inline', 'onSubmit' => 'return confirm("Bạn có chắc chắn muốn xóa?")']) !!}
										 	<button type="submit" class="btn btn-danger">
										Xóa
										 	</button> 
											 {!! Form::close() !!} 
                                 @endpermission
                              </td>
                           </tr>
                           @endforeach
                        </tbody>
                     </table>
                  </div>
               </div>
               <!--===================================================-->
               <!-- End Row selection (single row) -->
               {!! $roles ->render() !!}
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