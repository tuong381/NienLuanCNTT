<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;  //Redirect :tra ve

use Illuminate\Support\Facades\Route;
use Session;
session_start();

use App\Models\admin;
use App\Models\roles;
use Auth;
use Toastr;

class UsersController extends Controller
{
    //
    //kiem tra dang nhap admin
    public function kiemtra_AD(){
        $id_AD =  Auth::id();
        if($id_AD){
             Redirect::to('Dashboard');
        }else{
            return Redirect::to('Admin')->send();
        }
    }

    // liet ke nhan vien
    public function index(){

        $admin = admin::with('roles')->orderby('id_AD','DESC')->paginate(10);
        return view('admin.Roles.lietke_user')->with(compact('admin'));
    }

    // them nhan vien
    public function them_NhanVien(){

        $this->kiemtra_AD();     // kiem tra co dang nhap k
         $roles=DB::table('roles')->orderby('id_Roles','asc')->get();

        return view('admin.Roles.them_NhanVien')->with('roles',$roles);
    }

    // luu nhan vien
    public function luu_NhanVien(Request $request){

         $this->validation($request);
        $data = $request->all();

        $admin = new admin();
        $admin->HoTenAD = $data['HoTenAD'];
        $admin->Email = $data['Email'];
        $admin->DiaChi = $data['DiaChi'];
        $admin->SoDT = $data['SoDT'];
        $admin->MatKhau = md5($data['MatKhau']);

        //
        // $admin['id_AD'] = $request->id_AD;
         $admin->save();
      //  $admin ->roles()->attach(roles::where('TenRoles','admin')->first());
          $admin['id_Roles'] = $request->PhanQuyen;
        $admin ->roles()->attach($admin);

        Toastr::success('Thêm nhân viên '.$request->HoTenAD.' thành công', 'Success',);
        return Redirect('/lietke-user');
    }


    // sua nhan vien

    public function sua_NhanVien($id_AD){

        $this->kiemtra_AD();     // kiem tra co dang nhap k
     //    $admin = admin::where('Email',$data['Email'])->first();
         $roles=roles::orderby('id_Roles','asc')->get();

        $sua_NhanVien = admin::find($id_AD);
        $quanli = view('admin.Roles.sua_user')->with('sua_NhanVien',$sua_NhanVien)->with('roles',$roles);
        return view('Admin_index')->with('admin.Roles.sua_user',$quanli);
    }


    // cap nhat nhan vien
    public function capnhat_NhanVien(Request $request, $id_AD){

        $this->validation($request);
        $data = $request->all();

        $admin = admin::find($id_AD);
        $admin->HoTenAD = $data['HoTenAD'];
        $admin->Email = $data['Email'];
        $admin->DiaChi = $data['DiaChi'];
        $admin->SoDT = $data['SoDT'];
        $admin->MatKhau = md5($data['MatKhau']);

        //
        // $admin['id_AD'] = $request->id_AD;
         $admin->save();
         $admin = admin::where('Email',$data['Email'])->first();
        $admin ->roles()->detach();
        $admin['id_Roles'] = $request->PhanQuyen;
        $admin ->roles()->attach($admin);

        Toastr::success('Cập nhật nhân viên '.$request->HoTenAD.' thành công', 'Success',);

        return Redirect('/lietke-user');

    }


    // xoa nhan vien
    public function xoa_NhanVien($id_AD){

        if(Auth::id()==$id_AD){
            return Redirect()->back()->with('message','Bạn không được quyền xóa bạn');
        }

        $admin = admin::find($id_AD);
        // xoa quyen
        if($admin){
            $admin->roles()->detach();
            $admin->delete();
        }


    //    $admin->delete();
        Toastr::success('Xóa nhân viên thành công', 'Success',);
        return Redirect()->back();

    }



    // ham kiem tra nhap vao
    public function validation($request){

        return $this->validate($request,['HoTenAD' => 'required|max:255',
                                        'Email' => 'required|email|min:1',
                                        'SoDT' => 'required|min:1',
                                        'DiaChi' => 'required|min:1',
                                        'MatKhau' => 'required|min:1',

                             ]);
    }
}
