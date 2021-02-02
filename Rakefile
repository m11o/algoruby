namespace :execution do
  require 'pathname'

  desc 'run implemented code'
  task :run do
    code_number = STDIN.gets.chomp
    puts "code number => #{code_number}"

    system exec_command(code_number)
  end

  def exec_command(code_number)
    raise if code_number !~ /(\d{1,2})_(\d{1,2})/

    section_name = "section#{Regexp.last_match(1)}"
    ['ruby', source_path(section_name, code_number)].join(' ')
  end

  def source_path(section_name, code_number)
    root_path = Pathname.new __dir__
    root_path.join('src', section_name, "code#{code_number}.rb").to_s
  end
end
