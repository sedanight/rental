@extends('layout.main')

@section('konten')

  <h3>Daftar Mobil</h3>
  <br>
  <a class="btn btn-success" href="/mobil/tambah"><i class="fa fa-plus"></i> Tambah Mobil</a><br><br>
  <table class="table table-bordered table-hover">
    <tr>
      <th>Nomor</th>
      <th>Merk Mobil</th>
      <th>Model Mobil</th>
      <th>Nomor Plat</th>
      <th>Tarif</th>
      <th>Status</th>
      <th>Aksi</th>
    </tr>
    @foreach($mobil as $m) 
    <tr>
      <td>{{$m->id}}</td>
      <td>{{$m->merk}}</td>
      <td>{{$m->model}}</td>
      <td>{{$m->no_plat}}</td>
      <td>{{$m->tarif}}</td>
      <td>{{$m->status}}</td>
      <td><a href="/mobil/ubah/{{$m->id}}" class="btn btn-warning btn-sm"><i class="fa fa-pencil"></i> Edit</a></td>
    </tr>
    @endforeach
  </table>

@endsection