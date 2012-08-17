[{:name "re-matcher", :desc "creates iterable regex"}
 {:name "binding", :desc "only redefines dynamic vars"}
 {:name "add-classpath",
  :desc
  "like adding $:, also see https://github.com/cemerick/pomegranate"}
 {:name "ns-imports", :desc "map of import mappings"}
 {:name "ns-interns", :desc "map of ns mappings"}
 {:name "source", :desc "doesn't work for repl-defined fns"}
 {:name "pr", :desc "print readable by reader"}
 {:name "println-str", :desc "string of println"}
 {:name "with-out-str", :desc "capture *out*"}
 {:name "array-map", :desc "how is usage different than hash-map?"}
 {:name "pop", :desc "Array#slice(0..-2)"}
 {:name "clojure.set/join",
  :desc "joins sets of maps by common key in maps"}
 {:name "clojure.set/project", :desc "slice map keys in arr of maps"}
 {:name "clojure.set/rename-keys", :desc "rename map keys"}
 {:name "complement", :desc "opposite of fn"}
 {:name "butlast", :desc "reverse rest"}
 {:name "doto", :desc "jqueryize"}
 {:name "ancestors", :desc "is derive-aware, while supers is not"}
 {:name "extend-type", :desc "anon include scoped to a namespace"}
 {:name "reify", :desc "creates a protocol obj"}
 {:name "for", :desc "list comprehension, cartesian product"}
 {:name "condp", :desc "generalized case where = fn can be anything"}
 {:name "doseq", :desc "can take multiple args to do nested iteration"}
 {:name "frequencies", :desc "map of # of distinct items in a vec"}
 {:name "ns-map", :desc "symbol to vars"}
 {:name "require",
  :desc "takes a quoted list b/c it's a fn and not a macro like ns"}
 {:name "apply", :desc "last arg must be a list"}
 {:name "macroexpand-1", :desc "expands once"}
 {:name "macroexpand-all", :desc "recursive expand all"}
 {:name "macroexpand", :desc "expands top level macro recursively"}
 {:name "deref", :desc "never blocks"}
 {:name "pmap",
  :desc
  "parallel map, if process time is low, chunk up processes using detection-all"}
 {:name "promise", :desc "declaratively set with deliver, blocks"}
 {:name "future",
  :desc "Thread.new with cached result + optional timeout"}
 {:name "realized?",
  :desc "checks on delays, promises, futures, lazyseqs"}
 {:name "clojure.zip/zipper",
  :desc "[children? children create-branch]"}
 {:name "partition", :desc "similar to enum chunking meth"}
 {:name "with-meta", :desc "replace meta"}
 {:name "vary-meta", :desc "assoc meta"}
 {:name "subseq", :desc "like find but only for keys of sorted dt"}
 {:name "comparator", :desc "converts pred fns to comparable fn"}
 {:name "juxt", :desc "((juxt a b c) x) => [(a x) (b x) (c x)]"}
 {:name "and", :desc "like joining multiple ands"}
 {:name "zipmap", :desc "like zip but produces map"}
 {:name "merge-with",
  :desc "merges maps with same keys given a function to merge values"}
 {:name "update-in", :desc "updates value given map, nested keys + fn"}
 {:name "dissoc", :desc "can delete multiple keys"}
 {:name "iterate", :desc "lazy seq of x, f(x), f(f(x))"}
 {:name "list*", :desc "cons for multiple elements"}
 {:name "next",
  :desc
  "produces nil for empty cases, less lazy as it checks head of nonempty tail"}
 {:name "rest", :desc "produces () for empty cases, max lazy"}
 {:name "conj",
  :desc
  "list + vector adds elements in different places b/c of efficiency"}
 {:name "->", :desc "arg gets inserted as first arg"}
 {:name "->>", :desc "arg gets inserted as last arg"}
 {:name "interpose", :desc "join(a).split(/\\s+/)"}
 {:name "comp", :desc "(comp a b c) = (a (b (c))) = opposite of ->>"}
 {:name "apply", :desc "apply(fn [args]): fn.call(*args)"}
 {:name "partial", :desc "partial(fn *args): #(apply fn *args *&)"}
 {:name "fnil",
  :desc
  "sets default for a function expecting non-nil args used in clojure prob 2 as (hash[:key] ||= {}) << 2"}]
