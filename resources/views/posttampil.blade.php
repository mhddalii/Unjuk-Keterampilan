@extends('navbar')
@section('content')
<style>
  .image-container {
    width: 200px; /* Lebar tetap untuk gambar */
    height: 113px; /* Tinggi gambar sesuai aspek rasio 16:9 */
    overflow: hidden;
    position: relative;
  }

  .image-container img {
    width: 100%; /* Agar gambar mengisi seluruh ruang yang tersedia */
    height: 100%; /* Agar gambar mengisi seluruh ruang yang tersedia */
    object-fit: cover; /* Menyesuaikan ukuran gambar agar sesuai dengan container */
  }

</style>
<br>
<div class="container">
  <h2 class="text-center card card-body">Data Berita</h2>
  <a href="{{ route('post.create') }}" class="btn btn-primary my-3">Tambah Data</a>
  <table class="table">
    <thead>
      <tr>
        <th scope="col">No</th>
        <th scope="col">Judul</th>
        <th scope="col">Kategori</th>
        <th scope="col">Content</th>
        <th scope="col">Gambar</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($data as $item)
      <tr>
        <th scope="row">{{ $loop->iteration }}</th>
        <td>{{ Str::limit($item->title, 50) }}</td>
<td>{{ $item->category->nama_kategori }}</td>
<td>{{ Str::limit($item->content, 150) }}</td>

        <td>
          @if ($item->image)
            <div class="image-container">
              <img src="{{ asset('storage/' . $item->image) }}" alt="Image">
              <!-- Debugging line to check the image path -->
              <p>{{ asset('storage/' . $item->image) }}</p>
            </div>
          @else
            Tidak ada gambar
          @endif
        </td>
      
        <td><a href="{{route('post.edit', $item->id)}}"><button class="btn btn-success">Edit</button></a></td>
        <td>
          <form action="{{route('post.destroy', $item->id)}}" method="post">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-danger">Delete</button>
          </form>
        </td>
        <td>
          <a href="{{ route('post.detail', $item->id) }}" class="btn btn-info">Detail</a>
      </td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>
<br>
@endsection
