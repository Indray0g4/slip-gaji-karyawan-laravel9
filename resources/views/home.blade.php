@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <!-- menampilkan permenu dari website -->
                <div class="card-header">{{ __('Dashboard') }}</div>
                <!-- menampilkan status dari setiap tombol CRUD -->
                <div class="card-body"> 
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                <!-- menampilkan jika username dan password berhasil -->
                    {{ __('You are logged in!') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
