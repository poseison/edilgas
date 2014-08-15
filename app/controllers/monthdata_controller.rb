class MonthdataController < ApplicationController
  respond_to :json
  def pay
    @mylocations=Gaslocation.all
    @nmeters=Array.new
    @mydata=params[:ltable]
    @mylocations.each do |x|
      @nmeters<<{streetname:x. address, id:x.id,value1:Gaslocation.monthconsumption(x.id,@mydata), value2:0}
    end
    puts @nmeters
    render :json => @nmeters
  end
end
