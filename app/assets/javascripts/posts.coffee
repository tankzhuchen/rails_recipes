jQuery ->
  $(window).scroll ->
    url = $('.pagination .next a').attr('href')
    if url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
      $('.pagination').text("刷新中...")
      $.getScript(url)
