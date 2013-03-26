require 'mongoid'

module Facteur
  module MongoidMessageModel
    extend ActiveSupport::Concern

    included do
      field :body
      field :subject
      
      embedded_in :mailbox, :class_name => "Facteur::Mailbox"
      belongs_to :author, :class_name => Facteur.addressee_model
      has_and_belongs_to_many :addressees, :class_name => Facteur.addressee_model, inverse_of: nil, validate: false
      
      validates_presence_of :body, :author_id
    end
  end
end

