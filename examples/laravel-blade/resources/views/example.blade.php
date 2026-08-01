@extends('layouts.app')

@section('content')
<main class="layout-container layout-stack section-spacing" aria-labelledby="page-title">
    <nav class="breadcrumb" aria-label="Breadcrumb">
        <ol class="breadcrumb-list">
            <li class="breadcrumb-item"><a class="breadcrumb-link" href="{{ url('/') }}">Home</a></li>
            <li class="breadcrumb-item"><span class="breadcrumb-current" aria-current="page">Estimate</span></li>
        </ol>
    </nav>

    <section class="pattern-split-content">
        <div class="layout-stack">
            <p class="element-eyebrow">Laravel Blade example</p>
            <h1 id="page-title">Request an estimate</h1>
            <p class="util-content-reading">The form posts normally and can return the same Blade view with server-side validation errors.</p>
        </div>

        <form class="card card-body layout-stack" method="POST" action="{{ route('estimates.store') }}" novalidate>
            @csrf

            @if ($errors->any())
                <div class="alert alert-error" role="alert" tabindex="-1">
                    <div>
                        <strong>Review the highlighted fields.</strong>
                        <ul class="element-list">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endif

            <div class="form-group">
                <label class="form-label" for="name">Name</label>
                <input
                    class="form-input"
                    id="name"
                    name="name"
                    value="{{ old('name') }}"
                    autocomplete="name"
                    required
                    @error('name') aria-invalid="true" aria-describedby="name-error" @enderror
                >
                @error('name')<p class="form-error" id="name-error">{{ $message }}</p>@enderror
            </div>

            <div class="form-group">
                <label class="form-label" for="email">Email</label>
                <input
                    class="form-input"
                    id="email"
                    name="email"
                    type="email"
                    value="{{ old('email') }}"
                    autocomplete="email"
                    required
                    @error('email') aria-invalid="true" aria-describedby="email-error" @enderror
                >
                @error('email')<p class="form-error" id="email-error">{{ $message }}</p>@enderror
            </div>

            <div class="form-group">
                <label class="form-label" for="message">Project details</label>
                <textarea class="form-textarea" id="message" name="message" required>{{ old('message') }}</textarea>
            </div>

            <div class="form-actions">
                <a class="button button-ghost" href="{{ url('/') }}">Cancel</a>
                <button class="button button-primary" type="submit">Send request</button>
            </div>
        </form>
    </section>
</main>
@endsection
