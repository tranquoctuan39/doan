<?php

namespace App\Http\Controllers\Site\Favorite;

use App\Http\Controllers\Controller;
use App\Models\favorites;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\Products;

class FavoriteController extends Controller
{
    public function List()
    {
        $favorite = favorites::where('users_id', Auth::guard('guest')->user()->id)->get();
        return view('site.index.favorite.index', compact('favorite'));
    }

    public function Store($id)
    {
        if (Auth::guard('guest')->user() == null) {
           return redirect()->back()->with('thong-bao-loi','Hãy đăng nhập để sử dụng tính năng này!');
        }
        if (favorites::where('prd_id', $id)->first()) {
            return redirect()->back()->with('thong-bao-loi','Sản phẩm đã có trong phần yêu thích!');
        }

        $product = Products::where('id', $id)->first();
        $favorite = new favorites();
        $favorite->users_id = Auth::guard('guest')->user()->id;
        $favorite->name = $product->name;
        $favorite->image = $product->image;
        $favorite->image2 = $product->image2;
        $favorite->price = $product->price;
        $favorite->slug = $product->slug;
        $favorite->prd_id = $product->id;
        $favorite->users_id = Auth::guard('guest')->user()->id;
        $favorite->save();
        return redirect()->route('favorite');
    }

    public function Remove($id, $userID)
    {
        $favorite = favorites::where('id', $id)->where('users_id', $userID)->first();
        $favorite->delete();
        return redirect()->route('favorite');
    }

}
