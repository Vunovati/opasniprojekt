def full_title(page_title)
  base_title = "Opasni projekt"
  if page.title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end
