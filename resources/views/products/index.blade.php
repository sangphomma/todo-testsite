@extends('products.layouts')

@section('content')

{{-- @include('products.index') --}}

<div class="flex flex-col items-center  min-h-screen  w-full">
    <div class="w-full h-100 bg-sky-300 px-[10%] py-2 flex justify-between shadow-xl" >
        <div class='button-primary' >Home</div>
        <div class='flex gap-2'>
            <div class='px-4 py-2 rounded bg-blue-200 hover:bg-sky-100 cursor-pointer shadow-xl' >
                <a href='/api/v1/todos' target="_bank" class='outline-none' >Todo Api</a>
            </div>
            <div class='px-4 py-2 rounded bg-sky-200 hover:bg-sky-100 cursor-pointer shadow-xl' >
                <a href='/admin' target="_bank" class='outline-none' >Admin</a>
            </div>
        </div>
    </div>

    <div class='flex flex-wrap gap-2 gap-y-1 justify-center items-cente h-full w-full bg-sky-100' >

        @for($i=0 ;$i <=15 ; $i++ )

        <div class='flex justify-center items-center w-40 h-40 bg-yellow-100 shadow-md m-4 p-2'>
            <h1 >Start here</h1>
        </div>

        @endfor

    </div>


</div>

@endsection
