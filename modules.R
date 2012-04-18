

makeCell = function(vec, name, label,
   nameEnclosure = function(name)
      cat(paste("\\textsf{", name, "}\\\\", sep="")),
   labelEnclosure = function(label)
      cat(paste("\\textbf{", label, "}\\\\", sep="")),
   cellStart = function() {
      cat("\\begin{tabular}{p{6.5cm}}") },
   cellEnd = function() { cat("\\end{tabular}") }, ...) {
require(ggplot2, quietly=TRUE)
   # vec is vector of numbers
   # name is string (official variable name)
   # label is string (official var description)
cellStart()
cat("\n")
nameEnclosure(name)
cat("\n")
labelEnclosure(label)
#  now do graphics on vec
curdf = data.frame(vec)
bw = diff(range(vec))/30
thepl = qplot(x=vec, data=curdf, geom="histogram", ...) +
  xlab(name) +
   opts(axis.title.x = theme_text(face="bold", size=20),
              axis.text.x  = theme_text(angle=45, hjust=1.0, vjust=1.0, size=16)) +
         opts(axis.title.y = theme_text(face="bold", size=20),
              axis.text.y  = theme_text(hjust=1.2, size=16)) +
         opts(legend.position="none")
newname = name
newname = gsub("\\.", "_", newname)
newname = gsub(" ", "_", newname)
pdf(tfn <- paste(newname, "-pic.pdf", sep=""))
print(thepl)
dev.off()
cat(paste("\\includegraphics[width=6cm]{",tfn,"}", sep=""))
cat("\n")
cellEnd()
cat("\n")
}

   

