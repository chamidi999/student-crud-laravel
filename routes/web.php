<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;


// Redirect root to students page
Route::get('/', function () {
    return redirect()->route('students.index');
});

// Student Resource Routes
Route::resource('students', StudentController::class);