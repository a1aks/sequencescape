class Api::BatchesController < Api::BaseController
  self.model_class = Batch

  before_filter :prepare_object, :only => [ :show ]
  before_filter :prepare_list_context, :only => [ :index ]

private

  def prepare_list_context
    @context = ::Batch.including_associations_for_json
  end
end
