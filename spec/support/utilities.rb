def full_title(page_title)
  base_title = "Zimmer Frei"
  if page.title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end
