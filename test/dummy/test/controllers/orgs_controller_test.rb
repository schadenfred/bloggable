# require "test_helper"

# describe OrgsController do
#   let(:org) { orgs :one }

#   it "gets index" do
#     get orgs_url
#     value(response).must_be :success?
#   end

#   it "gets new" do
#     get new_org_url
#     value(response).must_be :success?
#   end

#   it "creates org" do
#     expect {
#       post orgs_url, params: { org: { name: org.name } }
#     }.must_change "Org.count"

#     must_redirect_to org_path(Org.last)
#   end

#   it "shows org" do
#     get org_url(org)
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get edit_org_url(org)
#     value(response).must_be :success?
#   end

#   it "updates org" do
#     patch org_url(org), params: { org: { name: org.name } }
#     must_redirect_to org_path(org)
#   end

#   it "destroys org" do
#     expect {
#       delete org_url(org)
#     }.must_change "Org.count", -1

#     must_redirect_to orgs_path
#   end
# end
