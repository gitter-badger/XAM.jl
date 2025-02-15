get(ENV, "TRAVIS_OS_NAME", "") == "linux" || exit()
get(ENV, "TRAVIS_JULIA_VERSION", "") == "1.2" || exit()

using Pkg
Pkg.instantiate()

using Coverage

cd(joinpath(@__DIR__, "..")) do
   Codecov.submit(Codecov.process_folder())
end
