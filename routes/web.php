<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PDFController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\SalaryController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\DivisionController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\PositionController;
use App\Http\Controllers\ScheduleController;
use App\Http\Controllers\AttendanceController;
use App\Http\Controllers\EmployeeAttendanceController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::middleware(['auth'])->group(function () {
    Route::resource('profile', ProfileController::class)->only('index','update','edit');
    Route::resource('employee', EmployeeController::class); //mengarah ke bagian Data Pegawai
    Route::resource('position', PositionController::class); //mengarah ke bagian Data Jabatan
    Route::resource('division', DivisionController::class); //mengarah ke bagian Data Divisi
    Route::resource('salary', SalaryController::class);     //mengarah ke bagian Data Gaji
    Route::resource('schedule', ScheduleController::class); //mengarah ke bagian Data Jadwal
    Route::resource('attendance', AttendanceController::class); //mengarah ke bagian Data Absensi
    Route::get('/employeeattendance',[EmployeeAttendanceController::class,'index']); //mengarah ke bagian Tampilan Data Jabatan
    Route::post('/employeeattendance',[EmployeeAttendanceController::class,'store']); //mengarah ke bagian Menambahkan dan menvalidasi Data Jabatan
    Route::get('/employeeattendance/create',[EmployeeAttendanceController::class,'create']);  //mengarah ke bagian Tampilan Menambahkan Data Jabatan
    Route::get('/employeeattendance/{employeeattendance}/edit',[EmployeeAttendanceController::class,'edit']); //mengarah ke bagian Tampilan Edit / Update Data Jabatan
    Route::put('/employeeattendance/{employeeattendance}',[EmployeeAttendanceController::class,'update']);  //mengarah ke bagian Tampilan Validasi edit/update Data Jabatan
    Route::get('/employeeattendance/report',[EmployeeAttendanceController::class,'attendanceReport']);  //mengarah ke bagian Tampilan pencetakkan pdf dari Data Jabatan

    Route::get('/employeereport',[PDFController::class,'EmployeeReport']);  //mengarah ke bagian tampilan percetakan dari Data Jabatan
    Route::get('/salaryreport',[PDFController::class,'SalaryReport']);  //mengarah ke bagian tampilan Percetakan Data Gaji
    Route::get('/divisionreport',[PDFController::class,'DivisionReport']);  //mengarah ke bagian Tampilan percetakatan dari Data Divisi
    Route::get('/positionreport',[PDFController::class,'PositionReport']);  //mengarah ke bagian Tampilan percetakan Data Pegawai
    Route::get('/schedulereport',[PDFController::class,'ScheduleReport']);  //mengarah ke bagian Tampilan percetakan Data jadwal
    Route::get('/attendacereportday/{attendance}',[PDFController::class,'AttendanceReportDay']);  //mengarah ke bagian data yang aakan dicetak
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');  //mengarah ke bagian Tampilan semua data dari setiap data gaji karyawan
});

