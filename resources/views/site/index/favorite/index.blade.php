@extends('site.index.master.layout')
@section('title')
    Yêu thích
@endsection
@section('main')
    <div class="main-container left-slidebar">
        <div class="container">
            <div class="row">
                <div class="main-content col-sm-8 col-md-9">
                    @if (count($favorite)==0)
                        <h5>Chưa có sản phẩm nào</h5>
                    @else
                        <ul class="product-list-grid desktop-columns-3 tablet-columns-2 mobile-columns-1 row">
                            @foreach ($favorite as $product)
                                <li class="product-item col-sm-6 col-md-4">
                                    <div class="product-inner">
                                        <div class="product-thumb has-back-image">
                                            <a href="{{ route('productDetail', ['slug' => $product->slug]) }}"><img
                                                    src="../product/{{ $product->image }}"
                                                    alt="{{ $product->name }}" width="500" height="370"></a>
                                            <a class="back-image"
                                                href="{{ route('productDetail', ['slug' => $product->slug]) }}"><img
                                                    src="../product/{{ $product->image2 }}"
                                                    alt="{{ $product->name }}" width="500" height="370"></a>
                                        </div>
                                        <div class="product-info">
                                            <h3 class="product-name"><a
                                                    href="{{ route('productDetail', ['slug' => $product->slug]) }}">{{ $product->name }}</a>
                                            </h3>
                                            <span class="price">
                                                <ins>{{ number_format($product->price) }} VNĐ</ins>
                                            </span>
                                                <a href="{{ route('avorite.remove', ['id' => $product->id, 'userID' => Auth::guard('guest')->user()->id]) }}"
                                            class="button">Bỏ yêu thích</a>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    @endif

                </div>
            </div>
        </div>
    </div>
    @if (isset($min))
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function() {
                $("#slider-range").slider({
                    range: true,
                    min: {{ $min }},
                    max: {{ $max }},
                    values: [{{ $min }}, {{ $max }}],
                    slide: function(event, ui) {
                        $("#amount_start").val(ui.values[0]);
                        $("#amount_end").val(ui.values[1]);
                    }
                });
            });

        </script>
    @endif

@endsection
