@if (isset($array1))
<div class="row margin-0">
    <div class="col-sm-6 padding-0">
        @foreach ($array1 as $item)
            <a class="banner-border" href="{{route('shop',['danhmuc'=>$item->slug])}}"><img src="../category/{{ $item->image }}" alt="" width="" height=""></a>
        @endforeach
    </div>
    <div class="col-sm-6 padding-0">
        <a class="banner-border" href="{{route('shop',['danhmuc'=>$array2[0]->slug])}}"><img src="../category/{{ $array2[0]->image }}" alt="" width="" height="">
        </a>
    </div>
</div>
@endif

