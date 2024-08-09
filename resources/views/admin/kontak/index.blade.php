@extends('admin.layouts.main')

@section('content')
<div class="row">
    <div class="col-lg-12 d-flex align-items-strech">
      <div class="card w-100">
        <div class="card-header bg-primary">
            <div class="row align-items-center">
                <div class="col-6">
                    <h5 class="card-title fw-semibold text-white">Kontak</h5>
                </div>
                <div class="col-6 text-right">
                    <a href="/kontak" type="button" class="btn btn-warning float-end me-2" target="_blank">Live Preview</a>
                </div>
            </div>
        </div>

        <div class="card-body">
            @if (session()->has('success'))
                <div class="alert alert-success" role="alert">
                    {{ session('success') }}
                </div>
            @endif

            <div class="row">
                <div class="col-lg-8">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31859.386483427665!2d102.25884994999998!3d-3.48897255!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e31454d9470d9bb%3A0x33a5db76f98c9f76!2sLekat%20Ilir%20City%2C%20Hulu%20Palik%2C%20Kaur%20Regency%2C%20Bengkulu!5e0!3m2!1sen!2sid!4v1722585868995!5m2!1sen!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                </div>
                <div class="col-lg-4">
                    <form method="POST" action="/admin/kontak/{{ $kontak->id }}">
                        @method('put')
                        @csrf

                        <div class="col">
                            <div class="mb-3">
                                <label for="email" class="form-label">email <span style="color: red">*</span></label>
                                <input type="text" class="form-control" name="email" id="email" value="{{ old('email', $kontak->email) }}">
                                @error('email')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="no_hp" class="form-label">no_hp <span style="color: red">*</span></label>
                                <input type="text" class="form-control" name="no_hp" id="no_hp" value="{{ old('no_hp', $kontak->no_hp) }}">
                                @error('no_hp')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="lokasi" class="form-label">Alamat Lengkap <span style="color: red">*</span></label>
                                <input type="text" class="form-control" name="lokasi" id="lokasi" value="{{ old('lokasi', $kontak->lokasi) }}">
                                <i><small>Contoh : Karangmulyo, Purwodadi, Purworejo</small></i>
                                @error('lokasi')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary m-1 float-end">Update</button>
                   </form>
                </div>
            </div>

        </div>

      </div>
    </div>
</div>
@endsection
