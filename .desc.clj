[{:name "clojure.core/re-matcher", :desc "creates iterable regex"}
 {:name "clojure.core/binding", :desc "only redefines dynamic vars"}
 {:name "clojure.core/add-classpath",
  :desc
  "like adding $:, also see https://github.com/cemerick/pomegranate"}
 {:name "clojure.core/ns-imports", :desc "map of import mappings"}
 {:name "clojure.core/ns-interns", :desc "map of ns mappings"}
 {:name "clojure.repl/source",
  :desc "doesn't work for repl-defined fns"}
 {:name "clojure.core/pr", :desc "print readable by reader"}
 {:name "clojure.core/println-str", :desc "string of println"}
 {:name "clojure.core/with-out-str", :desc "capture *out*"}
 {:name "clojure.core/array-map",
  :desc "how is usage different than hash-map?"}
 {:name "clojure.core/pop", :desc "Array#slice(0..-2)"}
 {:name "clojure.set/join",
  :desc "joins sets of maps by common key in maps"}
 {:name "clojure.set/project", :desc "slice map keys in arr of maps"}
 {:name "clojure.set/rename-keys", :desc "rename map keys"}
 {:name "clojure.core/complement", :desc "opposite of fn"}
 {:name "clojure.core/butlast", :desc "reverse rest"}
 {:name "clojure.core/doto", :desc "jqueryize"}
 {:name "clojure.core/ancestors",
  :desc "is derive-aware, while supers is not"}
 {:name "clojure.core/extend-type",
  :desc "anon include scoped to a namespace"}
 {:name "clojure.core/reify", :desc "creates a protocol obj"}
 {:name "clojure.core/for",
  :desc
  "cartesian product, when wanting to destructure mapped items easily"}
 {:name "clojure.core/condp",
  :desc "generalized case where = fn can be anything"}
 {:name "clojure.core/doseq",
  :desc
  "can take multiple bindings to do nested iteration, has :let and other useful constructs that for has"}
 {:name "clojure.core/frequencies",
  :desc "map of # of distinct items in a vec"}
 {:name "clojure.core/ns-map", :desc "symbol to vars"}
 {:name "clojure.core/require",
  :desc "takes a quoted list b/c it's a fn and not a macro like ns"}
 {:name "clojure.core/apply", :desc "last arg must be a list"}
 {:name "clojure.core/macroexpand-1", :desc "expands once"}
 {:name "clojure.walk/macroexpand-all", :desc "recursive expand all"}
 {:name "clojure.core/macroexpand",
  :desc "expands top level macro recursively"}
 {:name "clojure.core/deref", :desc "never blocks"}
 {:name "clojure.core/pmap",
  :desc
  "parallel map, if process time is low, chunk up processes using detection-all"}
 {:name "clojure.core/promise",
  :desc "declaratively set with deliver, blocks"}
 {:name "clojure.core/future",
  :desc "Thread.new with cached result + optional timeout"}
 {:name "clojure.core/realized?",
  :desc "checks on delays, promises, futures, lazyseqs"}
 {:name "clojure.zip/zipper",
  :desc "[children? children create-branch]"}
 {:name "clojure.core/partition",
  :desc "useful for converting flat list/vec to sublists/subvecs"}
 {:name "clojure.core/with-meta", :desc "replace meta"}
 {:name "clojure.core/vary-meta", :desc "assoc meta"}
 {:name "clojure.core/subseq",
  :desc "like find but only for keys of sorted dt"}
 {:name "clojure.core/comparator",
  :desc "converts pred fns to comparable fn"}
 {:name "clojure.core/juxt",
  :desc "((juxt a b c) x) => [(a x) (b x) (c x)]"}
 {:name "clojure.core/and", :desc "like joining multiple ands"}
 {:name "clojure.core/zipmap", :desc "like zip but produces map"}
 {:name "clojure.core/merge-with",
  :desc "merges maps with same keys given a function to merge values"}
 {:name "clojure.core/update-in",
  :desc "updates value given map, nested keys + fn"}
 {:name "clojure.core/dissoc", :desc "can delete multiple keys"}
 {:name "clojure.core/iterate", :desc "lazy seq of x, f(x), f(f(x))"}
 {:name "clojure.core/list*", :desc "cons for multiple elements"}
 {:name "clojure.core/next",
  :desc
  "produces nil for empty cases, less lazy as it checks head of nonempty tail"}
 {:name "clojure.core/rest",
  :desc "produces () for empty cases, max lazy"}
 {:name "clojure.core/conj",
  :desc
  "list + vector adds elements in different places b/c of efficiency"}
 {:name "clojure.core/->", :desc "arg gets inserted as first arg"}
 {:name "clojure.core/->>", :desc "arg gets inserted as last arg"}
 {:name "clojure.core/interpose", :desc "join(a).split(/\\s+/)"}
 {:name "clojure.core/comp",
  :desc "(comp a b c) = (a (b (c))) = opposite of ->>"}
 {:name "clojure.core/apply", :desc "apply(fn [args]): fn.call(*args)"}
 {:name "clojure.core/partial",
  :desc "partial(fn *args): #(apply fn *args *&)"}
 {:name "clojure.core/fnil",
  :desc
  "sets default for a function expecting non-nil args used in clojure prob 2 as (hash[:key] ||= {}) << 2"}
 {:name "clojure.core/some->", :desc "try of the clojure world"}
 {:name "clojure.core/re-matches",
  :desc "same as re-find except it matches against whole string"}
 {:name "clojure.core/cond->",
  :desc "handy way to conditionally build up a seq or map of options"}
 {:name "clojure.core/map-indexed",
  :desc
  "can be easily recreated by passing range as an additional arg to map"}
 {:name "clojure.core/as->",
  :desc "seems mainly for inlinining readable fns in threaded macros"}
 {:name "clojure.core/into", :desc "convert pairs of vecs into a map"}
 {:name "clojure.pprint/cl-format",
  :desc
  "a hard to read formatter which may be useful in certain scenarios"}]
