##########################
test_that("test multiple cacheRepo", {
  testInitOut <- testInit()
  on.exit({
    testOnExit(testInitOut)
  }, add = TRUE)

  opt <- options("reproducible.cachePath" = c(tmpdir, tmpCache))

  a <- Cache(rnorm, 1, cacheRepo = tmpCache)
  suppressMessages(aCache <- showCache(tmpCache))
  expect_true(length(unique(aCache$artifact))==1)

  b <- Cache(rnorm, 2, cacheRepo = tmpdir)
  suppressMessages(bCache <- showCache(tmpdir))
  expect_true(length(unique(bCache$artifact))==1)

  d <- Cache(rnorm, 1, cacheRepo = c(tmpdir, tmpCache))
  suppressMessages(dCache <- showCache(tmpCache))
  expect_true(length(unique(dCache$artifact))==1)

  f <- Cache(rnorm, 2, cacheRepo = c(tmpdir, tmpCache))
  suppressMessages(fCache <- showCache(tmpdir))
  expect_true(length(unique(fCache$artifact))==1)

  d <- Cache(rnorm, 1)
  suppressMessages(dCache <- showCache())
  expect_true(length(unique(dCache$artifact))==1)

  f <- Cache(rnorm, 2)
  suppressMessages(fCache <- showCache())
  expect_true(length(unique(fCache$artifact))==1)

  on.exit(options(opt), add = TRUE)
})
