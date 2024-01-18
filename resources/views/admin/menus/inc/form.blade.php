<div class="row">
  	<div class="col-md-12">
     	<div class="form-group">
        	{!! Form::label('title', 'Menu Title', ['class' => 'font-weight-bold']) !!}
        	{!! Form::text('title', null, array('class'=>'form-control', 'id'=>'title', 'placeholder'=>'Menu Title')) !!}
        	{!! APFrmErrHelp::showErrors($errors, 'title') !!}
     	</div>
  	</div>

  	<div class="col-md-12">
    	<div class="form-group">
            {!! Form::label('slug', 'Menu Link', ['class' => 'font-weight-bold']) !!}
            {!! Form::text('slug', null, array('class'=>'form-control', 'id'=>'slug', 'placeholder'=>'Menu Link')) !!}
            {!! APFrmErrHelp::showErrors($errors, 'slug') !!}
    	</div>
  	</div>

  	<div class="col-md-6">
     	<div class="form-group">
        	{!! Form::label('menu_type_id', 'Menu Type', ['class' => 'font-weight-bold']) !!}
        	{!! Form::select('menu_type_id', $menu_types, null, array('class'=>'form-control', 'id'=>'menu_type_id')) !!}
        	{!! APFrmErrHelp::showErrors($errors, 'menu_type_id') !!}
     	</div>
  	</div>
  	<div class="col-md-6">
     	<div class="form-group">
        	{!! Form::label('menu_is_id', 'Menu Is', ['class' => 'font-weight-bold']) !!}
        	{!! Form::select('menu_is', ['internal'=>'Internal','external'=>'External'], null, array('class'=>'form-control', 'id'=>'menu_is_id')) !!}
        	{!! APFrmErrHelp::showErrors($errors, 'menu_is_id') !!}
     	</div>
  	</div>
</div>
