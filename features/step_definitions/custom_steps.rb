Given(/^the user updates the rules for cuke sniffer$/) do
  customization_of_rules
end

When(/^the user runs the cuke sniffer tool(?: against the (.+) directory)?$/) do |directory|
  execute_cuke_sniffer(directory)
end

Then(/^the output cuke sniffer report will be generated$/) do
  generate_cuke_sniffer_output
end

Then(/^HTML Code Sniffer is ran for the (.*) page$/) do |page_name|
  file_name = ENV['app'].downcase + "_" + page_name + "_" + ENV['app_env']
  output_location = @html_cs_location
  HTMLCS.run_html_cs(@browser, output_location + file_name)
end