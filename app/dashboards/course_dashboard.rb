require "administrate/base_dashboard"

class CourseDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    alias: Field::String,
    name: Field::String,
    semester: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    posts: Field::HasMany,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :alias,
    :name,
    :semester,
    :posts,
    #:created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :alias,
    :name,
    :posts,
    #:created_at,
    #:updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :alias,
    :semester,
  ].freeze

  # Overwrite this method to customize how courses are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(course)
    "#{course.alias} - #{course.name}"
  end
end
