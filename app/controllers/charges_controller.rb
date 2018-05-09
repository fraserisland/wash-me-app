class ChargesController < ApplicationController

    def new
      @sender = User.find(params[:money_sender])
    end

    def create
      @sender = User.find(params[:money_sender])

      @amount = params[:amount]

      @amount = @amount.gsub('$', '').gsub(',', '')

      begin
        @amount = Float(@amount).round(2)
      rescue
        flash[:error] = 'Charge not completed. Please enter a valid amount.'
        redirect_to new_charge_path
        return
      end

      @amount = (@amount * 100).to_i # Must be an integer!

      if @amount < 500
        flash[:error] = 'Charge not completed. Donation amount must be at least $5.'
        redirect_to new_charge_path
        return
      end

      Stripe::Charge.create(
        :amount => @amount,
        :currency => 'usd',
        :source => params[:stripeToken],
        :description => 'Custom donation'
      )
    begin
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
    end

      UserMailer.send_payment_email(@sender).deliver

    end
  end
