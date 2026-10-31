test_that('learning materials are available', {
  materials <- ux_learning_materials()
  expect_named(materials, c('workbook', 'answer_key'))
  expect_true(all(file.exists(materials)))
})

test_that('individual learning materials can be selected', {
  workbook <- ux_learning_materials('workbook')
  answer_key <- ux_learning_materials('answer_key')
  expect_true(file.exists(workbook))
  expect_true(file.exists(answer_key))
})

test_that('invalid material selection produces an error', {
  expect_error(ux_learning_materials('invalid'))
})

test_that('open argument must be logical', {
  expect_error(ux_learning_materials(open = 'yes'))
})
