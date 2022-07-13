require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

# Original Code B4 looking @ code along
def remove_strawberry(contacts)
  # your code here!
  # Iterate top level
  contacts.each do |person, data|
    if person == "Freddy Mercury"
      data.each do |key, value|
        if key == :favorite_ice_cream_flavors
          value.delete("strawberry")
        end
      end
    end
  end
end

# Code from Lesson
# def remove_strawberry(contacts)
#   contacts.each do |person, contact_details_hash|
#     if person == "Freddy Mercury"
#       contact_details_hash.each do |attribute, data|
#         if attribute == :favorite_ice_cream_flavors
#           data.delete_if {|ice_cream| ice_cream == "strawberry"}
#         end
#         # binding.pry
#       end
#     end
#   end
# end

# print the output to the terminal for inspection
pp remove_strawberry(contacts)
