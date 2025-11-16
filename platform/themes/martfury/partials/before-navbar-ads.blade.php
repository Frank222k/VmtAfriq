@if (theme_option('before_navbar_ad_enabled', 'no') == 'yes')
    <div class="before-navbar-ads" style="text-align: center; padding: 10px 0; background: {{ theme_option('before_navbar_ad_bg', '#f8f9fa') }};">
        <div class="ps-container">
            @if (theme_option('before_navbar_ad_image'))
                <a href="{{ theme_option('before_navbar_ad_url', '#') }}" @if(theme_option('before_navbar_ad_new_tab', 'yes') == 'yes') target="_blank" @endif>
                    <img src="{{ RvMedia::getImageUrl(theme_option('before_navbar_ad_image')) }}" 
                         alt="{{ theme_option('before_navbar_ad_title', 'Advertisement') }}" 
                         style="max-width: 100%; height: auto;">
                </a>
            @elseif (theme_option('before_navbar_ad_code'))
                {!! theme_option('before_navbar_ad_code') !!}
            @endif
        </div>
    </div>
@endif