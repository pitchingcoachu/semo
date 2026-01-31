# School-specific overrides for the shared app.
# Copy this file to another repo and keep the same structure when you need to customize colors, logos, APIs, etc.
school_config <- list(
  team_code = "SEMO",
  # Player filters
  allowed_pitchers = c(
    "Lee, Aidan",
    "Limas, Jacob",
    "Higginbottom, Elijah",
    "Cunnings, Cam",
    "Moeller, Luke",
    "Smith, Jace",
    "Frey, Chase",
    "Ahern, Garrett",
    "McGuire, Tommy",
    "Robb, Nicholas",
    "Guerrero, JT",
    "Gregory, Billy",
    "Penzkover, Gunnar",
    "Lewis, JT",
    "Kiemele, Cody",
    "Cohen, Andrew",
    "Lyon, Andrew",
    "Johns, Tanner",
    "Toney, Brock",
    "Sloan, Landon",
    "Key, Chance",
    "Orr, Dillon",
    "Yates, Zach",
    "New, Cody",
    "Boever, Cael",
    "Bianchina, Vince",
    "Matranga, Austin",
    "Perez, Jaime",
    "Schmidt, Trevor",
    "Sanko, Jake",
    "Scaldeferri, Billy",
    "Ohland, Carson",
    "Charles, Max",
    "Cameron, Griffin",
    "Peery, Cannon",
    "Huff, Kade",
    "Chacon, Dominic",
    "Anderson, Dillon",
    "Galvan, Marcus",
    "Alexander, Aspen",
    "Owens, Austin",
    "Aaron, Parker",
    "Sanders, Troy",
    "Lopez, Jose",
    "Bates, Camden",
    "Nielsen, Jarret"
    
  ),
  allowed_hitters = c(
    "Lee, Aidan",
    "Limas, Jacob",
    "Higginbottom, Elijah",
    "Cunnings, Cam",
    "Moeller, Luke",
    "Smith, Jace",
    "Frey, Chase",
    "Ahern, Garrett",
    "McGuire, Tommy",
    "Robb, Nicholas",
    "Guerrero, JT",
    "Gregory, Billy",
    "Penzkover, Gunnar",
    "Lewis, JT",
    "Kiemele, Cody",
    "Cohen, Andrew",
    "Lyon, Andrew",
    "Johns, Tanner",
    "Toney, Brock",
    "Sloan, Landon",
    "Key, Chance",
    "Orr, Dillon",
    "Yates, Zach",
    "New, Cody",
    "Boever, Cael",
    "Bianchina, Vince",
    "Matranga, Austin",
    "Perez, Jaime",
    "Schmidt, Trevor",
    "Sanko, Jake",
    "Scaldeferri, Billy",
    "Ohland, Carson",
    "Charles, Max",
    "Cameron, Griffin",
    "Peery, Cannon",
    "Huff, Kade",
    "Chacon, Dominic",
    "Anderson, Dillon",
    "Galvan, Marcus",
    "Alexander, Aspen",
    "Owens, Austin",
    "Aaron, Parker",
    "Sanders, Troy",
    "Lopez, Jose",
    "Bates, Camden",
    "Nielsen, Jarret"
  ),
  allowed_campers = c(
  ),
  colors = list(
    primary             = "#0d1224",   # deep navy used in the dark-mode radial gradient (gcu/app.R:17666-17674)
    accent              = "#667eea",   # start of the active-tab/btn gradient (gcu/app.R:17464-17515)
    accent_secondary    = "#764ba2",   # end of that same gradient
    background          = "#f5f7fa",   # light page background (gcu/app.R:17135)
    background_secondary= "#e8ecf1"   # the matching secondary background tone
    
  ),
  logo = "SEMOlogo.png",
  coaches_emails = c(
    "mkinney@semo.edu
  ),
  notes_api = list(
    base_url = "https://script.google.com/macros/s/AKfycbzdN0gJgRQPxLGrzx9N1m8HDVaF9ukH6iMeVKUbgR6VAMNXS7mhc2URtJZ0ySV0Xfio/exec",
    token = "SEMObaseball"
  ),
  extra = list(
    school_name = "SEMO",
    ftp_folder = "trackman",
    cloudinary_folder = "trackman"
  )
)

colorize_css <- function(css, accent, accent_secondary, background, background_secondary) {
  accent_rgb <- paste(grDevices::col2rgb(accent), collapse = ",")
  accent_secondary_rgb <- paste(grDevices::col2rgb(accent_secondary), collapse = ",")
  css <- gsub("#e35205", accent, css, fixed = TRUE)
  css <- gsub("#ff8c1a", accent_secondary, css, fixed = TRUE)
  css <- gsub("rgba(227,82,5", paste0("rgba(", accent_rgb), css, fixed = TRUE)
  css <- gsub("rgba(227, 82, 5", paste0("rgba(", accent_rgb), css, fixed = TRUE)
  css <- gsub("rgba(255,140,26", paste0("rgba(", accent_secondary_rgb), css, fixed = TRUE)
  css <- gsub("rgba(255, 140, 26", paste0("rgba(", accent_secondary_rgb), css, fixed = TRUE)
  css <- gsub("#f5f7fa", background, css, fixed = TRUE)
  css <- gsub("#e8ecf1", background_secondary, css, fixed = TRUE)
  css
}
