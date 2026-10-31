#' Access UX learning materials
#'
#' Locate or open the educational materials included in the package.
#'
#' @param material Material to access: 'all', 'workbook', or 'answer_key'.
#' @param open Logical. If TRUE, opens the selected material.
#'
#' @return Invisibly returns the file paths of the selected materials.
#' @export

ux_learning_materials <- function(material = 'all', open = FALSE) {

  available <- c('all', 'workbook', 'answer_key')

  if (length(material) != 1 || is.na(material) ||
      !material %in% available) {
    stop("Please select 'all', 'workbook', or 'answer_key'.",
         call. = FALSE)
  }

  if (!is.logical(open) || length(open) != 1 || is.na(open)) {
    stop('open must be TRUE or FALSE.', call. = FALSE)
  }

  materials_dir <- system.file('learning-materials', package = 'uxlearn')

  if (materials_dir == '') {
    stop('Learning materials could not be found.', call. = FALSE)
  }

  files <- c(
    workbook = file.path(materials_dir, 'UX-Learning-Workbook.md'),
    answer_key = file.path(materials_dir, 'Answer-Key.md')
  )

  selected <- switch(
    material,
    all = files,
    workbook = files['workbook'],
    answer_key = files['answer_key']
  )

  if (!all(file.exists(selected))) {
    stop('One or more learning materials are missing.', call. = FALSE)
  }

  if (open) {
    for (file in selected) file.show(file)
  } else {
    cat('UX Learning Materials\n\n')
    print(selected)
  }

  invisible(selected)
}
