# install.packages("reticulate")
library(reticulate)
py_install("plotting")

# reticulate::repl_python(module = "transformers")

use_virtualenv("/users/cbk/documents/.virtualenvs/r-reticulate", required = TRUE)
