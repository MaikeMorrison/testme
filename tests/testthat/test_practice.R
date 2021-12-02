context("Test binary search function")

# Smoke Tests
test_that("Binary search algorithm works for simple vectors"{
  expect_equal(binary_search(1:10, 1), 1)
  expect_equal(binary_search(seq(1,20,2), 15), 8)
})

# Boundary Tests
test_that("Binary search algorithm handles zeroes"{
  expect_equal(binary_search(0:100, 0), 1)
  expect_equal(binary_search(rep(0,100),0), 1)
})

test_that("Binary search algorithm handles large numbers"{
  expect_equal(binary_search(1:10^15, 10^14), 10^14)
})

test_that("Binary search algorithm breaks if number not included in vector"{
  expect_error(binary_search(1:10, 11))
})

test_that("Binary search algorithm breaks if vector is NA"){
  expect_error(binary_search(NA, "b"))
}

test_that()
