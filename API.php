<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;

class StudentController extends Controller
{
    public function index()
    {
        return Student::all();
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:students',
            'no_hp' => 'required',
            'alamat' => 'required',
            'tgl_lahir' => 'required|date',
        ]);

        return Student::create($request->all());
    }

    public function show($id)
    {
        return Student::find($id);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'sometimes|required',
            'email' => 'sometimes|required|email|unique:students,email,' . $id,
            'no_hp' => 'sometimes|required',
            'alamat' => 'sometimes|required',
            'tgl_lahir' => 'sometimes|required|date',
        ]);

        $student = Student::find($id);
        $student->update($request->all());

        return $student;
    }

    public function destroy($id)
    {
        return Student::destroy($id);
    }
}
