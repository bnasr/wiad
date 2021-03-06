context("returning the brightness matrix")

set.seed(2020)

w = 10
h = 5

rgbArray = array(data = runif(w * h * 3), 
                 dim = c(w, h, 3))

brightness = wiad:::getBrightness(rgbArray)

test_that("test the brightness function", {
  expect_gt(1, mean(brightness))
})

test_that("test the brightness function", {
  expect_gt(mean(brightness), 0)
})

test_that("test the brightness function", {
  expect_length(brightness, w * h)
})
