@extends('navbar')
@section('content')
<style>
  /* Tambahan gaya CSS khusus */
  .news-item {
      margin-bottom: 20px;
  }
  .news-thumbnail {
      max-width: 100%;
      height: auto;
  }
  .news-details {
      font-size: 14px;
      margin-bottom: 5px;
  }
  .card {
      padding: 25px;
  }
  .justified-content {
    text-align: justify;
    text-indent: 2em; /* Sesuaikan nilai indentasi baris pertama sesuai kebutuhan Anda */
    margin: 1em 0; /* Memberikan sedikit margin atas dan bawah untuk tampilan yang lebih baik */
}

</style>
<div class="container mt-5">
    <div class="row no-gutters">
        <div class="col-md-9">
            <div class="card">
                <h2 class="">{{ $data->title }}</h2>
                <p class="news-details">Dibuat: {{ $data->created_at }} | Diperbarui: {{ $data->updated_at }}</p>
                <p class="news-details">Penulis: {{ $data->author->nama_author }}</p>
                @if ($data->image)
                    <div class="news-thumbnail-container">
                      <img src="{{ asset('storage/' . $data->image) }}" class="news-thumbnail" alt="Gambar Postingan" width="1600" height="900">

                    </div>
                @else
                    <p class="card-text"><strong>Gambar:</strong> Tidak ada gambar</p>
                @endif
                <p class="news-details">Kategori: {{ $data->category->nama_kategori }}</p>
                <p class="justified-content">{{ $data->content }}</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="">
                <h3 class="text-center card">Berita Terkait</h3>
                @foreach ($relatedNews as $related)
                    <div class="card mb-4">
                        <img src="{{ asset('storage/' . $related->image) }}" class="card-img-top" alt="Gambar Berita">
                        <div class="">
                          <td></td>
                            <h7 class="card-title"></h7>
                            <a href="{{ route('post.detail', $related->id) }}">{{ Str::limit($related->title, 60) }}</a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection
