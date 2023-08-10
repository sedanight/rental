@extends('layout.main')

@section('konten')

  <h3>List Pengembalian Mobil</h3>
  <br>
  <table class="table table-bordered table-hover">
    <tr>
      <th>Nomor</th>
      <th>User</th>
      <th>Plat Mobil</th>
      <th>Durasi Sewa (Hari)</th>
      <th>Jumlah Biaya Sewa</th>
    </tr>
    @foreach($pengembalian_mobil as $m) 
    <tr>
      <td>{{$m->id}}</td>
      <td>{{$m->nama}}</td>
      <td>{{$m->no_plat}}</td>
      <td>{{$m->durasi}}</td>
      <td>{{$m->biaya}}</td>
    </tr>
    @endforeach
  </table>

@endsection