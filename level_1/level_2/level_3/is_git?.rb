def is_git?(path)
  root = File.expand_path("~")
  passed_in = File.expand_path(path)
  return false if root == passed_in
  return true if Dir.exist?("#{path}.git")
  is_git?("../#{path}")
end
