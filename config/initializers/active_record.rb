class ActiveRecord::Base
  #self.primary_key = :uuid
  before_create :assign_id

  private

  def assign_id
    if attributes.include?('id')
      self.id = UUID.new.generate(:compact) if id.nil?
    end
  end

end