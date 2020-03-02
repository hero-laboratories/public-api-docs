require 'yaml'
require 'json'
class DynamicContent
  def initialize(static_content)
    load_configs
    @content = static_content
  end

  def handle
    handle_variables
    handle_responses
    handle_payloads

    @content
  end

  private

  def handle_variables
    @vars.keys.each do |key|
      @content = @content.gsub "[#{key}]", @vars[key]
    end
  end

  def handle_payloads
    @payloads.keys.each do |key|
      @content = @content.gsub "|payload_#{key}|", @payloads[key].to_json
    end
  end

  def handle_responses
    @responses.keys.each do |key|
      value = case @responses[key].class.to_s
              when 'String'
                @responses[key].to_s
              when 'Hash'
               @responses[key].to_json
              end

      @content = @content.gsub "|response_#{key}|", value
    end
  end

  def load_configs
    config = YAML.load_file('./config/contents.yml')
    @vars = config["vars"]
    @responses = config["responses"]
    @payloads = config['payloads']
  end
end
