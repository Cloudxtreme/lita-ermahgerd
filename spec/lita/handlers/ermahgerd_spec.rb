require "spec_helper"

describe Lita::Handlers::Ermahgerd, lita_handler: true do

  let(:text) { rand(36**10).to_s(36) }

  it { doesnt_route("ermahgerd #{text}").to(:ermahgerd) }
  it { routes_command("ermahgerd #{text}").to(:ermahgerd) }

  it "ermahgerds" do

    send_command("ermahgerd #{text}")
    expect(replies.last).to eq(::Ermahgerd.translate(text))
  end
end