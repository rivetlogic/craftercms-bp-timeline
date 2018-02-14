<div class="tm-sidebar sticky">
    <section id="welcome" class="tm-content-box tm-banner margin-b-15">
      <a href="/">
      	<div class="tm-banner-inner">
        <img class="margin-b-40" src="${contentModel.logoImage}"/>
        <h1 class="tm-banner-title">${contentModel.siteName}</h1>
        <p class="tm-banner-subtitle">${contentModel.subtitle}</p>                   
      	</div>
      </a>
    </section>
                   
  <nav class="tm-main-nav">
    <ul class="tm-main-nav-ul">
    	<li class="tm-nav-item"><a href="/timeline" id="btn-timeline" class="tm-nav-item-link tm-button">Timeline</a>
      	</li>
      <#if contentModel.showGallery == "true">
        <li class="tm-nav-item"><a href="/gallery" id="btn-gallery" class="tm-nav-item-link tm-button">Gallery</a>
        </li>
      </#if>
      <li class="tm-nav-item"><a href="/about" id="btn-about" class="tm-nav-item-link tm-button">About</a>
      </li>
      <li class="tm-nav-item"><a href="/contact" id="btn-contact" class="tm-nav-item-link tm-button">Contact</a>
      </li>
    </ul>
  </nav>
</div>