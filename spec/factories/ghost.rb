#Needs to be done for lookups in the code
def stringerize_keys(hash)
  hash.inject({}){|memo,(k,v)| memo[k.to_s] = v; memo}
end

FactoryGirl.define do

  factory :ghost_posts , class:Hash do
    page 1
    pages 1
    limit 15
    total 2
    posts {[FactoryGirl.build(:ghost_post), FactoryGirl.build(:ghost_post)]}
    
    initialize_with { stringerize_keys attributes } 
  end

  factory :ghost_post, class:Hash do
    sequence(:id)
    uuid "058f77ad-03c3-4e3c-91ea-64a5bde50a94"
    author {FactoryGirl.build(:ghost_user)}
    tags {[FactoryGirl.build(:ghost_tag)]}
    title "asd"
    slug "asd"
    image nil
    page 0
    featured 0

    markdown "#hi\nmy name is graham"
    html "<h1 id=\"hi\">hi</h1>\n\n<p>my name is graham</p>"

    status "published"
    language "en_US"

    meta_title nil
    meta_description nil
    
    created_by 1
    updated_by 1
    published_by 1

    created_at "2013-11-21T04:05:54.969Z"
    updated_at "2013-11-21T04:05:54.969Z"
    published_at "2013-11-21T04:05:54.938Z"
    initialize_with do
      attributes[:author_id] = attributes[:author][:id]
      attributes[:user] = attributes[:author]
      stringerize_keys attributes
    end
  end
end

FactoryGirl.define do

  factory :ghost_tag, class:Hash do
    sequence(:id)
    uuid "ae9ae3d3-6683-4d8c-8221-b638237db875"
    name "Getting Started"
    slug "getting-started"
    description nil
    parent_id nil
    meta_title nil
    meta_description nil
    created_at "2013-11-21T04:05:54.969Z"
    created_by 1
    updated_at "2013-11-21T04:05:54.969Z"
    updated_by 1
    initialize_with { stringerize_keys attributes } 
  end
end



FactoryGirl.define do

  factory :ghost_user, class:Hash do
    sequence(:id)
    uuid "c20aef1d-de36-4a0e-bb55-a36112c46310"
    name "asd"
    slug "asd"
    image nil
    cover nil
    bio ""
    website ""
    location ""
    accessibility nil
    status "active"
    language "en_US"
    meta_title nil
    meta_description nil
    created_at "2013-11-21T04:05:54.969Z"
    updated_at "2013-11-21T04:05:54.969Z"
    initialize_with { stringerize_keys attributes } 
  end
end
