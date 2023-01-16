<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    //
    function addProduct(Request $req)
    {
        $product = Product::create([
            'name' => $req['name'],
            'price' => $req['price'],
            'description' => $req['description'],
            'file_path' => $req->file('file')->store('products')
        ]);
        $product ->save();
        return $product;
    }

    function listProduct()
    {
        return Product::all();
    }

    function delete($id)
    {
        $result=Product::where('id',$id)->delete();
        if($result){
            return ["Result"=>"Product has been deleted!"];
        }else{
            return["Error"=>"Operation failed"];
        }
    }

    function getProduct($id)
    {
        return Product::find($id);
    }

    function updateProduct($id, Request $req)
    {
        // return $req->input();
        $product = Product::find($id);
        // $product->name = $req->input('name');
        // $product->price = $req->input('price');
        // $product->description = $req->input('description');
        $product->update([
            'name' => $req['name'],
            'price' => $req['price'],
            'description' => $req['description'],
        ]);
        if($req->file('file')){
            if($req->file('fileold')){
                Storage::delete($req->file('file')->store('products'));
            }
            $product->file_path = $req->file('file')->store('products');
        }
        $product->save();
        return $req->input();
    }

    function searchProduct($key)
    {
        return Product::where('name','like',"%$key%")->get();
    }
}