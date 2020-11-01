# frozen_string_literal: true

%w[parent teacher student].each do |role|
  Role.find_or_create_by({ name: role })
end
